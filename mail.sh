!#/bin/bash

	#To Send File
	history >> history.txt
	
  	#Installing mailutils
  	mail --version
  	sudo apt-get install mailutils
  	sudo apt install ssmtp
  	sudo nano /etc/ssmtp/ssmtp.conf
<<comment
	 #mail I sent from
	SERVER=username@gmail.com                            
	mailhub=smtp.gmail.com:587
	AuthUser=username@gmail.com
	
	#password of app passwaords from google
	Authpass= >> an app password that was created by google
	UseTLS=YES
	UseSTARTTLS=YES
	# Where will the mail seem to come from?
	#rewriteDomain=
	rewriteDomain=gmail.com
	# name of your virtualbox
	hostname= -VirtualBox
comment

#command to send the history file 	
  	mail -A HistoryFile.txt username@gmail.com
  	

<<comment
	Then press ( Ctrl + d ) in the terminal after calling bash script 
comment
