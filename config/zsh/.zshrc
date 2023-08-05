##################################################
#                                                #
#    ███████╗███████╗██╗  ██╗██████╗  ██████╗    #
#    ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝    #
#      ███╔╝ ███████╗███████║██████╔╝██║         #
#     ███╔╝  ╚════██║██╔══██║██╔══██╗██║         #
#    ███████╗███████║██║  ██║██║  ██║╚██████╗    #
#    ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝    #
#                                                #
##################################################

########## General Settings ##########

# Lines configured by zsh-newuser-install
HISTFILE="${XDG_CONFIG_HOME}/zsh/.histfile"
HISTSIZE=10000
SAVEHIST=10000

autoload -Uz compinit
compinit

# Directory color scheme ?
test -r ~/.dir_colors/dir_colors && eval $(dircolors ~/.dir_colors/dir_colors)

##### Alias
[ -f "${XDG_CONFIG_HOME}/zsh/aliases" ] && source "${XDG_CONFIG_HOME}/zsh/aliases"

########## Plugins ##########

# From repository
[ -f "${USR_SHARE}/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ] && source "${USR_SHARE}/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
[ -f "${USR_SHARE}/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" ] && source "${USR_SHARE}/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
[ -f "${USR_SHARE}/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh" ] && source "${USR_SHARE}/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh"

# From github
[ -f "${XDG_CONFIG_HOME}/zsh/plugins/lib/functions.zsh" ] && source "${XDG_CONFIG_HOME}/zsh/plugins/lib/functions.zsh"
[ -f "${XDG_CONFIG_HOME}/zsh/plugins/urlencode.zsh" ] && source "${XDG_CONFIG_HOME}/zsh/plugins/urlencode.zsh"
[ -f "${XDG_CONFIG_HOME}/zsh/plugins/web-search.plugin.zsh" ] && source "${XDG_CONFIG_HOME}/zsh/plugins/web-search.plugin.zsh"
[ -f "${XDG_CONFIG_HOME}/zsh/plugins/dirhistory.plugin.zsh" ] && source "${XDG_CONFIG_HOME}/zsh/plugins/dirhistory.plugin.zsh"

# Scripts
[ -f "${XDG_CONFIG_HOME}/zsh/plugins/ssh_agent.zsh" ] && source "${XDG_CONFIG_HOME}/zsh/plugins/ssh_agent.zsh"

########## Keybindings ##########

### History substring search options

#bindkey -e

# Bind arrow keys
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Bind vim keys (in conflict with vterm from emacs)
#bindkey '^j' history-substring-search-up
#bindkey '^k' history-substring-search-down
