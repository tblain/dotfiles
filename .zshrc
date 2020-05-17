# If you come from bash you might have to change your $PATH.
 export PATH=$HOME/bin:/usr/local/bin:$PATH # Path to your oh-my-zsh installation
 export ZSH="/home/tblain/.oh-my-zsh"
# Set name of the theme to load --- if set to "random", it will load a random theme each time oh-my-zsh is loaded, in which case, to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bullet-train"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.  CASE_SENSITIVE="true"
# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13 Uncomment the following line to disable colors in ls.
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
# You can set one of the optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd" or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  sudo
  extract
  z
  extract
  fasd
  history
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
#export LANG=en_US.UTF-8
#export LC_ALL=en_US.UTF-8
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

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

bindkey -e
bindkey '^[[1;3C' forward-word
bindkey '^[[1;3D' backward-word
bindkey '^[[3;5~' delete-word
bindkey '^H' backward-delete-word
# alias nvim
alias n=nvim
alias nzsh="n ~/.zshrc"
alias ni3="n ~/.config/i3/config"
alias nnvim="n ~/.config/nvim/init.vim"

alias szsh="source ~/.zshrc"

# alias duplication de terminal
alias dup="nohup termite 'echo pwd'&"

#alias vf="vim $(fzf)"

alias l="exa -l"
alias suspendre="systemctl suspend"

#cd neural_network alias cd
alias cdpro="cd ~/Document/projets_persos"
alias cdproal="cdpro; cd artificial_life_world"
alias cdprodem="cdpro; cd ia_demineur"
alias cdproneur="cdpro; cd neural_network"

alias cdm1="cd ~/Document/cours/M1"
alias cdgl="cdm1; cd GL/m1if01-2019/cv-search/"
alias cdpa="cdm1; cd M1ProgAvance"
alias cdbd="cdm1; cd bd/tp1/mif04-gdw-tp-orm/ "
alias cdia="cdm1; cd ia/ "
alias cdweb="cdm1; cd web/conception_web"
alias cdmilf="cdm1; cd multimif/m1if10/webapp"
alias cdres="cdm1; cd reseau"
alias cdcomp="cdm1; cd compil"
alias cdero="cdm1; cd ero"
alias cdsynt="cdm1; cd synthese"
alias cdanal="cdm1; cd analyse_image"

source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

neofetch

. /home/tblain/anaconda3/etc/profile.d/conda.sh

export EDITOR='nvim'
export SUDO_EDITOR='nvim'

JAVA_HOME='/usr/lib/jvm/java-11-openjdk'
export JAVA_HOME
export PATH=$PATH:$JAVA_HOME/bin
export XDG_CONFIG_HOME=$HOME/.config

xset r rate 150 50

export TERM='xterm-256color'

# NN
export NNN_DE_FILE_MANAGER=thunar
export NNN_USE_EDITOR=1
