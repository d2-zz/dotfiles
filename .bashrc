#
# ~/.bashrc
#

export CHARSET=UTF-8
export LESSCHARSET=UTF-8

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ "$TERM" = "linux" ]; then
    echo -en "\e]P0000000"
    echo -en "\e]P1BB5544"
    echo -en "\e]P2778855"
    echo -en "\e]P3AA8866"
    echo -en "\e]P4445566"
    echo -en "\e]P5EE8855"
    echo -en "\e]P6669988"
    echo -en "\e]P7CCBBBB"
    echo -en "\e]P8555555"
    echo -en "\e]P9FF7766"
    echo -en "\e]PABBCC88"
    echo -en "\e]PBFFCCAA"
    echo -en "\e]PC99BBEE"
    echo -en "\e]PDEE7799"
    echo -en "\e]PEBBDDCC"
    echo -en "\e]PFFEEEEE"
fi

export EDITOR='vim'
export VISUAL=$EDITOR
export PAGER='less'

PS1="\[\033[1m\]\W \$\[\033[0m\] "

alias ssh-auth='killall ssh-agent 2> /dev/null; eval `ssh-agent`; ssh-add'
alias dotfiles='git commit -a -m "dotfiles" && git push -u origin master'

alias df='df --human-readable --print-type --sync'
alias ls='ls --human-readable -CF --color'
alias ix="curl --netrc --form 'f:1=<-' http://ix.io"
alias w3m="w3m -v"

tremcolor='sub dc{($_)=@_;$_=(ord uc)-64if/[a-z]/i;$_-=8while($_>7);"\e[0;3".$_."m"}s/\^(\d+|[a-z])/dc($1)/eig;s/^|$/\e[m/g'
alias tremulous="/usr/bin/tremulous 2>&1 | perl -pe '$tremcolor'"

