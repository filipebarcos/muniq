muniq
=====

Move unique files from source to target

```
sudo chmod +x muniq.rb
./muniq.rb source target
```

Like in the the following example
```
./muniq.rb ~/Pictures/bday /Volumes/MyExternalDrive/2013-bday
```

Some profiling (close to 10GB of pictures)
```
$ time ./muniq.rb <source> <target>
Finding duplicated files...
Found 3002 unique files
And 298 repeated files
Moving unique files to <target>
./muniq.rb <source> <target>  6.68s user 12.60s system 89% cpu 21.642 total
```

DISCLAIMER
===========

DO NOT CODE LIKE THIS FOR REAL. THIS CODE DOES NOT CONTAIN ANY TESTS. IT HAS 'WORKS ON MY MACHINE' STAMP, WHICH DOES NOT GUARANTEE IT IS RELIABLE
