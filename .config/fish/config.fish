set fish_greeting ""
set -gx TERM xterm-256color
set -gx EDITOR nvim
# command -qv nvim && alias vim nvim
set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -Ux EDITOR vim

# bind \cg 'lazygit'
bind \cn 'nvim $(fzf)'
bind \cf 'fzf'
bind \cl 'clear; commandline -f repaint'
bind \cy accept-autosuggestion execute
bind \ct '~/./tmux-start.sh'
alias next 'npm run dev'
alias ns 'npm start'
# alias code 'code-insiders'
alias home "cd ~/"
alias ni 'npm i'
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias g git
alias t "~/./tmux-start.sh"
alias dot "cd $HOME/dotfiles"
alias py "python3"


if type -q exa
  alias ls "exa --icons"
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

# starship init fish | source

