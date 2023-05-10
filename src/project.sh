#!/bin/bash
for i in {1..5} ; do
    touch $i.txt
    echo "hello world">$i.txt
    sed 's/world/bash/g' $i.txt |cat >$i.txt
done