import json
import logging
import serial_asyncio
from serial.tools import list_ports
from ..utility import is_raspberrypi


class Arduino(object):
    """ Utility functions to perform Arduino communication asynchronously """
    def __init__(self, serial_port=None, baud_rate=115200):
        self.logger = logging.getLogger("Arduino")
        self.baud_rate = baud_rate

        if serial_port is None:
            self.logger.debug("Attempt to auto-detect Arduino serial port")
            coms = list_ports.comports()
            self.logger.debug(f"Available serial ports: {str([com.device for com in coms])}")
            arduino = [com for com in coms if com.manufacturer is not None and "Arduino" in com.manufacturer]
            if arduino:
                # We found an Arduino connected via USB
                serial_port = arduino[0].device
            elif is_raspberrypi():
                # We didn't find an Arduino on USB, but list_ports.comports 
                # does not list the hardware comport on most Raspberry pis, so find it manually.
                serial_port = "/dev/serial0"
            else:
                # We're not on a Raspberry Pi, and we didn't find any Raspberry PI, 
                # let's just try the first one available.
                serial_port = coms[0].device

        self.serial_port = serial_port
        self._reader = None
        self._writer = None

    async def open(self):
        self._reader, self._writer \
            = await serial_asyncio.open_serial_connection(url=self.serial_port, baudrate=self.baud_rate)

    async def close(self):
        self._writer.close()

    async def __aenter__(self):
        await self.open()
        return self

    async def __aexit__(self, exc_type, exc, tb):
        await self.close()

    async def get_sensors(self):
        received = (await self._reader.readuntil(b"}"))
        self.logger.debug(f"Received data from Arduino: {received.decode('ascii', errors='ignore')}")
        try:
            return json.loads(received)
        except Exception as e:
            logging.error(e)
            return {}

    def set_actuators(self, values):
        message =   f"{int(values['starboard'])}," + \
                    f"{int(values['port'])}," + \
                    f"{int(values['vertical'])}," + \
                    f"{int(values['lights'])}," + \
                    f"{int(values['interval'])}," + \
                    f"{1 if values['armed'] else 0}\n"
        self.logger.debug(f"Sent data to Arduino: {message}")
        self._writer.write(message.encode("ascii"))
