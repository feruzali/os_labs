#!/bin/bash

# Topic: Logs, Archiving and copying files

# creating tar archive file "archive.tar" from "file1", "file2" and "file3"
# "c" option stands for "create"
# "f" stands for "filename"
tar cf archive.tar file1 file2 file3

# specifying a directory name
tar cf /root/etc.tar /etc

# "t" option is used for listing the contents of an archive
tar tf /root/etc.tar

# new directory is created and archive file is extracted in it
mkdir /root/etcbackup
cd /root/etcbackup
tar xf /root/etc.tar

# "p" option saves the permissions of the extracted files
mkdir /root/scripts
cd /root/scripts
tar xpf /root/myscripts.tar

# there are three different compression options: "gzip", "bzip2", "xz"
# gzip -> z, bzip2 -> j, zx -> J
tar czf /root/etcbackup.tar.gz /etc
tar cjf /root/logbackup.tar.bz2 /var/log
tar cJf /root/sshconfig.tar.xz /etc/ssh

# creating a new directory for extracted files
mkdir /tmp/etcbackup

# moving to the target file
cd /tmp/etcbackup

# extracting the tar archive
tar xzf /root/etcbackup.tar.gz

# creating a new directory for extracted files
mkdir /tmp/logbackup

# moving to the target directory
cd /tmp/logbackup

# extracting the tar archive
tar xjf /root/logbackup.tar.bz2

# creating a new directory for extracted files
mkdir /tmp/sshbackup

# moving to the target directory
cd /tmp/sshbackup

# extracting the tar archive
tar xJf /root/sshbackup.tar.xz