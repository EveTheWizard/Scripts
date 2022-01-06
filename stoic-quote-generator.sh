#!/bin/bash

QUOTES=(~/Scripts/stoic-quotes/*.txt)

RAND_NUMBER=$[ $RANDOM%${#QUOTES[@]} ]
RANDOM_QUOTE=${QUOTES[$RAND_NUMBER]}

kdialog --title 'Stoic Quote!' --textbox $RANDOM_QUOTE 800 200
