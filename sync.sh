#!/bin/bash

base64 list.txt>accnet.txt

if [ $? -eq 0 ]; then
    echo "Encoded!"
fi

git commit -a -m "Update"

if [ $? -eq 0 ]; then
    echo "Updated!"
fi

git push

if [ $? -eq 0 ]; then
    echo "Synced!"
fi
