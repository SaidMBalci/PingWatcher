#!/bin/bash

# Farben definieren
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # Keine Farbe

# IP-Adressen definieren
IPS=("8.8.8.8" "1.1.1.1" "192.168.178.118" "192.168.178.1")

#Log-Ordner erstellen
mkdir -p log
LOGFILE="log/pingwatcher.log"

# Logfile bereinigen
> $LOGFILE

#Jede IP testen
for ip in "${IPS[@]}"
do
    echo "Teste $ip..."
    ping -n 1 $ip > /dev/null 2>&1

    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✔ $ip erreichbar${NC}"
        echo "$(date): $ip erreichbar" >> $LOGFILE
    else
       echo -e "${RED}✘ $ip NICHT erreichbar${NC}"
        echo "$(date): $ip NICHT erreichbar" >> $LOGFILE
    fi
done
