#!/bin/bash

echo "
-----------------------------------------------------
        Server  Data  Management  Software
-----------------------------------------------------"

sleep 2
echo "
Please wait..."
sleep 1

echo "[Server]: Run setup protocol? (Y/N, Only necessary if first time.)"
read answer

if [ "$answer" = 'n' ] || [ "$answer" = 'N' ]; then
    # Skip the setup and continue with the rest of the script
    echo "[Server]: Skipping setup..."
elif [ "$answer" = 'y' ] || [ "$answer" = 'Y' ]; then
    sudo apt install nc
    chmod +x save.sh
else
    echo "Invalid Input. Exiting file..."
    exit
fi

clear

echo "
-----------------------------------------------------
        Server  Data  Management  Software
-----------------------------------------------------

[Server]: Start a new server? (Y/N)"
read message

if [ "$message" = 'n' ] || [ "$message" = 'N' ]; then
    echo "[Server]: ...I haven't programmed this far..."
    exit
elif [ "$message" = 'y' ] || [ "$message" = 'Y' ]; then
    echo "[Server]: What IP address would you like to use?"
    read IP
    
    if [ "$IP" = "0.0.0.0" ]; then
        echo "[Server]: Starting server with IP address 0.0.0.0 (listening on all interfaces)"
        nc -l 0.0.0.0 12345  # Example command to start Netcat listening on IP 0.0.0.0 and port 12345
    else
        echo "Invalid Input. Exiting file..."
        exit
    fi
else
    echo "Invalid Input. Exiting file..."
    exit
fi

exit
