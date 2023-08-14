# Created by newuser for 5.9

# Colors and stuff
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

#History
HISTSIZE=20000
SAVEHIST=20000
HISTFILE=/home/blank/.cache/zsh/history

#Bindkey
bindkey -e
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

# Basic auto tab
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)	

# Load aliases and shortcuts if existent.

[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

