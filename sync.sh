#!/bin/bash

base64 list.txt>accnet.txt

if [ $? -eq 0 ]; then
    echo "Encoded!"
fi
