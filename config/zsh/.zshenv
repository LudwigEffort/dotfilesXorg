#############################################################
#                                                           #
#    ███████╗███████╗██╗  ██╗███████╗███╗   ██╗██╗   ██╗    #
#    ╚══███╔╝██╔════╝██║  ██║██╔════╝████╗  ██║██║   ██║    #
#      ███╔╝ ███████╗███████║█████╗  ██╔██╗ ██║██║   ██║    #
#     ███╔╝  ╚════██║██╔══██║██╔══╝  ██║╚██╗██║╚██╗ ██╔╝    #
#    ███████╗███████║██║  ██║███████╗██║ ╚████║ ╚████╔╝     #
#    ╚══════╝╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═══╝  ╚═══╝      #
#                                                           #
#############################################################

########## Theme ##########

### Starship Prompt
eval "$(starship init zsh)"

### Icons
[ -f "${XDG_CONFIG_HOME}/zsh/icons.txt" ] && source "${XDG_CONFIG_HOME}/zsh/icons.txt"

########## Software & Apps ##########

### Default
export TERMINAL="alacritty"
export EDITOR="emacsclient -t -a ''"
export VISUAL="emacsclient -t -a ''"
export BROWSER="firefox"
#export VIDEO="mpv"
export IMAGE="nsxiv"

# Emacs
export PATH="$HOME/.emacs.d/bin:$PATH"

### Manpager
export MANPAGER="less -R --use-color -Dd+r -Du+b"
#export MANPAGER="sh -c 'col -bx | bat -l man -p'"

########## Paths ##########

# Adds ~/.local/bin and subfolders to $PATH
export PATH="$HOME/.local/bin:$PATH"

# XDG Paths
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_STATE_HOME=${XDG_DATA_HOME:="$HOME/.local/state"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}

# USR Paths
export USR_SHARE=${USR_SHARE:="/usr/share"}

# Cleaning up home folder
