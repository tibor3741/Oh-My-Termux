#!/bin/bash


PS3='Search in file or search the file: '
options=("1.Serch the file" "2.Search in file" "Quit")
select opt in "${options[@]}"
do
    case $opt in
			
           "1.Search the file")
          		clear
                        echo Search:
          		read filename
          		find /data/data/com.termux/files/ -type f -name "$filename"
          break ;;
         "2.Serch in file" )
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
