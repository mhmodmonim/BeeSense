#helper functions

def get_version():
    with open('VERSION') as version_file:
        return version_file.read().strip()