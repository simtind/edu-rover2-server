import logging
import multiprocessing
import asyncio
import time
import socket

from .. import __version__


class AdvertisingServer(multiprocessing.Process):
    """ Creates a new process that Advertises the Edurov server as a UDP multicast beacon """
    def __init__(self, loglevel="INFO", port=8083):
        self.port = port
        self.loglevel = loglevel
        self.start_time = time.time()
        self.server = None
        self.ready = multiprocessing.Event()
        self.stop_event = multiprocessing.Event()

        super().__init__(target=self._runner, daemon=True)
        self.start()

    async def stop(self):
        self.stop_event.set()
        self.join()
        logging.debug("I/O process terminated")

    async def _wait_for_stop_event(self):
        while not self.stop_event.is_set():
            await asyncio.sleep(2)
        self.server.ws_server.close()

    def _runner(self):
        asyncio.run(self._task())

    async def _task(self):
        logging.basicConfig(level=self.loglevel)
        self.logger = logging.getLogger("AdvertisingServer")
                    
        MCAST_GRP = '224.0.0.50'
        MULTICAST_TTL = 1

        self.logger.info(f"Advertising server started at {MCAST_GRP}:{self.port}")
        self.ready.set()

        while not self.stop_event.is_set():
            with socket.socket(socket.AF_INET, socket.SOCK_DGRAM, socket.IPPROTO_UDP) as sock:
                sock.setsockopt(socket.IPPROTO_IP, socket.IP_MULTICAST_TTL, MULTICAST_TTL)
                
                sock.sendto(f"edurov server v{__version__}", (MCAST_GRP, self.port))

            await asyncio.sleep(2)

        self.logger.info('Shutting down server')
        finish = time.time()
        seconds = finish - self.start_time
        self.logger.debug(f'Server was live for {seconds:.1f} seconds')
