#!/bin/sh

for i in `seq 1 10`
do
    name = "{i}b.txt"
    name2 = "{1}bs.txt"
    time ./INSTALL_SKIP/bin/yara data/sample4.rules data/$name > $name2
done
