sudo su
export LFS=/mnt/lfs
echo $LFS

mkdir -pv $LFS
mount -v -t ext4 /dev/sdb2 $LFS
mkdir -pv $LFS/boot
mount -v -t ext4 /dev/sdb1 $LFS/boot
mkdir -pv $LFS/home
mount -v -t ext4 /dev/sdb3 $LFS/home
lsblk

sudo su lfs
export LFS=/mnt/lfs
echo $LFS