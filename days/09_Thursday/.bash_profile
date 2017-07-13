# http://superuser.com/questions/204003/make-os-x-terminal-commands-i-type-bold
BOLD="\[\033[1m\]"
OFF="\[\033[m\]"
PS1="${BOLD}\n[\u@\h] \w \n> ${OFF}"
PS2="${BOLD}>${OFF} "
