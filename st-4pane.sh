#!/bin/sh

#Flags for launch 
help='false'
priority='v'
sub='h'
name='Rawr xd'
windows=4
print_usage() {
	printf "Usage: [-h: Show Usage][-w 1-4 opens 1-4 windows in v then h split order]
	[-v: Prioritize vertical splits][-z: Prioritize horizontal split]
	[-o: only vertical splits][-g: only horizontal splits][-n name: names window]
	\n"
}

while getopts w:z:h:v:o:g:n flag
do
    case "${flag}" in
        w) windows=${OPTARG};;
	v) priority='v'
	   sub='h';;
	z) priority='h'
	    sub='v';;
	o) priority='v'
	    sub='v';;
	g) priority='h'
	    sub='h';;
	n) name=${OPTARG};;
	h) print_usage
	   exit 1;;
	*) print_usage
	   exit 1;;
    esac
done

#Windows
if [ $windows -eq 1 ]
then
	tabbed -r 2 st -w '' tmux new
fi

if [ $windows -eq 2 ]
then
tabbed -r 2 st -w '' tmux new\; \split-window -$priority
fi
if [ $windows -eq 3 ]
then
tabbed -r 2 st -w '' tmux new\; \split-window -$priority \; \split-window -$sub
fi
if  [ $windows -eq 4 ]
then
tabbed -r 2 st -w '' tmux new\; \split-window -$priority \; \split-window -$sub \; \select-pane -t 0 \; \split-window -$sub
fi
