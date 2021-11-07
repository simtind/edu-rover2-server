
import shutil
from pathlib import Path
import os
    
def setup_startup(name="edurov"):
    system_directory = Path(__file__).parent
    systemd_user_dir = Path("/lib/systemd/system/")

    os.makedirs(systemd_user_dir, exist_ok=True)
    user = os.getlogin()

    with open(system_directory / "pyedurov2.service") as source:
        with open(systemd_user_dir / "pyedurov2.service", "w") as target:
            target.write(source.read().format(user_name = user, advertising_name=name))

    os.system("systemctl daemon-reload")
    os.system("systemctl enable pyedurov2.service")

    print("pyedurov2 service added to startup.")
