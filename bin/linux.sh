#!/bin/bash

#Below line checks if uname is Linux, if yes, then run normal stuff, if no, send error occurred to the log.
if ((uname == "Linux"))
then
	mkdir -p ~/.TRASH
	#Above makes the trash directory in home directory, below checks if file exists.
	if test -f "\~\/\.vimrc"; then
		mv ~/.vimrc ~/.bup_vimrc
		#Above line renames it, below line adds to log that this happened.
		echo "Current vimrc changed to bup_vimrc">>linuxsetup.log
	fi
	cat ~/.dotfiles/etc/vimrc > ~/.vimrc
	#Above line takes the vimrc and writes it to 
	echo "source~\/.dotfiles\/etc\/bashrc_custom">>~/.bashrc

else
	echo"error occurred">>linuxsetup.log
fi
