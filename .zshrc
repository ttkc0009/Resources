autoload -Uz compinit && compinit
autoload -Uz colors

setopt auto_list
setopt auto_menu

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:default' menu select=1
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

setopt auto_cd
export LANG=ja_JP.UTF-8
HISTFILE=$HOME/.zsh-history
HISTSIZE=1000000
SAVEHIST=1000000

setopt share_history

### SET PROMPT
function left-prompt {
  FIRST='178m%}'
  FIRST_B='237m%}'
  SECOND='007m%}'
  SECOND_B='067m%}'
  sharp='\uE0B0'
  FG='%{^[[38;5;'
  BG='%{^[[30;48;5;'
  RESET='%{^[[0m%}'
  USER_AND_HOST="${BG}${FIRST_B}${FG}${FIRST}"
  DIR="${BG}${SECOND_B}${FG}${SECOND}"
  echo "${USER_AND_HOST}%n@%m${BG}${SECOND_B}${FG}${FIRST_B}${sharp} ${DIR}%~${RESET}${FG}${SECOND_B}${sharp} ${RESET}"
}

#PROMPT='`left-prompt`'
PROMPT='%F{green}%n%f%F{cyan}@%f%F{yellow}%c%f %% '

### command
alias ll='ls -l'

### Mac用設定
find ~/ -name ".DS_Store" -type f -ls -delete > /dev/null
