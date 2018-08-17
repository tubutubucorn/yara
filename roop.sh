#!/bin/sh

for i in 1 10 100 1000 10000 100000
do
    name = "{i}b.txt"
    name2 = "{i}b_s.txt"
    name3 = "{i}b_n.txt"
    time ./INSTALL_SKIP/bin/yara data/sample5.rules data/$name > $name2
    time ./INSTALL_NOSKIP/binyara data/sample5.rules data/$name > $name3
done
