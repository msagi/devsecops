#!/usr/bin/env bash
set -o xtrace

mkdir /tmp/licenses/

cd /usr/share/doc

for i in $(ls -d */); do 
    package=${i::-1}
    echo ${package}
    sourceFile="/usr/share/doc/${package}/copyright"
    targetFile="/tmp/licenses/${package}-copyright.txt"
    if [ -f ${sourceFile} ]; then
        cp ${sourceFile} ${targetFile}
    fi
done

tar -cvzf /tmp/licenses.tar.gz /tmp/licenses/*

rm -rf /tmp/licenses