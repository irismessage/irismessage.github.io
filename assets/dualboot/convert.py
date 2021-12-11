import os
from pathlib import Path

src = '.bmp'
dest = '.png'

pwd = Path().resolve()
for path in pwd.iterdir():
    if path.suffix == src:
        command = f'magick convert {path} {path.with_suffix(dest)}'
        print(command)
        os.system(command)
