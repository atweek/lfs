#!/bin/bash

export LFS=/mnt/lfs
echo $LFS

parted --script /dev/sdb \
    mklabel gpt \
    mkpart primary ext4 0 500MB \
    mkpart primary ext4 500MB 30G \
    mkpart primary ext4 30G -0M \
    name 1 boot \                                                
    name 2 root \                                                      
    name 3 home \                                                      
    set 1 boot on \
    print \
    quit \

mkfs.ext4 /dev/sdb1
mkfs.ext4 /dev/sdb2
mkfs.ext4 /dev/sdb3


mkdir -pv $LFS
mount -v -t ext4 /dev/sdb2 $LFS
mkdir -pv $LFS/boot
mount -v -t ext4 /dev/sdb1 $LFS/boot
mkdir -pv $LFS/home
mount -v -t ext4 /dev/sdb3 $LFS/home
lsblk

mkdir -v $LFS/sources
chmod -v a+wt $LFS/sources
wget https://www.linuxfromscratch.org/lfs/view/stable/wget-list > wget.out
wget --input-file=wget-list --continue --directory-prefix=$LFS/sources >> wget.out