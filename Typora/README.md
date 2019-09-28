## Install Typora for editting .md file

Refer from:  https://typora.io/#linux

#### Option 1: Terminal coding

```shell
$ wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -

# add Typora's repository
$ sudo add-apt-repository 'deb https://typora.io/linux ./'
$ sudo apt-get update

# install typora
$ sudo apt-get install typora
```

#### Option 2: Run script

```shell
$ sh ./Script/typora.sh
```

