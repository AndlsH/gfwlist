#!/bin/bash

git merge origin/master

if [ $? -ne 0 ]; then
    echo -e "\033[31m ====================================== \033[0m"
    echo -e "\033[31m =                                    = \033[0m"
    echo -e "\033[31m =          Fix conflicts,            = \033[0m"
    echo -e "\033[31m =     press any key to continue.     = \033[0m"
    echo -e "\033[31m =                                    = \033[0m"
    echo -e "\033[31m ====================================== \033[0m"
    read -n1
fi

base64 list.txt>accnet.txt

if [ $? -eq 0 ]; then
    echo -e "\033[32m ==================== \033[0m"
    echo -e "\033[32m =                  = \033[0m"
    echo -e "\033[32m =     Encoded!     = \033[0m"
    echo -e "\033[32m =                  = \033[0m"
    echo -e "\033[32m ==================== \033[0m"
fi

git commit -a -m "Update"

if [ $? -eq 0 ]; then
    echo -e "\033[32m ==================== \033[0m"
    echo -e "\033[32m =                  = \033[0m"
    echo -e "\033[32m =     Updated!     = \033[0m"
    echo -e "\033[32m =                  = \033[0m"
    echo -e "\033[32m ==================== \033[0m"
fi

git push

if [ $? -eq 0 ]; then
    echo -e "\033[32m ==================== \033[0m"
    echo -e "\033[32m =                  = \033[0m"
    echo -e "\033[32m =     Synced !     = \033[0m"
    echo -e "\033[32m =                  = \033[0m"
    echo -e "\033[32m ==================== \033[0m"
fi
