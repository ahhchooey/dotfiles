echo "Alex, welcome to ZSH."

# Path to your oh-my-zsh installation.
export ZSH="/Users/alexchui/.oh-my-zsh"

# Sets Cursor to Block
set -o vi

# History Config
HISTSIZE=1000000
HISTFILESIZE=-1
HISTCONTROL=ignoredups

# THEMES
# ZSH_THEME="powerlevel10k/powerlevel10k"
# Uncomment below when using powerlevel10k to use purepower config
# source ~/.purepower

# PURE THEME
autoload -U promptinit; promptinit
prompt pure

# PLUGINS
plugins=(git
zsh-syntax-highlighting
vi-mode
#aws
)
# Below Line Loads Plugins, Don't Move
source $ZSH/oh-my-zsh.sh

# Aliases
alias zshrc="nvim ~/.zshrc"
alias py="python3"
alias source_venv="source venv/bin/activate"
alias python_test_email='
  export MAIL_SERVER=localhost
  export MAIL_PORT=8025
  python -m smtpd -n -c DebuggingServer localhost:8025
  '
alias vimrc="vim ~/.vimrc"
alias source_vim="source ~/.vimrc"
alias nvimrc="nvim ~/.config/nvim/init.vim"
alias source_nvim="source ~/.config/nvim/init.vim"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# RBENV
#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"

# NVM
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# POSTGRESQL
PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"

