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

##### General Settings

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ludwig/.zshrc'

autoload -Uz compinit
compinit

### Directory color scheme
test -r ~/.dir_colors/dir_colors && eval $(dircolors ~/.dir_colors/dir_colors)

### Alias
[ -f "${XDG_CONFIG_HOME}/zsh/aliases" ] && source "${XDG_CONFIG_HOME}/zsh/aliases"
#source ~/.config/zsh/aliases

### Keybindings
# History substring search options
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

##### Plugins & Scripts

### Plugins
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

### Web search pluglins
source ~/.config/zsh/plugins/open_command.zsh
source ~/.config/zsh/plugins/urlencode.zsh
source ~/.config/zsh/plugins/web-search.plugin.zsh
source ~/.config/zsh/plugins/dirhistory.plugin.zsh

### Scripts
[ -f "${XDG_CONFIG_HOME}/zsh/plugins/ssh_agent.zsh" ] && source "${XDG_CONFIG_HOME}/zsh/plugins/ssh_agent.zsh"
#source ~/.config/zsh/plugins/ssh_agent.zsh
