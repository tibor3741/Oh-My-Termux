#!/bin/bash


PS3='Search in file or search the file: '
options=("1.Serch in file"  "Quit")
select opt in "${options[@]}"
do
    case $opt in
	"1.Serch in file" )
				clear
			echo Search: 
			read filename
			grep -R -no messages "$filename" /data/data/com.termux/files/
			break	 ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
