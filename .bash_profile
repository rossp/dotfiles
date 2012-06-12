# ~/.bash_profile: executed by bash(1) for login shells.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/login.defs
#umask 022

# include .bashrc if it exists
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# set PATH so it includes user's private bin if it exists
if [ -d ~/bin ] ; then
    PATH=~/bin:"${PATH}"
fi
alias l="ls -lA"
alias ll="ls -lA $* | less"
alias mem="ps -A -o pid,euser,rss,pcpu,command --sort=rss ; free -m"
alias rmpyc="find . -name '*.pyc' -exec rm {} \;"

exec screen -R -D
