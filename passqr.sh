#!/bin/bash

################################################################################
#
# Name: qr.sh
# Creator: Nicolas Nadeau
# Date: 25 december 2017
# Licence: Apache
# Description: Generate a temporary QR code for a quick share. In this specific
#              case, we use it for quick password share between a computer and
#              a phone.
#

# create a temporary named pipe
PIPE=$(mktemp -u)

# In case of fire, we delete the tmp file and exit
trap 'excode=$?; rm '"$PIPE"'; trap - EXIT; exit 1' EXIT HUP INT QUIT PIPE TERM ILL

# Read secretly the password 
read -sp "Password: " password

printf "\nQR generating"
qrencode -s 20 -m 5 "$password" -o - > $PIPE

printf "\nPrinting pipe"
eog $PIPE

printf "\nDone with everything\n"
