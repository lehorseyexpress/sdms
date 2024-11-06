#!bin/bash

echo "[Server]: This file is for saving the edits to the main branch. 
[Server]: Would you like to continue? (Y\N)"
read message

if [ "$message" = 'y' ] || [ "$message" = 'Y' ]; then
    echo "[Server]: Running..."
    sleep 1

    git add .
    git commit -m "Quick update"
    git pull origin main

    exit
elif [ "$message" = 'n' ] || [ "$message" = 'N' ]; then
    echo "[Server]: Exiting file..."
    exit
else
    echo "[Server]: Err: not a valid responce.
[Server]: Exiting file..."
    exit
fi