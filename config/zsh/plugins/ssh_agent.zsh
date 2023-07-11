# SSH Agent
# prevents the terminal from asking for the password at any time when ssh or git is used
# script reference https://wiki.archlinux.org/title/SSH_keys#SSH_agents

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
  ssh-agent -t 4h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! -f "$SSH_AUTH_SOCK" ]]; then
  source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi
