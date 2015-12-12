#!/bin/bash

if [ $# != 2 ]; then
    echo "Usage: $0 from_resteasy_version to_resteasy_version";
    echo "from example: $0 3.0.14.Final-SNAPSHOT 3.0.11.Final";
fi

sed -i "s/$1/$2/g" `grep $1 -rl ./`
