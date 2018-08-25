#!/bin/sh

for i in 1 10 100 1000 10000 100000 1000000 10000000
do
    name=$i"b.txt"

    echo $name >&1
    time ./SKIP/bin/yara data/sample5.rules data/$name
done

for i in 1 10 100 1000 10000 100000 1000000 10000000
do
    name=$i"b.txt"

    echo $name >&1
    time ./NOSKIP/bin/yara data/sample5.rules data/$name
done
