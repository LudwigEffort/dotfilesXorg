# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ludwig/.zshrc'

autoload -Uz compinit
compinit

### SSH
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
  ssh-agent -t 4h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! -f "$SSH_AUTH_SOCK" ]]; then
  source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

##### Plugins

### Plugins
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

### Oh-my-zsh plugins
source ~/.config/zsh/plugins/prompt_info_functions.zsh

## Web search pluglins:w
source ~/.config/zsh/plugins/open_command.zsh
source ~/.config/zsh/plugins/urlencode.zsh
source ~/.config/zsh/plugins/web-search.plugin.zsh
source ~/.config/zsh/plugins/dirhistory.plugin.zsh

# Directory color scheme
test -r ~/.dir_colors/dir_colors && eval $(dircolors ~/.dir_colors/dir_colors)

### Theme
#source ~/.config/zsh/themes/half-life.zsh-theme
#source ~/.config/zsh/themes/af-magic.zsh-theme

## End of lines added by compinstall
#source ~/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


##### Alias
alias ls='ls -xFX --color=auto'
alias la='ls -axFX --color=auto'
alias ll='ls -hlFX --color=auto'
alias lla='ls -ahlFX --color=auto'
alias lfa="lf-ueberzug"

#alias mL7p='composer create-project --prefer-dist laravel/laravel:^7.0 .'
#alias emacs="emacsclient -c -a 'emacs'"

##### History substring search options
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Doom Emacs
export PATH="$HOME/.emacs.d/bin:$PATH"

### Setting the Starship Prompt 
eval "$(starship init zsh)"

### Python packages
export PATH="$HOME/.local/bin:$PATH"


