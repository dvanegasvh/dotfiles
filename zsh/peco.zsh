function peco-history() {
  local tac
  if which tac > /dev/null; then
    tac="tac"
  else
    tac="tail -r"
  fi
  BUFFER=$(history -n 1 | eval $tac | awk '!a[$0]++' | peco --query "$LBUFFER")
  CURSOR=$#BUFFER
}

function peco-vim() {
  local file
  file=($(find . $1 -type f 2> /dev/null | peco))
  [[ -n "$file" ]] && vim "${file[@]}"
}

function peco-dir() {
  local dir
  dir=$(find ${1:-.} -maxdepth 4 -type d 2> /dev/null | peco) && cd "$dir" && 
  for precmd in $precmd_functions; do
    $precmd
  done
  zle reset-prompt
}

function kill-localhost(){
  local pid
  pid=$(lsof -i :3000 | peco | awk '{print $2}' | xargs kill -9)
}

function peco-git-pull() {
  local selected_branch=$(git branch --list | colrm 1 2 | peco)
    if [ -n "$selected_branch" ]; then
        BUFFER="git pull origin ${selected_branch}"
        zle accept-line
    fi
}

function peco-git-checkout () {
    local selected_branch=$(git branch --list | colrm 1 2 | peco)
    if [ -n "$selected_branch" ]; then
        BUFFER="git switch ${selected_branch}"
        zle accept-line
    fi
}

zle -N peco-history
zle -N peco-vim
zle -N peco-dir 
zle -N kill-localhost 
zle -N peco-git-pull
zle -N peco-git-checkout

bindkey '^f' peco-dir
bindkey '^r' peco-history
bindkey '^n' peco-vim
bindkey '^k' kill-localhost 
bindkey '^p' peco-git-pull
bindkey '^s' peco-git-checkout
