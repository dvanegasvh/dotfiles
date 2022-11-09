# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Oh my posh config
eval "$(oh-my-posh init zsh)"
eval "$(oh-my-posh init zsh --config ~/main-theme.omp.json)"

 # Plugins
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  zsh-z
  zsh-aliases-exa
  fzf-zsh-plugin
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias ns="npm start"
alias next="npm run dev"
alias h="cd ~/"
alias ls="exa --icons"
alias ll="exa -l -g --icons"
alias lla="ll -a"
alias nt="npm run test"
alias t="~/./tmux-start.sh"
alias gc="lazygit"

# Keymaps
bindkey -s "^f" 'fzf^M'
bindkey -s "^n" 'nvim $(fzf)^M'

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
