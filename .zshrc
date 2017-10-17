# Path to your oh-my-zsh installation.
export ZSH=/Users/jamie/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# nanotech
ZSH_THEME="honukai"

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
plugins=(git docker)

# User configuration
export EDITOR='vim'
export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin"

# Fix FZF - ignore .gitgnore files
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Aliases
#
alias ls='ls -lhaG -o -g'
alias src='cd ~/Source'
alias config='$EDITOR ~/.zshrc'
alias sync='echo "Syncing zshrc config" && source ~/.zshrc'
alias mux="tmuxinator"

# Node Version Manager
#
export NVM_DIR="/Users/jamie/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

setopt RM_STAR_WAIT

# Go
export GOPATH=$HOME/Source/go
export PATH=$PATH:$GOPATH/bin

# Yarn
export PATH="$HOME/.yarn/bin:$PATH"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Nice aliases for package.json
alias v="cat package.json | jq .version"
alias s="cat package.json | jq .scripts"
alias p="cat package.json | jq --sort-keys"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/jamie/Source/pull-request-reminder/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/jamie/Source/pull-request-reminder/node_modules/tabtab/.completions/serverless.zsh

# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/jamie/Source/pull-request-reminder/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/jamie/Source/pull-request-reminder/node_modules/tabtab/.completions/sls.zsh


BASE16_SHELL=$HOME/Source/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias vi='/Applications/MacVim.app/Contents/MacOS/Vim'

[[ $TMUX = "" ]] || export TERM="xterm-256color"

PURE_PROMPT_SYMBOL=λ

autoload -U promptinit; promptinit
prompt pure
