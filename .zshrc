export ZSH=~/.zsh
export ZGEN=~/.zgen
export PATH=$PATH:/usr/local/bin:~/.local/bin

#load zgen
source "${ZSH}/zgen/zgen.zsh"

# if the init script doesn't exist
if ! zgen saved; then

  # plugins
  zgen oh-my-zsh
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/sudo
  zgen oh-my-zsh plugins/command-not-found
  zgen oh-my-zsh plugins/bundler
  zgen oh-my-zsh plugins/dotenv
  zgen oh-my-zsh plugins/rake
  zgen oh-my-zsh plugins/rbenv
  zgen oh-my-zsh plugins/autojump
  zgen oh-my-zsh plugins/colorize
  zgen oh-my-zsh plugins/common-aliases
  zgen oh-my-zsh plugins/compleat
  zgen oh-my-zsh plugins/cp
  zgen oh-my-zsh plugins/dircycle
  zgen oh-my-zsh plugins/dirhistory
  zgen oh-my-zsh plugins/dirpersist
  zgen oh-my-zsh plugins/extract
  zgen oh-my-zsh plugins/fasd
  zgen oh-my-zsh plugins/frontend-search
  zgen oh-my-zsh plugins/github
  zgen oh-my-zsh plugins/gnu-utils
  zgen oh-my-zsh plugins/history
  zgen oh-my-zsh plugins/history-substring-search
  zgen oh-my-zsh plugins/pip
  zgen oh-my-zsh plugins/profiles
  zgen oh-my-zsh plugins/python
  zgen oh-my-zsh plugins/systemadmin
  zgen oh-my-zsh plugins/themes
  zgen oh-my-zsh plugins/tmux
  zgen oh-my-zsh plugins/urltools
  zgen oh-my-zsh plugins/cargo
  zgen oh-my-zsh plugins/rust
  zgen oh-my-zsh plugins/docker
  zgen oh-my-zsh plugins/docker-compose
  zgen oh-my-zsh plugins/go
  zgen oh-my-zsh plugins/golang
  zgen oh-my-zsh plugins/gradle
  zgen oh-my-zsh plugins/mvn
  zgen oh-my-zsh plugins/kate
  zgen oh-my-zsh plugins/man
  zgen oh-my-zsh plugins/mercurial
  zgen oh-my-zsh plugins/nmap
  zgen oh-my-zsh plugins/web-search
  
  zgen load hchbaw/list-colors.zsh
  zgen load thrig/zsh-compdef
  zgen load zsh-users/zsh-completions
  zgen load zsh-users/zsh-completions src
  zgen load http://git.code.sf.net/p/zsh/code Completion/Linux/Command
  zgen load Vifon/deer
  zgen load zsh-users/zaw
  zgen load clvv/fasd
  zgen load psprint/zsh-navigation-tools
  zgen load zsh-users/zsh-syntax-highlighting
  zgen load trapd00r/zsh-syntax-highlighting-filetypes
  zgen load zsh-users/zsh-history-substring-search
  zgen load tarruda/zsh-autosuggestions
  
  # theme
  zgen load Fload2000/agnoster-zsh-theme

  # generate the init script from plugins above
  zgen save
fi

# load theme
source "${ZGEN}/Fload2000/agnoster-zsh-theme-master/agnoster.zsh-theme"

# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=${ZSH}/history

# Set language environment
export LANG=de_DE.UTF-8


autoload -U compinit
compinit -i

zstyle ':completion:*' completer _complete _prefix
zstyle ':completion:*' add-space true

# Smart case matching && match inside filenames
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
# 'm:{a-z}={A-Z}'
# zstyle ':completion:*' matcher-list '' '' 'l:|=* r:|=*' 'l:|=* r:|=*'

zstyle ':completion:*:*:*:*:*' menu select

# Rehash when completing commands
zstyle ":completion:*:commands" rehash 1

# Process completion shows all processes with colours
zstyle ':completion:*:*:*:*:processes' menu yes select
zstyle ':completion:*:*:*:*:processes' force-list always
zstyle ':completion:*:*:*:*:processes' command 'ps -A -o pid,user,cmd'
zstyle ':completion:*:*:*:*:processes' list-colors "=(#b) #([0-9]#)*=0=${color[green]}"
zstyle ':completion:*:*:kill:*:processes' command 'ps --forest -e -o pid,user,tty,cmd'
# zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'

# List all processes for killall
zstyle ':completion:*:processes-names' command "ps -eo cmd= | sed 's:\([^ ]*\).*:\1:;s:\(/[^ ]*/\)::;/^\[/d'"

# SSH usernames
if [[ -f ~/.ssh/config ]]; then
  _accounts=(`egrep "^User" ~/.ssh/config | sed s/User\ // | egrep -v '^\*$'`)
  zstyle ':completion:*:users' users $_accounts
fi

# Colours in completion
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Display message when no matches are found
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

# Ignore internal zsh functions
zstyle ':completion:*:functions' ignored-patterns '_*'

# Grouping for completion types (trial)
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*:descriptions' format "%{$fg_bold[magenta]}%}= %d =%{$reset_color%}"
# zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*' group-name ""

# Speedup path completion
zstyle ':completion:*' accept-exact '*(N)'

# Cache expensive completions
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.cache/zsh


# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

# Aliases
if [ -f ${ZSH}/.aliases ]; then
    . ${ZSH}/.aliases
fi


extract() {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)  tar xjvf $1   ;;
      *.tar.gz)   tar xvzf $1   ;;
      *.tar.xz)   tar xvJf $1   ;;
      *.bz2)      bunzip2 $1    ;;
      *.rar)      unrar $1      ;;
      *.gz)       gunzip $1     ;;
      *.tar)      tar xvf $1    ;;
      *.tbz2)     tar xvjf $1   ;;
      *.tgz)      tar xvzf $1   ;;
      *.zip)      unzip $1      ;;
      *.z)        uncompress $1 ;;
      *.7z)       7z x $1       ;;
      *.xz)       unxz $1       ;;
      *.exe)      cabextract $1 ;;
      *)          echo "\`$1': unrecognized file compression" ;;
    esac
  else
    echo "\`$1' is not a valid file"
  fi
}
