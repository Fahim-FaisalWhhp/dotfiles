# Custom Ls colors

LS_COLORS='rs=0:di=1;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=0;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.webp=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:*.rasi=1;33';

# Exporting

export LS_COLORS
export ZSH="/home/fh1m/.oh-my-zsh"
export PATH="$PATH:/home/fh1m/bin"
export PATH="$PATH:/home/fh1m/.local/share/gem/ruby/3.0.0/bin "
export PATH="$PATH:/home/fh1m/.local/bin"
export PATH="$PATH:/home/fh1m/.platformio/penv/bin"
export EDITOR="vim"
export VISUAL="vim"
export TERM=screen-256color
export KEYTIMEOUT=1
export FZF_DEFAULT_COMMAND='fd --type file --hidden --no-ignore'
export FZF_DEFAULT_OPTS='--height 60% --layout=reverse --prompt="❱ "'




# Plugins
plugins=(command-not-found copydir themes copyfile sudo fzf fzf-tab last-working-dir copy-pasta)

# this line
source $ZSH/oh-my-zsh.sh

# Options
autoload -U compinit
zstyle ':completion' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)
autoload -U colors && colors                         
DISABLE_UPDATE_PROMPT="true"
DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_AUTO_TITLE="true"


### Custom Functions And Alias 

# Extract

ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias ..='z ..'
alias pp="gotop"
alias cdir="copydir"
alias ls="lsd"
alias h="macho"
alias yt="rlwrap ytfzf"
alias e="nvim"
alias ytt="rlwrap ytfzf --thumbnail-quality=0 -t"
alias s="ncmpcpp -q"
alias r="python ~/.scripts/ranger/ranger.py"
alias get="yay -S"
alias c="copy"
alias p="pasta"
alias cf="copyfile"
alias pf="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
alias yf="yay -Slq | fzf --multi --preview 'yay -Si {1}' | xargs -ro yay -S"
alias hey="tuxi"
alias space="diskonaut"
alias sizeof="sudo du -sh"
alias cd="z"
alias ':q'='exit'
alias ':Q'='exit'
alias fileinfo="exiftool"
alias hex="hexyl"
alias py="python"
alias howis="movie"
alias listen="ytfzf -m"
alias watch="devour mpv"
alias search="rga"
alias ping="gping"
alias irc="irssi"
alias meditate="wisdom-tree"
alias cls="clear"
alias rm="trash"
alias pt="btop"
alias t="tmux attach -t root"
alias tc="tmux new -s root"
alias tk="tmux kill-server"
alias md="mkdir"
alias gc="git clone"
alias o=" devour xdg-open"
alias yup="yay -Qum"
alias pup="pacman -Qu | wc -l"
alias band="sudo bandwhich"
alias cal="pcalc"
alias reload="exec zsh"
alias la="ls -A "
alias rr="ranger"
alias y="mpsyt"

alias key="~/.scripts/key"

#Fuctions
function run(){
echo | fzf -q "$*" --preview-window=up:99% --preview="eval {q}"
}

#keybinds
bindkey "^A" beginning-of-line
bindkey "^Q" end-of-line

#Command not found
source /usr/share/doc/pkgfile/command-not-found.zsh

#Cool cd
eval "$(zoxide init zsh)"

# Start Tmux with zsh terminal
#if [ -z "$TMUX" ]
#then
    #tmux attach -t root || tmux new -s root
#fi

# Custom prompt
eval "$(starship init zsh)"

