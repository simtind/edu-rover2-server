import argparse
import logging
import shutil
from pathlib import Path
import os

from .cameraserver import CameraServer
from .ioserver import IOServer
from .advertising import AdvertisingServer
    
def setup_startup():
    system_directory = Path(__file__).parent / "system"
    systemd_user_dir = os.path.expanduser("~/.config/systemd/user/")

    os.makedirs(systemd_user_dir)

    shutil.copy(system_directory / "pyedurov2.service", systemd_user_dir)

    os.system("systemctl --user daemon-reload")
    os.system("systemctl --user enable pyedurov2.service")

    print("pyedurov2 service added to startup.")



def run():
    parser = argparse.ArgumentParser(
        description='Start the Engage eduROV web server')
    parser.add_argument(
        '-r',
        metavar='RESOLUTION',
        type=str,
        default='1280x720',
        help='''resolution, use format WIDTHxHEIGHT (default 1280x720)''')
    parser.add_argument(
        '-fps',
        metavar='FRAMERATE',
        type=int,
        default=30,
        help='framerate for the camera (default 30)')
    parser.add_argument(
        '-port',
        metavar='SERVER_PORT',
        type=int,
        default=8080,
        help="which port the server should serve it's main page (default 80)")
    parser.add_argument(
        '-serial',
        metavar='SERIAL_PORT',
        type=str,
        default=None,
        help="which serial port the script should try to use to communicate with the Arduino module")
    parser.add_argument(
        '--loglevel',
        type=str,
        default='INFO',
        help='Set log level')
    parser.add_argument(
        '--runatstartup',
        action='store_true',
        help='Setup server to run at startup and exit program.')

    args = parser.parse_args()

    if args.runatstartup:
        print("Setting up pyedurov2 to execute at startup.")
        setup_startup()
        return

    logging.basicConfig(level=args.loglevel)

    ioserver = IOServer(args.serial, loglevel=args.loglevel)
    camera = CameraServer(args.r, args.fps, args.loglevel)
    advertisingserver = AdvertisingServer(loglevel=args.loglevel)

    logging.info("Waiting for websocket servers to go online before starting web server")
    ioserver.ready.wait()
    camera.ready.wait()
    advertisingserver.ready.wait()

    ioserver.join()
    logging.info("I/O server stopped. Killing other services and exiting program.")
    camera.stop()
    advertisingserver.stop()
    
if __name__ == '__main__':
    run()