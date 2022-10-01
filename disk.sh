#!/bin/bash

export LFS=/mnt/lfs
echo $LFS

mkdir -pv $LFS
mount -v -t ext4 /dev/sdb2 $LFS
mkdir -pv $LFS/boot
mount -v -t ext4 /dev/sdb1 $LFS/boot
mkdir -pv $LFS/home
mount -v -t ext4 /dev/sdb3 $LFS/home

mkdir -v $LFS/sources
chmod -v a+wt $LFS/sources
wget https://www.linuxfromscratch.org/lfs/view/stable/wget-list
wget --input-file=wget-list --continue --directory-prefix=$LFS/sources