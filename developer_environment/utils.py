import tarfile
import os
import subprocess as sp
import re
import requests
from typing import Optional

class History():
    def __init__(self):
        self.download_history = []

    def add(self, FILE: str):
        self.download_history.append(FILE)
        
    def clean(self):
        for FILE in self.download_history:
            os.remove(FILE)

class Utilities():
    def __init__(self, history: Optional[History] = None):
        if history != None:
            self.download_history = history

    def __download_history_add(self, FILE: str):
        if self.download_history:
            self.download_history.add(FILE)

    def download_file(self, url: str, FILE: str = ""):
        """
        Download a file from the web

        Args:
            url (str): url location of file to download
            FILE (str): name to save file as
        """
        if FILE == "":
            FILE = url.split("/")[-1]
        r = requests.get(url, allow_redirects=True)
        open(FILE, 'wb').write(r.content)
        self.__download_history_add(FILE)

    def download_and_execute(self, url, cmd):
        self.download_file(url)
        filename = url.split("/")[-1]
        sp.call(f"{cmd} {filename}".split())

    def git_clone(self, url: str, params: str):
        """
        Git clone a directory

        Args:
            url (str): url location of file to download
            params (str): parameters to pass to clone command
        """
        sp.call(f"git clone {params} {url}".split())
        self.__download_history_add(url.split("/")[-1])

    def untar(self, FILE: str, extract_format: str="", location: str="./"):
        """
        Untar a file

        Args:
            FILE (str): File to untar
            extract_format (str, optional): The extraction format. Examples are xz,zip,etc. Defaults to "".
            location (str, optional): Where to save file. Defaults to "./".
        """
        extract_format = f'r:{extract_format}' if extract_format == "" else "r" 
        with tarfile.open(FILE, extract_format) as t:
            t.extractall(location)

    def export_variable(self, FILE: str, path: str):
        """
        Export environment variables to .bashrc and current python execution

        Args:
            FILE (str): File to export to
            path (str): the value to be added to PATH environment
        """
        with open(FILE, "r+") as f:
            content = f.readlines()
            for line in content:
                if re.search(f"{path}", line):
                    print("Variable already exists")
                    return
            f.write("\n# Set the path for nodejs binaries\n")
            f.write(f"export PATH={path}:$PATH\n")
            os.environ['PATH'] = f"{path}:{os.environ['PATH']}"

    def symlink(self, target: str, link_name: str):
        try:
            os.symlink(target, link_name)
        except FileExistsError:
            os.remove(link_name)
            os.symlink(target, link_name)


