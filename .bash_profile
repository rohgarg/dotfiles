# .bash_profile

export PATH=/usr/local/bin:/usr/local/sbin:$HOME/bin:$HOME/sws/bin:$HOME/.local/bin:$PATH

if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

if [ -f ~/sws/bash-sensible/sensible.bash ]; then
   source ~/sws/bash-sensible/sensible.bash
fi

if [ -f ~/sws/liquidprompt/liquidprompt ]; then
   source ~/sws/liquidprompt/liquidprompt
fi

export TERM=xterm-256color

alias proj='cd ~/proj/'

## a quick way to get out of current directory ##
alias c='clear'
alias ..='cd ..'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# Get external ip
alias myip="curl ifconfig.me"

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

alias vi=vim
alias svi='sudo vi'
alias vis='vim "+set si"'
alias edit='vim'

# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'
# Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'

alias ports='netstat -tulanp'

# do not delete / or prompt if deleting more than 3 files at a time #
if [ ${OSTYPE:0:6} == "darwin" ];
then
  alias rm='rm -i'
  alias cl='clear; ls -ltrhG'
  export JAVA_HOME=`/usr/libexec/java_home`
  export PATH=$PATH:/usr/local/texlive/2019basic/bin/x86_64-darwin/
  export PROTOC_PATH=/usr/local/bin/protoc
  export PROTOBUF_INCLUDE=/usr/local/include
  [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
else
  alias rm='rm -I --preserve-root'
  alias cl='clear; ls -ltrh --color=always'
fi

alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

alias meminfo='free -m -l -t'

alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

alias cpuinfo='lscpu'

alias wget='wget -c'

alias top='htop'

# Git aliases
alias gg="git grep -n"
alias gd="git diff"
alias gdc="git diff --cached"
alias gds="git diff --staged"
alias gl="git log"
alias gll="gl --oneline --decorate"
alias gcp="git cherry-pick"
alias gco="git checkout"
alias gbr="git br"
alias gpr="git pull --rebase"
alias grb="git rebase -i"
alias gsk="git stash --keep-index"
alias gst="git status"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
