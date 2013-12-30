#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# Bash completion
if [ -f /usr/share/git/completion/git-prompt.sh ]; then
        source /usr/share/git/completion/git-prompt.sh
fi
export GIT_PS1_SHOWDIRTYSTATE=1
PS1='\e[1;31m#\@#\e[m\e[1;36m[\u@\h \w]\e[1;34m\[$(__git_ps1)\e[m\n $ '
#PS1='\e[1;33m[\u@\h \w]\e[m\n $ '
#PS1='[\u@\h \w] $ '

REPOS=/home/kornel/dev/repos
source /home/kornel/scripts/init_android_dev
source /home/kornel/.bash_aliases
