### Install VScode

##### Option 1: Terminal installation

```shell
$ sudo mkdir /tmp/vscode; cd /tmp/vscode/
$ sudo wget https://az764295.vo.msecnd.net/public/0.3.0/VSCode-linux-x64.zip
$ sudo unzip /tmp/vscode/VSCode-linux-x64.zip -d /opt/

$ sudo chmod +x /opt/VSCode-linux-x64/Code
$ sudo ln -s /opt/VSCode-linux-x64/Code /usr/local/bin/code
$ cp /opt/VSCode-linux-x64/resources/app/vso.png /usr/share/icons/

# open vscode
$ sudo /opt/VSCode-linux-x64/Code
```



##### Option 2: Run script

```shell
$ sh ./Script/vscode.sh
```

