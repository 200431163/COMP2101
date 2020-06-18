#!/bin/bash
#
# this script puts some picture files into a Pictures directory in our home directory
# it does some error testing
# it summarizes the Pictures directory when it is done
#

# Task 1: Improve this script to also retrieve and install the files kept in the https://zonzorp.net/pics.tgz tarfile
#   - use the same kind of testing that is already in the script to only download the tarfile if you don't already have it and  to make sure the download and extraction commands work, then delete the local copy of the tarfile if the extraction was successful

# Creating a directory named as pictures with the help of test command
test -d ~/Pictures || mkdir ~/Pictures

# download a zipfile of pictures to our Pictures directory if it isn't already there - assumes you are online
test -f ~/Pictures/pics.zip || wget -q -O ~/Pictures/pics.zip http://zonzorp.net/pics.zip
#A tarfile would be downloaded with following command if it's not there
test -f ~/Pictures/pics.tgz || wget -q -O ~/Pictures/pics.tgz https://zonzorp.net/pics.tgz

# unpack the downloaded zipfile if it is there, then delete the local copy of the zipfile
test -f ~/Pictures/pics.zip && unzip -d ~/Pictures -o -q ~/Pictures/pics.zip && rm ~/Pictures/pics.zip
# Accessing the downloaded tarfile by extracting it through a sub perameters and erasing old existing copy that is available as tar
test -f ~/Pictures/pics.tgz && tar -xzf ~/Pictures/pics.tgz -C ~/Pictures && rm ~/Pictures/pics.tgz

# Make a report on what we have in the Pictures directory
test -d ~/Pictures && cat <<EOF
Found $(find ~/Pictures -type f|wc -l) files in the Pictures directory.
The Pictures directory uses $(du -sh ~/Pictures|awk '{print $1}') space on the disk.
EOF
