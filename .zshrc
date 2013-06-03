# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(bundler git history rails3 ruby)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Loading RVM
source ~/.rvm/scripts/rvm

# Open File with MacVim
alias mvim="open -a /Applications/MacVim.app"
