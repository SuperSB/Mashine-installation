##### 新机安装企业微信

Step1:  下载deepin-wine-for-ubuntu

```shell
$ git clone https://gitee.com/wszqkzqk/deepin-wine-for-ubuntu.git
```

Step2: 安装

```shell
$ cd deepin-wine-for-ubuntu
$ ./install.sh
# tab 选择 ok

cd ~
mkdir softwares
cd softwares
wget http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin.com.weixin.work/deepin.com.weixin.work_2.4.16.1347deepin0_i386.deb
sudo dpkg -i deepin.com.weixin.work_2.4.16.1347deepin0_i386.deb
