#!/bin/bash

# SYSTEM-X FORMERLY RYSEN MASTER+ (HBlink3) A FORK OF THE FREEDMR / HBLINK PROJECT
# This script written by Shane Daley M0VUB. The script gracefully shutsdown services while services are cleaned and logs are truncated.
# We can also add items in this script for future use like updates or further log trims.
# Add to the cron tab for auto execution

#   Copyright (C) 2020 Shane P, Daley  M0VUB <support@gb7nr.co.uk>
#
#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.

# Start service(s) / and check logs.

clear

echo "Stopping System-X....."
sleep 2
echo .
sleep 1
echo ..
sleep 1
echo ...
docker-compose down
figlet "SYSTEM-X."
sleep 2
echo "Stopping RYMonv3....."
systemctl stop rymon
figlet "RYMonv2."
echo "Done."
sleep 1

echo "Done. Now Exiting....."
sleep 1
echo .
sleep 1
echo ..
sleep 1
echo ...
sleep 1
echo ....
echo "System-X is now stopped. AKA ShaYmez."
#
# This script has been developed by the one and only ShaYmez. Visit https://repo.radio/ShaYmez for more super scripts!
echo "All systems have been flushed/cleaned and ready to go. Aka Dr. Node. ShaYmez, SYSTEM-X"