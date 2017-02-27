#!/bin/bash

base64 -d gfwlist.txt>list.txt

if [ $? -eq 0 ]; then
    echo -e "\033[32m ==================== \033[0m"
    echo -e "\033[32m =                  = \033[0m"
    echo -e "\033[32m =     Decoded!     = \033[0m"
    echo -e "\033[32m =                  = \033[0m"
    echo -e "\033[32m ==================== \033[0m"
fi

git commit -a -m "Update"

if [ $? -eq 0 ]; then
    echo -e "\033[32m ==================== \033[0m"
    echo -e "\033[32m =                  = \033[0m"
    echo -e "\033[32m =    Committed!    = \033[0m"
    echo -e "\033[32m =                  = \033[0m"
    echo -e "\033[32m ==================== \033[0m"
fi

git push

if [ $? -eq 0 ]; then
    echo -e "\033[32m ==================== \033[0m"
    echo -e "\033[32m =                  = \033[0m"
    echo -e "\033[32m =     Pushed!      = \033[0m"
    echo -e "\033[32m =                  = \033[0m"
    echo -e "\033[32m ==================== \033[0m"
fi
