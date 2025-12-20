import os

for filename in os.listdir('.'):
    if os.path.isfile(filename):
        if filename.upper() == filename:
            os.rename(filename, filename.lower())
