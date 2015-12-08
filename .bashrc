# ------------------------------------------------------------------------------
# FILE        | .bashrc
# AUTHOR      | sameh kamal
# DESCRIPTION | bash initialization file
# ------------------------------------------------------------------------------

TERM=xterm
PATH=$PATH:/usr/local/MATLAB/MATLAB_Production_Server/R2013a/bin
PATH=$PATH:/usr/local/netbeans-7.4/bin
PATH=$PATH:/opt/eclipse
EDITOR=subl3

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

alias clc=clear
alias open=xdg-open
alias subl=subl3

extract () {
    if [ -f $1 ] ; then
	case $1 in
	    *.tar.bz2)   tar xjf $1        ;;
	    *.tar.gz)    tar xzf $1     ;;
	    *.bz2)       bunzip2 $1       ;;
	    *.rar)       rar x $1     ;;
	    *.gz)        gunzip $1     ;;
	    *.tar)       tar xf $1        ;;
	    *.tbz2)      tar xjf $1      ;;
	    *.tgz)       tar xzf $1       ;;
	    *.zip)       unzip $1     ;;
	    *.Z)         uncompress $1  ;;
	    *.7z)        7z x $1    ;;
	    *.tar.xz)        tar -xvJf $1    ;;
	    *)           echo "'$1' cannot be extracted via extract()" ;;
	esac
    else
	echo "'$1' is not a valid file"
    fi
}
fish
