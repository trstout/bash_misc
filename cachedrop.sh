#!/bin/bash


#1. Clear PageCache only
# sync;echo 1> /proc/sys/vm/drop_caches

#2. Clear dentries and inodes
# sync;echo 2> /proc/sys/vm/drop_caches

#3. Clear pagecache, dentries, and inodes.
# sync;echo 3> /proc/sys/vm/drop_caches

# Run as root.

free -h
echo -e '
 1 - Clear PageCache

 2 - Clear dentries and inodes

 3 - Clear ALL THE THINGS!!!
'
read $answer

case $answer in
    [1]) sync; echo 1>/proc/sys/vm/drop_caches;;
    [2]) sync; echo 2>/proc/sys/vm/drop_caches;;
    [3]) sync; echo 3>/proc/sys/vm/drop_caches;;
esac
#do
#sync;echo $i> /proc/sys/vm/drop_caches
#done

free -h

exit 0
