import argparse
import logging
from ..system import setup_startup

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
        help='Setup server to run at startup and exit program. Must be run as sudo')
    parser.add_argument(
        '--name',
        type=str,
        default='edurov',
        help='Set server advertising name. Defaults to o"edurov"')

    args = parser.parse_args()

    if args.runatstartup:
        print("Setting up pyedurov2 to execute at startup.")
        setup_startup(args.name)
        return

    from .cameraserver import CameraServer
    from .ioserver import IOServer
    from .advertising import AdvertisingServer, wait_until_available

    logging.basicConfig(level=args.loglevel)

    wait_until_available()

    logging.info("Network service is available, starting servers.")

    ioserver = IOServer(args.serial, loglevel=args.loglevel)
    camera = CameraServer(args.r, args.fps, args.loglevel)
    advertisingserver = AdvertisingServer(loglevel=args.loglevel, name=args.name)

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
