# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Oh my posh config
# eval "$(oh-my-posh init zsh)"
# eval "$(oh-my-posh init zsh --config ~/main-theme.omp.json)"

ZSH_THEME="powerlevel10k/powerlevel10k"
 # Plugins
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  zsh-z
  zsh-aliases-exa
  fzf-zsh-plugin

)

# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=11'

# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=12,bold,underline"

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
# alias glog='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --decorate --date=short --color | head -n 20'
alias hist='git log --pretty=format:"%Cgreen%h %Creset%cd %Cblue[%cn] %Creset%s%C(yellow)%d%C(reset)" --graph --date=relative --decorate --all'
alias glog='git log --graph --name-status --pretty=format:"%C(red)%h %C(reset)(%cd) %C(green)%an %Creset%s %C(yellow)%d%Creset" --date=relative'

# # Keymaps
# bindkey -s "^f" 'fzf^M'
# bindkey -s "^n" 'nvim $(fzf)^M'

source $HOME/peco.zsh

# NVM
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
