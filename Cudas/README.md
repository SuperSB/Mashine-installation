#### Install cuda10.0+cudnn7.4.2 for ubuntu 16.04

##### If there is already a cuda in your machine, please unintall it 

```shell
$ sudo apt-get remove --purge nvidia-*
$ sudo rm -rf /usr/local/cuda-8.0/
```



#### Option 1：Auto installation with a shell script

##### Step 1: download the script as you can see in the folder named Scripts

##### Step 2: Open a terminal and run the script

```shell
$ sudo ./cuda100_ubuntu16_04_1060ti.sh
```

```shell
$ sudo reboot
```

##### Step 3: Check out

```shell
$ nvidia-smi
```

```shell
$ nvcc -V
```



#### Option 2：Intall by hand

##### Step 1: Download Cuda for your machine [[link]](https://developer.nvidia.com/cuda-toolkit-archive)

> I choose: CUDA Toolkit 10.0 -> Linux -> x86_64 -> Ubuntu -> 16.04 -> runfile(local) -> Base Installer
>

##### Step 2: close display driver

```shell
# check the nouveau
$ lsmod | grep nouveau

# add nouveau to blacklist
$ sudo echo "blacklist nouveau
options nouveau modeset=0
" >> /etc/modprobe.d/blacklist.conf

# activate it and update
$ sudo update-initramfs -u

# reboot it
$ sudo reboot

# check nouveau again and find nothing if success
$ lsmod | grep nouveau

# push ctrl + F1 + Alt

# stop the lightdm 
$ sudo service lightdm stop
```

```shell
# come to the folder containing CUDA Toolkit 10.0
$ cd ~/Downloads

# run it
$ chmod +x cuda_10.0.130_410.48_linux.run
$ sudo ./cuda_10.0.130_410.48_linux.run

# push shift + q and code "accept" to skip the note
# choose "yes" except when asking installing Opengl
```



##### Step 3: install Cudnn7.4.2

[Download Cudnn7.4.2](https://developer.nvidia.com/rdp/cudnn-archive)

Install Cudnn

```shell
sudo apt install nvidia-cuda-toolkit
sudo cp cuda/include/cudnn.h /usr/local/cuda/include/
sudo cp cuda/lib64/libcudnn* /usr/local/cuda/lib64/
sudo chmod a+r /usr/local/cuda/include/cudnn.h
sudo chmod a+r /usr/local/cuda/lib64/libcudnn*
```

