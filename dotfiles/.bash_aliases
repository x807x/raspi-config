alias sd="~/stable-diffusion-webui/webui.sh"
alias neofetch="fastfetch"
alias rebash="source ~/.bashrc"
alias pico='nvim'
alias vim='nvim'
# alias SERVERNAME='ssh YOURWEBSITE.com -l USERNAME -p PORTNUMBERHERE'
alias web='cd /var/www/html'
# Add an "alert" alias for long running commands.  Use like so:
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias ebrc='nvim ~/.bashrc && source ~/.bashrc'
alias eali="nvim ~/.bash_aliases && source ~/.bashrc"
alias hlp='less ~/.bashrc_help'
# alias to show the date
alias da='date "+%Y-%m-%d %A %T %Z"'
alias cp='cp -i'
alias mv='mv -i'
alias rm='trash -v'
alias mkdir='mkdir -p'
alias ps='ps auxf'
alias ping='ping -c 10'
alias less='less -R'
alias cls='clear'
alias apt-get='sudo apt-get'
alias apt="sudo apt"
alias aptin="sudo apt install"
alias aptrm="sudo apt remove"
alias aptup="sudo apt update && sudo apt upgrade -y"
alias multitail='multitail --no-repeat -c'
alias freshclam='sudo freshclam'
alias vi='nvim'
alias svi='sudo vi'
alias vis='nvim "+set si"'

# Change directory aliases
alias home='cd ~'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias z..="z .."
alias z...="z ../.."
alias z....="z ../../.."
alias github="z github"

# List files and directories
alias ls="eza --icons"
alias l="eza --icons"
alias ll="eza --icons -lh"
alias lh="eza --icons -hal"
alias la="eza --icons -a"
alias lla="eza --icons -lha"

alias tree="eza --icons -T"
alias lt="eza --icons -T"

# Change directory and list
function zl { z $1 && eza --icons; }
export -f zl
function za { z $1 && eza --icons -a; }
export -f za
function zlh { z $1 && eza --icons -hal; }
export -f zlh
function zt { z $1 && eza --icons -T; }
export -f zt
function zta { z $1 && eza --icons -Ta; }
export -f zta
function zlc { z $1 && clear && eza --icons -Ta; }
export -f zlc
function zc { z $1 && clear; }
export -f zc
function mz { mkdir $1 && z $1; }
export -f mz



alias bd='cd "$OLDPWD"'
alias rmd='/bin/rm  --recursive --force --verbose '
# alias chmod commands
alias mx='chmod a+x'
alias 000='chmod -R 000'
alias 644='chmod -R 644'
alias 666='chmod -R 666'
alias 755='chmod -R 755'
alias 777='chmod -R 777'
alias h="history | grep "
alias p="ps aux | grep "
alias topcpu="/bin/ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10"
alias f="find . | grep "
alias countfiles="for t in files links directories; do echo \`find . -type \${t:0:1} | wc -l\` \$t; done 2> /dev/null"

 # Replace batcat with cat on Fedora as batcat is not available as a RPM in any form
if command -v lsb_release >/dev/null; then
	DISTRIBUTION=$(lsb_release -si)
	if [ "$DISTRIBUTION" = "Fedora" ] || [ "$DISTRIBUTION" = "Arch" ] || [ "$DISTRIBUTION" = "Debian" ] ; then
		alias cat='bat'
		alias readme="bat README.*"
	else
		alias cat='batcat'
		alias readme="batcat README.*"
	fi
fi

# To see if a command is aliased, a file, or a built-in command
alias checkcommand="type -t"
alias openports='netstat -nape --inet'
alias rebootsafe='sudo shutdown -r now'
alias rebootforce='sudo shutdown -r -n now'
alias diskspace="du -S | sort -n -r |more"
alias folders='du -h --max-depth=1'
alias folderssort='find . -maxdepth 1 -type d -print0 | xargs -0 du -sk | sort -rn'
alias mountedinfo='df -hT'
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'
alias logs="sudo find /var/log -type f -exec file {} \; | grep 'text' | cut -d' ' -f1 | sed -e's/:$//g' | grep -v '[0-9]$' | xargs tail -f"
alias sha1='openssl sha1'
alias clickpaste='sleep 3; xdotool type "$(xclip -o -selection clipboard)"'
# KITTY - alias to be able to use kitty features when connecting to remote servers(e.g use tmux on remote server)
alias kssh="kitty +kitten ssh"
alias whatismyip="whatsmyip"
alias hug="hugo server -F --bind=10.0.0.97 --baseURL=http://10.0.0.97"

if [ -f ~/bin/copyfile.sh ];then
	alias cb="~/bin/copyfile.sh"
fi

# rust 
alias cb="cargo build"
alias ct="cargo test"
alias cr="cargo run"

# cpp
function gr { g++ -o a.out $1 && ./a.out; }
export -f gr

# tmux
function tmuxr {
	tmux new-session -A -s $1 \; send -t $1 $2 ENTER \; detach -s $1
}

# htop
alias htop="btm"

# conda
alias cona="conda activate"
alias cond="conda deactivate"