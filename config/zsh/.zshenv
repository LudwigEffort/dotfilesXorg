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

# Theme
eval "$(starship init zsh)"

# Icons
[ -f "${XDG_CONFIG_HOME}/zsh/icons.txt" ] && source "${XDG_CONFIG_HOME}/zsh/icons.txt"

# Default Software & Apps
export TERMINAL="alacritty"

# XDG Paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export USR_SHARE=${USR_SHARE:="/usr/share"}

export ZDOTDIR="$HOME/.config/zsh/"

# Paths
export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
