# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
#ZSH_THEME="half-life"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
plugins=(git autojump)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR=~/.nvm

export NODE_PATH=/usr/local/lib/node_modules

export SASS_BINARY_SITE=http://npm.sankuai.com/dist/node-sass/
export NVM_NODEJS_ORG_MIRROR=http://npm.sankuai.com/dist/node
export NODEJS_ORG_MIRROR=http://npm.sankuai.com/dist/node

export MAVEN_OPTS='-Xmn400m -Xms1024m -Xmx1024m -Xss1m -XX:PermSize=384m -XX:MaxPermSize=384m'

alias mci='mvn clean install'
alias jrun='mvn jetty:run'
alias garun='mvn jetty:run -Djetty.port=9090 -Dfile.encoding=UTF-8 -Dmedis_environment=test'
alias drun='mvn jetty:run -Dcore.zookeeper=sgconfig-zk.sankuai.com:9331 -Dmedis_environment=test'
alias e='exit'
alias c='clear'
alias cls='clear'
alias pjetty='ps aux | grep jetty'
alias pag="ps aux | grep"
alias pys='python -m SimpleHTTPServer'
alias mnpm="npm --registry=http://r.npm.sankuai.com --cache=$HOME/.npm/.cache/mnpm --userconfig=$HOME/.mnpmrc"
alias sshdev='ssh linye@dev.sankuai.com'
alias lrelay='ssh linye@relay.sankuai.com'
alias ldev='expect ~/.ldev.sh'
alias babel6='babel-node --presets es2015'
alias babel7='babel-node --presets stage-0'

alias ali='expect ~/.lali.sh'

[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh


export NVM_DIR="/Users/linye/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


# for hexo
alias hg='hexo generate'
alias hc='hexo clean'
alias hd='hexo deploy'

alias gcam='git commit -am'
alias gdiff='git diff'
alias gpmaster='git push origin $(git_current_branch):master'

