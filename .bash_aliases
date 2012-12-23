# aliases
alias diff='colordiff'              # requires colordiff package
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias more='less'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias ping='ping -c 5'
alias ..='cd ..'
# Use alert like this: sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias scat='sudo cat'
alias svim='sudo vim'
alias root='sudo su'
alias reboot='sudo reboot'
alias shutdown='sudo shutdown -hP now'
alias aupdate='sudo apt-get update && sudo apt-get upgrade'
alias ainstall='sudo apt-get install'
alias aremove='sudo apt-get purge'
alias aclean='sudo apt-get autoclean && sudo apt-get autoremove'

# ls
alias ls='ls -h --color=auto'
alias lr='ls -R'                    # recursive ls
alias ll='ls -l'
alias la='ls -A'
alias lx='ll -BX'                   # sort by extension
alias lz='ll -rS'                   # sort by size
alias lt='ll -rt'                   # sort by date
alias lm='la | more'

# safety features
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'                    # 'rm -i' prompts for every file
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# git
alias gs='git status'
alias gd='git diff '
alias gl='git log | more'
alias gc='git commit '
alias gp='git push'

# Extract function
extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)  tar xjf $1      ;;
            *.tar.gz)   tar xzf $1      ;;
            *.bz2)      bunzip2 $1      ;;
            *.rar)      rar x $1        ;;
            *.gz)       gunzip $1       ;;
            *.tar)      tar xf $1       ;;
            *.tbz2)     tar xjf $1      ;;
            *.tgz)      tar xzf $1      ;;
            *.zip)      unzip $1        ;;
            *.Z)        uncompress $1   ;;
            *)          echo "'$1' cannot be extracted via extract()" ;;
    esac
    else
        echo "'$1' is not a valid file"
    fi
}

# cd then ls function
function cdd () {
    cd "$*"
    ls -h --color=auto
}
