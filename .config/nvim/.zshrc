# Paths 
export ZSH="$HOME/.oh-my-zsh"

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi



#export PATH=$HOME/.local/bin:$PATH
export VISUAL=nvim
export EDITOR=nvim


# Aliases
alias ni="npm install"
alias ns="npm start"
alias next="npm run dev"
alias home='$HOME'
alias rzsh='source .zshrc'
alias l='exa -lbF --git'
alias rtmux='tmux source .tmux.conf'
#alias vim='nvim'
alias v='nvim $(fzf)'
alias q='tmux kill-serve'
alias f='ranger'
alias vz='vim ~/.zshrc'
alias vconfig='ranger ~/.config/nvim'
alias git='lazygit'
alias t='tmux attach || tmux new -s 1'
alias ll='exa -l -g --icons'

bindkey -s '^g' 'lazygit^M' 




# Theme
# ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="spaceship"

section_mysection() {
  SPACESHIP_PROMPT_ADD_NEWLINE:false
}


# Plugins
plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-z
    zsh-aliases-exa
    #fzf-zsh-plugin
)

eval "$(starship init zsh)"

source $ZSH/oh-my-zsh.sh



#NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
