from setuptools import setup, find_packages
import pyedurov2

setup(

    name='pyedurov2',

    version=pyedurov2.__version__,

    description='Server package for Edu-ROV hardware v0.7',
    long_description='',

    url = 'https://github.com/simtind/edu-rover2-server',
    project_urls={
        'Source': 'https://github.com/simtind/edu-rover2-server',
        'Tracker': 'https://github.com/simtind/edu-rover2-server/issues',
    },

    author='Simen August Tinderholt',
    author_email='simtind@gmail.com',

    python_requires='>=3.7',

    classifiers=[

        'Development Status :: 5 - Production/Stable',

        'License :: OSI Approved :: GNU General Public License v3 (GPLv3)',

        'Programming Language :: Python :: 3.7',
    ],

    keywords='ROV education',

    install_requires=['picamera', 'sense-hat', 'pyserial-asyncio', 'asyncio', 'psutil', 'websockets', 'aiortc', 'aiohttp'],

    packages=find_packages(),
    package_data={
        'pyedurov2.system': ['*.service']
    },
    entry_points={
        'console_scripts': [
            'pyedurov2 = pyedurov2.server:run',
        ],
    },
)
