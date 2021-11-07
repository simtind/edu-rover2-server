# EduROV server package

This package contains a server for use with the [circuit boards](https://github.com/simtind/edu-rover2-pcb) and [PC client](https://github.com/simtind/edu-rover2-client) from the pyedurov2 project, and the ROV chassis described on the EduROV webpage.

## Use
- To install, run ```pip install pyedurov2```.
- To run the server, run ```pyedurov2```.
- To start the server at boot, run ```pyedurov2 --runatstartup```.
- See ```pyedurov2 --help``` foor more options.

## Building package

Make sure the newest version of pip is installed: ```pip install --upgrade build```
Then from the edurov_server folder, run ```python -m build```

## Setting up Raspberry pi for EduROV

- Install Raspberry PI OS (32-bit), for example via [Raspberry Pi Imager](https://www.raspberrypi.com/software/)
- In SD card, add the file "ssh", it should be empty.
- Insert sd card to raspberry pi
- Connect via ssh to raspberrypi.local
- Via raspi-config:
  - Under Interface Options
    - Enable camera
    - Enable Serial Port:
      - We do not want a login shell to be available.
      - We do want the serial port hardware to obe enabled.
  - Allow the raspberry pi to restart and reconnect the ssh session.
- Install pyedurov2 with ```pip install pyedurov2```
- If you got the warning ```The script normalizer is installed in '/home/pi/.local/bin' which is not on PATH.```, call ```source ~/.profile```.
- Call ```pyedurov2 --runatstartup --name=yourname``` to set server to start at booot with "yourname" as the advertising name.
