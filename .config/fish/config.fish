set fish_greeting ""

set -gx TERM xterm-256color
# Theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias g git
alias t ~/./tmux-start.sh
alias h 'cd ~/'
alias ns "npm start"
alias next "npm run next"
alias ntest "npm run test"

command -qv nvim && alias vim nvim


set -gx EDITOR nvim
set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH node_modules/.bin $PATH


function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

