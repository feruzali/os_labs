#!/bin/bash

# Topic: Basic file and directories management, Linux file system hierarchy

# creating a new directory inside the "Videos" directory
mkdir Videos/Watched

# listing contents of the "Videos" directory and all the subdirectories recursively
ls -R Videos

# creating two directories at the same time
mkdir ProjectX ProjectY

# listing contents of the current directory
ls

# creating directories with parent and several child directories
mkdir -p Thesis/Chapter1 Thesis/Chapter2 Thesis/Chapter3

# copying a file, the first argument is copied to the second argument
cp blockbuster1.ogg blockbuster3.ogg

# listing the contents of a directory in a detailed version
ls -l

# if a copy command is given two arguments as a directory the last is taken
cp thesis_chapter1.odf thesis_chapter2.odf ProjectX

# -r option after a cp command recursively copies a directory and its contents to another directory
cp -r Thesis ProjectX

# mv command can be used to move or rename a file
mv thesis_chapter2.odf thesis_chapter2_reviewed.odf
mv thesis_chapter1.odf Thesis/Chapter1

# getting an absolute path to the current working directory
pwd

# removing a file
rm thesis_chapter2_reviewed.odf

# rm command cannot be used to delete a directory with contents within
# -r option could be used to recursively delete all the directories and contents within a directory
rm -r Thesis/Chapter1