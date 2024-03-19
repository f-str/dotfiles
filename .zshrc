export ZSH=~/.zsh
export ZGEN=~/.zgen
export PATH=$PATH:/usr/local/bin:~/.local/bin:$HOME/.local/share/JetBrains/Toolbox/scripts

export CHROME_EXECUTABLE=/usr/bin/chromium

source "${ZSH}/multiconfig.sh"

#load zgen
source "${ZSH}/zgen/zgen.zsh"

# if the init script doesn't exist
if ! zgen saved; then

  # plugins
  zgen oh-my-zsh
  zgen oh-my-zsh plugins/command-not-found
  zgen oh-my-zsh plugins/dotenv
  zgen oh-my-zsh plugins/common-aliases
  zgen oh-my-zsh plugins/compleat
  zgen oh-my-zsh plugins/fzf
  zgen oh-my-zsh plugins/extract
  zgen oh-my-zsh plugins/gnu-utils
  zgen oh-my-zsh plugins/pip
  zgen oh-my-zsh plugins/pipenv
  zgen oh-my-zsh plugins/poetry
  zgen oh-my-zsh plugins/pylint
  zgen oh-my-zsh plugins/python
  zgen oh-my-zsh plugins/ripgrep
  zgen oh-my-zsh plugins/systemadmin
  zgen oh-my-zsh plugins/tmux
  zgen oh-my-zsh plugins/urltools
  zgen oh-my-zsh plugins/rust
  zgen oh-my-zsh plugins/gradle
  zgen oh-my-zsh plugins/mvn
  zgen oh-my-zsh plugins/kate
  
  zgen load hchbaw/list-colors.zsh
  zgen load thrig/zsh-compdef
  zgen load zsh-users/zsh-completions
  zgen load zsh-users/zsh-completions src
  zgen load http://git.code.sf.net/p/zsh/code Completion/Linux/Command
  zgen load zsh-users/zsh-syntax-highlighting
  zgen load zsh-users/zsh-history-substring-search
  zgen load tarruda/zsh-autosuggestions
  
  # theme
  zgen load f-str/agnoster-zsh-theme

  # generate the init script from plugins above
  zgen save
fi

# load theme
source "${ZGEN}/f-str/agnoster-zsh-theme-master/agnoster.zsh-theme"

# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=$HOME/.zsh/history

# Let background jobs running when closing the shell
NO_HUP="true"

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
  _accounts=(`grep -E "^User" ~/.ssh/config | sed s/User\ // | grep -E -v '^\*$'`)
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
source ${HOME}/.zsh/.aliases

# Keybinds
source ${HOME}/.zsh/.keybinds

# Terminfo 
export TERMINFO=/usr/share/terminfo

# Set up Node Version Manager
source /usr/share/nvm/init-nvm.sh

autoload -U add-zsh-hook

load-nvmrc() {
  local nvmrc_path
  nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version
    nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
      nvm use
    fi
  elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}

add-zsh-hook chpwd load-nvmrc
load-nvmrc

# Function for extracting archives
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
      *.jar)      jar xf $1     ;;
      *)          echo "\`$1': unrecognized file compression" ;;
    esac
  else
    echo "\`$1' is not a valid file"
  fi
}

# Function for cropping a page or multiple pages from a pdf-file
pdfcrop() {
  if [ -f $1 ] ; then
    case $1 in
      *.pdf)    pdftk $1 cat ${@:2} output output.pdf ;;
      *)        echo "\`$1': is not a pdf-file"  ;;
    esac
  else
    echo "\`$1' is not a valid file"
  fi
  echo "\`$1' successfully cropped."
}

# Function for getting the current weather delivered by wttr.in
weather() {
  curl wttr.in/${1}
}

# Function for faster gcc usage
cgcc() {
    gcc -Wall -Wextra -v -o ${1%.*} ${1}
}

# Get a string from the history and remove duplicated occurencies
grephu() {
  history | grep ${1} | awk '{$1="";print substr($0,2)}' | sort --unique
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
