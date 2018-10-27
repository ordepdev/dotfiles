source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Path to your oh-my-zsh installation.
export ZSH=/Users/pedro.tavares/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="lambda"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

if [ -f ~/.config/exercism/exercism_completion.zsh ]; then
    . ~/.config/exercism/exercism_completion.zsh
fi

source $ZSH/oh-my-zsh.sh

# Load a specific .env file -- usefull for testing things locally
loadenv() {
  export $(cat $1 | grep -v "^#" | xargs)
  echo "Exported variables from $1"
}

# Configure alias for dotfiles repository
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
