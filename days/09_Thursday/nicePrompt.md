To get a nice prompt:

Go to your home folder:

    cd ~
    
Create a `.bash_profile` file:
    
    nano .bash_profile
 
 Put this text in it:
 
     # http://superuser.com/questions/204003/make-os-x-terminal-commands-i-type-bold
     BOLD="\[\033[1m\]"
     OFF="\[\033[m\]"
     PS1="${BOLD}\n[\u@\h] \w \n> ${OFF}"
     PS2="${BOLD}>${OFF} "
 
(note that the first line is comment, that's the resource I got this from).

    CTRL+x
    
... to quit.  And save!

Now you need to quit and relaunch your BASH shell.

Note that

    ls
    
... will not show this file -- it starts with a `.` and is therefore considered a hidden/system file. To list it, you need:
    
    ls -a
    
(list ALL files)
