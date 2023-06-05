#!/bin/bash

# Topic: Simple Linux Commands, Redirecting Output of a file or Program, Users and Group, Processes

# getting Parse Current Date
Year='date +%Y'
Month="date +%m"
Day="date +%d"
Hour="date +%H"
Minute="date +%M"
Second="date +%S"
echo "date"
echo "Current Date is: $Day-$Month-$Year"
echo "Current Time is: $Hour:$Minute:$Second"

# saving the date
date > /tmp/saved-timestamp

# copying the last 100 lines from a log file to another file
tail -n 100 /var/log/dmesg > /tmp/last-100-boot-message

# concatenation of four files
cat file1 file2 file3 file4 > /tmp/all-four-in-one

# listing the home directory's hidden and regular file names and redirecting the output into a file
ls -a > /tmp/my-file-names

# appending a text and command ouput to an existing file
echo "new line of information" >> /tmp/many-lines-of-information
diff previous-file current-file >> /tmp/tracking-changes-made

# redirecting errors to a file while viewing normal command output on the terminal
find /etc -name passwd 2> /tmp/errors

# saving process output and error messages to separate files
find /etc -name passwd > /tmp/output 2> /tmp/errors

# ignoring error messages
find /etc -name passwd > /tmp/output 2> /dev/null

# storing output and generated errors together
find /etc -name passwd &> /tmp/save-both

# appending output and generated errors to an existing file
find /etc -name passwd >> /tmp/save-both 2>&1

# pipe(|) character can take an output of a previous commands as an input
ls -l /usr/bin | less
ls | wc -l

# outputing 10 lines of ls -t command and redirecting the result to a file
ls -t | head -n 10 > /tmp/ten-last-changed-files

# the "less" command will not output anything as the output is redirected to a file
ls > /tmp/saved-output | less

# the "tee" command will copy the output of a command to a file whose directory is given as an argument 
# and pass the output of the preview process to the next process
ls -l | tee /tmp/saved-output | less
ls -t | head -n 10 | tee /tmp/ten-last-changed-files

# getting the current user information
id

# getting process information, "a" option is used to view all the process, "u" option adds associated user
ps au

# changing file/directory permissions

# removing read and write permissions from group and other on "file1"
chmod go-rw file1

# adding execute permission for everyone on "file2"
chmod a+x file2

# setting read, write, execute permissions for user, 
# read and execute for group
# and no permission for other on "sampledir"
chmod 750 sampledir

# chmod also supports "-R" option to recursively set permissions
chmod -R g+rwX demodir

# chown can be used to change ownership of a file
chown student foofile

# chown can be used with "-R" option to change directory tree owner
chown -R student foodir

# chown, when used with colon(:) changes file's group
chown :admins foodir

# both group and owner can also be changed
chown visitor:guests foodir