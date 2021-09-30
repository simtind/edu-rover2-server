
import shutil
from pathlib import Path
import os
    
def setup_startup():
    system_directory = Path(__file__).parent
    systemd_user_dir = os.path.expanduser("~/.config/systemd/user/")

    os.makedirs(systemd_user_dir, exist_ok=True)

    shutil.copy(system_directory / "pyedurov2.service", systemd_user_dir)

    os.system("systemctl --user daemon-reload")
    os.system("systemctl --user enable pyedurov2.service")

    print("pyedurov2 service added to startup.")