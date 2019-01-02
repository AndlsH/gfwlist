#!/bin/bash

git fetch gfwlist

if [ $? -eq 0 ]; then
    echo -e "\033[32m ==================== \033[0m"
    echo -e "\033[32m =                  = \033[0m"
    echo -e "\033[32m =     Fetched!     = \033[0m"
    echo -e "\033[32m =                  = \033[0m"
    echo -e "\033[32m ==================== \033[0m"
fi

git merge gfwlist/master

if [ $? -eq 0 ]; then
    echo -e "\033[32m ==================== \033[0m"
    echo -e "\033[32m =                  = \033[0m"
    echo -e "\033[32m =     Merged!      = \033[0m"
    echo -e "\033[32m =                  = \033[0m"
    echo -e "\033[32m ==================== \033[0m"
fi

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
