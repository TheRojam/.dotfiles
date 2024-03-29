ZSH_TMUX_AUTOSTART="true"
#zstyle :omz:plugins:ssh-agent identities id_ubernauten id_vebit_ed id_luniprise id_azuredevopMBP mac_uberspace id_macturris id_home.lab id_gitlab id_vebit discourse.test id_git id_stremote 
#zstyle :omz:plugins:ssh-agent identities id_ubernauten id_git id_gitlab id_hetzner 
#zstyle :omz:plugins:ssh-agent lifetime 1W 
# Path to your oh-my-zsh installation.
export ZSH=/Users/amueller/.oh-my-zsh

# source ~/.zplug/init.zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="vertepommes"

#. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

# Uncomment the following line to use case-sensitive completion.
 CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
#HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 #COMPLETION_WAITING_DOTS="true"

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
plugins=(macos sudo compleat docker terraform fzf brew git history zsh-autosuggestions)
#plugins=(git osx docker git git-extras history web-search sublime cp repo sbt emoji-clock rand-quote chucknorris compleat)

# User configuration

## vars for python path

export pyver="3.9"
export pysubver="3.9.1_3"

export GOPATH=$HOME/golang
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# $PATH vars
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/Library/Python/:$HOME/bin/"
# export MANPATH="/usr/local/man:$MANPATH"
# Path for tex live
export PATH=/Library/TeX/texbin:$PATH
export PATH="/usr/local/sbin:$PATH"
## python $pyver path
#export PATH="/uer/local/Cellar/python@$pyver/$pysubver/Frameworks/Python.framework/Versions/$pyver/bin"-

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias git='LANG=en_US.UTF-8 git'
alias pip="pip3"
#alias python='python3'
alias python="/usr/local/bin/python$pyver"
alias alint="ansible-lint"
alias mac="~/.tooling/mac-cli/mac"
alias ctags=/usr/local/bin/ctags

export NVM_DIR="/Users/amueller/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export HOMEBREW_GITHUB_API_TOKEN="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"
TERM_ENABLE_SHELL_INTEGRATION_WITH_TMUX=1
export gitpath=$HOME/git_repo

source $HOME/.vars

