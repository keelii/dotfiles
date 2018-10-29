# variable
GLOBAL_IGNORE_PATTERN="{.www,.idea,.vscode,.sass-cache,build,node_modules,.DS_Store,ept.item.iml}"


# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/local/node/bin:$PATH
export PATH=/usr/local/android-studio/bin:$PATH
export PATH=/usr/local/watchman/bin:$PATH

export PATH=/Users/keelii/Userbin/:$PATH
export PATH=/usr/local/opt/sphinx-doc/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export TERM=xterm-256color


export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH=$PATH:/usr/local/flutter/bin

export FZF_DEFAULT_COMMAND="fd --exclude=${GLOBAL_IGNORE_PATTERN} --type f"
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
KEYTIMEOUT=1

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions autojump git python ruby node npm yarn pip django)

source $ZSH/oh-my-zsh.sh

#eval $(thefuck --alias)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias open="xdg-open"
alias pmmm="python manage.py makemigrations"
alias pm="python manage.py"
alias pmm="python manage.py migrate"
alias pmr81="python manage.py runserver"

alias ag="ag --ignore=${GLOBAL_IGNORE_PATTERN}"
alias fd="fd --exclude=${GLOBAL_IGNORE_PATTERN}"
alias cl="clear"
alias cls="clear"
alias src="source ~/.zshrc"
alias tree="tree -I node_modules"
alias fidder="mono /Users/keelii/Documents/fiddler-mac/Fiddler.exe"
alias cloc="cloc --exclude-dir=node_modules"
alias vps="ssh root@45.63.60.240"
alias shell234="ssh root@192.168.200.234"
alias shell238="ssh root@192.168.200.238"
alias shell239="ssh root@192.168.200.239"
alias cp_dotfiles="cp ~/.npmrc ~/.gitconfig ~/.vimrc ~/.tmux.conf ~/.zshrc ~/.gemrc ~/.curlrc ~/Desktop/repo/github.com/dotfiles"

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
