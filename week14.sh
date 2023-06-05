#!/bin/bash

# Topic: Linux File Systems, Mounting and Unmounting File Systems

# long listing of the "/dev/vda" device file on a server
ls -l /dev/vda

# listing all the device files and mount points on a server
df

# two options "-h" and "-H" make the "df" command output human-readable
# by adding file sizes in KiB, MiB, GiB and SI units respectively
df -h
df -H

# displaying the disk usage report for "/root" directory
du /root

# displaying the disk usage report in human-readable format for "/var/log" directory
du -h /var/log

# displaying existing partitions on the file system
blkid

# mounting of file system can be done by device file or unique id
mount /dev/vdb1 /mnt/mydata
mount UUID="[UUID]" /mnt/mydata

# unmounting requires the mount point as an argument
unmount /mnt/mydata

# unmounting requires the file system to be free of any usage or returns an error
# this command shows all open files and the processes accessing the file system to be unmounted
lsof /mnt/mydata