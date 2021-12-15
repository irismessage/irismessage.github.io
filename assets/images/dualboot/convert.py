import os
from pathlib import Path

src = '.bmp'
dest = '.png'
pwd = Path(__file__).resolve().parent
bmp = pwd / 'bmp/'

for path in bmp.iterdir():
    new_path = pwd.joinpath(path.name).with_suffix(dest)
    command = f'magick convert "{path}" "{new_path}"'
    print(command)
    os.system(command)
