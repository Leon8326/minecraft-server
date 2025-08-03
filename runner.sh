#!/bin/bash

if [[ ! -f "server.jar" ]]; then
    echo -e "Warning! Minecraft Server has not been found. Please ensure it is named \"server.jar\""
fi  

if ! command -v java &> /dev/null; then
    echo "Java has not been found."
fi

if [[ -f "server.jar" && "$1" == "" ]]; then
    java -Xmx1024M -Xms1024M -jar minecraft_server.1.21.8.jar nogui
fi