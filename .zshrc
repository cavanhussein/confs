# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
#export PATH=/usr/local/opt/mysql-client/bin:$PATH
#export PATH=/Users/cavanhussein/Library/Python/3.9/bin/:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/cavanhussein/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="jnrowe"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_COMPFIX="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
autoload -Uz compinit
if [ "$(date +'%j')" != "$(stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)" ]; then
    compinit
else
    compinit -C
fi

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
source ~/.bash_profile
