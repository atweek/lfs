#!/bin/bash

sudo apt-get update -y
sudo apt-get -y install binutils bison coreutils diffutils  findutils gawk gcc grep gzip m4 patch perl python3 sed tar texinfo g++ make vim fdisk openssh-server
sudo ln -sf bash /bin/sh

export LFS=/mnt/lfs
