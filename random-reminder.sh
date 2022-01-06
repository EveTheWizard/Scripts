#!/bin/bash

NOTIFICATIONS=(~/Scripts/notifications/*)
#'notifications/water.txt'
#'notifications/breathing.txt'

rand=$[ $RANDOM%${#NOTIFICATIONS[@]} ]
RANDOM_NOTIFY=${NOTIFICATIONS[$rand]}
echo $RANDOM_NOTIFY
kdialog --title 'ALERT' --textbox $RANDOM_NOTIFY 800 200

