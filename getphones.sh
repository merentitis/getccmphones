#!/bin/bash

ccm=10.0.0.12
while read -r line ; do
        wget -N http://ccm:6970/$line.cnf.xml
        #echo -e $line
done <<<"$(curl http://ccm:6970/ConfigFileCacheList.txt | grep -o 'SEP.\{12\}' )"
