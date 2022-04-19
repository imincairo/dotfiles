# DIRCOLORS
d=/home/mike/XDG-DIRS/config/dircolors
eval "$(dircolors $d)"

# The following lines were added by compinstall
#zstyle ':completion:*' add-space false
#zstyle ':completion:*' auto-description '::%d::'
#zstyle ':completion:*' completer _list _oldlist _expand _complete _ignored _match _correct
#zstyle ':completion:*' completions 1
#zstyle ':completion:*' expand prefix suffix
#zstyle ':completion:*' file-sort modification 
#zstyle ':completion:*' format '::%d::'
#zstyle ':completion:*' glob 1
#zstyle ':completion:*' group-name ''
#zstyle ':completion:*' ignore-parents parent pwd directory
#zstyle ':completion:*' insert-unambiguous true
#zstyle ':autocomplete:tab:*' insert-unambiguous yes
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
#zstyle ':completion:*' list-prompt ::%S%P: Hit TAB for more%s::
#zstyle ':completion:*' list-suffixes true
#zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+r:|[._-]=* r:|=*'
#zstyle ':completion:*' match-original both
#zstyle ':completion:*' max-errors 2 numeric
#zstyle ':completion:*' menu select=1
#zstyle ':completion:*' old-menu false
#zstyle ':completion:*' original true
#zstyle ':completion:*' prompt '::%e::'
#zstyle ':completion:*' select-prompt ::%S%p%s::
#zstyle ':completion:*' substitute 1
#zstyle ':completion:*' verbose true
#zstyle ':completion:*' word true
#zstyle :compinstall filename '/home/mike/XDG-DIRS/config/zsh/zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install

HISTFILE=~/XDG-DIRS/.cache/histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt autocd beep extendedglob nomatch
bindkey -v
# End of lines configured by zsh-newuser-install

fpath+=/home/mike/XDG-DIRS/config/zsh/zsh_functions
fpath+=/home/mike/XDG-DIRS/config/zsh/zprompts
autoload -U promptinit
promptinit
prompt_mike_setup

# Aliases
alias ls="ls --color=always --group-directories-first --indicator-style=slash"
alias la="ls -A --color=always --group-directories-first --indicator-style=slash"
alias grep="grep --color=auto"
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
#alias vim='nvim'
alias vv='nvim'
#alias _vim='vim'
alias cl='clear'
#alias venv_start='source ./VENV/bin/activate'
alias -g sd='sudo '
#alias p='pacman'
alias pcm='pacman'
#alias pac-s='pacman -S'
#alias p-s='pacman -S'
## DOTFILES GIT ALIAS
alias config='/usr/bin/git --git-dir=$XDG_ROOT_HOME/.dotfiles/ --work-tree=$XDG_ROOT_HOME'

# Named Dirs
# c=/home/mike/.config
# : ~c
# Code=/home/mike/Code
# : ~Code

# cwd in window title
precmd() {print -Pn "\e]0;%~\a"}
