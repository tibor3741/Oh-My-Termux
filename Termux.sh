#!/bin/bash
pkg install ncurses-utils -y 
BLUE="$(tput setaf 4 smul)"
WHITE="$(tput setaf 7)"
GREEN="$(tput setaf 2)"
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="oh here"
TITLE="Oh My Termux"
MENU="Choose one of the following options:"

OPTIONS=(1  "All"
	2 "Packages Install"
	3 " Clone and Configurate"
	4  "Duracula Theme")
CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in	
	1)
		termux-setup-storage
		rm /data/data/com.termux/files/usr/etc/motd	
		pkg install neofetch git man neovim vifm fzf python zsh tmux wget perl python-pip exa bat termimage traceroute -y
		apt install lua53 -y
		pkg update -y
		apt update -y
		python3 -m pip install yt-dlp
		rm /data/data/com.termux/files/usr/etc/motd
		mkdir ~/.config
		chmod +x search.sh 
		mv search aliasrc ~/.config/
		mv search.sh ~/../usr/bin/
		
                cd ~
		rm /data/data/com.termux/files/usr/etc/motd
		mkdir ~/.config
		chmod +x search.sh 
		mv search aliasrc ~/.config/
		mv search.sh ~/../usr/bin/
		
                cd ~
               	pkg install git -y
                git clone https://github.com/gpakosz/.tmux.git
				ln -s ./storage/downloads/Termux/ ./Downloads
				ln -s /sdcard
				mkdir -p storage/shared/Documents/notes
				ln -s storage/shared/Documents/notes
				mkdir -p ./storage/downloads/Termux
				mkdir -p  ./Downloads/Videos
				mkdir -p  ./Downloads/Images
                ln -s -f .tmux/.tmux.conf
                cp .tmux/.tmux.conf.local .
                cd .config
		git clone https://github.com/adi1090x/termux-style

		git clone https://github.com/magyarch/baz-bspwm/
       		mv .config/baz-bspwm/.local/bin/cmds/noti.sh ./../usr/bin/noti
		mv baz-bspwm/.config/vifm ./
		rm -rf baz-bspwm
		git clone https://github.com/dovahkiin0424/magyarch-zsh
		mv magyarch-zsh/.config/zsh ./
		mv magyarch-zsh/.zshenv ~/
		rm -rf magyarch-zsh
		chsh -s zsh 
                mkdir nvim
                git clone https://github.com/dovahkiin0424/nvim-lua-dots
                mv nvim-lua-dots/lua ./nvim
                mv nvim-lua-dots/init.lua ./nvim
		rm -rf nvim-lua-dots
                clear
		cd ~
           	pkg install git
             	git clone https://github.com/dracula/termux
             	cp ./termux/colors.properties ./colors.properties.back
		mv termux/colors.properties ~/.termux
		clear 
		echo "${BLUE}indítsd újra a termuxot  "
           
 
	;;
	2)
	
		termux-setup-storage
		rm /data/data/com.termux/files/usr/etc/motd	
		pkg install curl nmap neofetch git neovim vifm python zsh tmux wget perl python-pip exa bat termimage traceroute -y
		apt install lua53 -y
		pkg update -y
		apt update -y
 	         while true; do
                 read -p "Akkarja telepìteni a youtube dlp-t? (y/n) " yn
                 case $yn in
                    [yY] ) echo " ${GREEN}Rendben telepìtem${WHITE}";
                    break;;
                     [nN] ) echo "${GREEN}Jó nem telepítem ${WHITE}";
                        exit;;
                        * ) echo invalid response;;
                      esac
                 done
		 python3 -m pip install yt-dlp
	;;
	3)

		termux-setup-storage
		rm /data/data/com.termux/files/usr/etc/motd
		mkdir ~/.config
		chmod +x search.sh 
		mv search aliasrc ~/.config/
		mv search.sh ~/../usr/bin/
		
                cd ~
               	pkg install git -y
                git clone https://github.com/gpakosz/.tmux.git
				ln -s ./storage/downloads/Termux/ ./Downloads
				
				mkdir -p ./storage/downloads/Termux
				mkdir -p  ./Downloads/Videos
				mkdir -p  ./Downloads/Images
				
				ln -s /sdcard
				mkdir -p storage/shared/Documents/notes
				ln -s storage/shared/Documents/notes
                ln -s -f .tmux/.tmux.conf
                cp .tmux/.tmux.conf.local .
                cd .config
		git clone https://github.com/adi1090x/termux-style

		git clone https://github.com/magyarch/baz-bspwm/
        
        	mv .config/baz-bspwm/.local/bin/cmds/noti.sh ./../usr/bin/noti
		mv baz-bspwm/.config/vifm ./
		
		git clone https://github.com/dovahkiin0424/magyarch-zsh
		mv magyarch-zsh/.config/zsh ./
		
		mv magyarch-zsh/.zshenv ~/
		magyarch-zsh
		chsh -s zsh 
                mkdir nvim
                git clone https://github.com/dovahkiin0424/nvim-lua-dots
                mv nvim-lua-dots/lua ./nvim
                mv nvim-lua-dots/init.lua ./nvim
              while true; do
                 read -p "Töröljem a felesleges fájlokat? (y/n) " yn
                 case $yn in
                    [yY] ) echo ${GREEN} Rendben törlöm a tárolókat;
                    break;;
                     [nN] ) echo ${GREEN}Rendben meghagyom;
		      echo "${BLUE}Indítsd újra a termux-ot."

                        exit;;
                        * ) echo Nem ismert válasz;;
                      esac
                 done
                rm -rf nvim-lua-dots bad-bspwm magyarch-zsh
		clear
		echo "${BLUE}Indítsd újra a termuxot. "

	;;
        4)
            cd 	~
           	 pkg install git
             git clone https://github.com/dracula/termux
             cp ./termux/colors.properties ./colors.properties.back
		mv termux/colors.properties ~/.termux
		clear 
		echo "${BLUE}Indítsd újra a termuxot.  "
            ;;
 

esac
echo "${GREEN}Köszönöm hogy használtad a scriptem."


