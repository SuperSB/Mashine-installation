### Istall google chrome

##### Option 1: Terminal installation

```shell
$ sudo wget http://www.linuxidc.com/files/repo/google-chrome.list -P /etc/apt/sources.list.d/

$ wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -

$ sudo apt-get update

$ sudo apt-get install google-chrome-stable

# open chrome
$ /usr/bin/google-chrome-stable
```



##### Option 2:  run script

```shell
$ sh ./Script/chrome.sh
```
