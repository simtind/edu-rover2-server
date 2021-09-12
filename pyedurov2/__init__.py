import argparse
import logging

from .server.cameraserver import CameraServer
from .server.ioserver import IOServer
from .server.webserver import WebServer


def edurov_web():
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

    args = parser.parse_args()

    logging.basicConfig(level=args.loglevel)

    ioserver = IOServer(args.serial, loglevel=args.loglevel)
    camera = CameraServer(args.r, args.fps, args.loglevel)

    logging.info("Waiting for websocket servers to go online before starting web server")
    ioserver.ready.wait()
    camera.ready.wait()

    WebServer(port=args.port, websocket_servers=[ioserver, camera]).run()
