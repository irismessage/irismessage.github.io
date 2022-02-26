import pyperclip

axes = []

try:
    while True:
        axis = [
            input('Axis name: '),
            input('Axis label L: '),
            input('Axis label R: '),
        ]
        timestamp = pyperclip.paste().removeprefix('https://youtu.be/UuopBeaUN24?t=')
        axis.append(timestamp)
        axes.append(axis)
except KeyboardInterrupt:
    pass
finally:
    print()
    for axis in axes:
        print(str(axis) + ',')
