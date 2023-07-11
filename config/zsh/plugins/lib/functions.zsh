function open_command() {
  local open_cmd

  # define the open command
  case "$OSTYPE" in
    darwin*)  open_cmd='open' ;;
    cygwin*)  open_cmd='cygstart' ;;
    linux*)   [[ "$(uname -r)" != *icrosoft* ]] && open_cmd='nohup xdg-open' || {
                open_cmd='cmd.exe /c start ""'
                [[ -e "$1" ]] && { 1="$(wslpath -w "${1:a}")" || return 1 }
              } ;;
    msys*)    open_cmd='start ""' ;;
    *)        echo "Platform $OSTYPE not supported"
              return 1
              ;;
  esac

  # If a URL is passed, $BROWSER might be set to a local browser within SSH.
  # See https://github.com/ohmyzsh/ohmyzsh/issues/11098
  if [[ -n "$BROWSER" && "$1" = (http|https)://* ]]; then
    "$BROWSER" "$@"
    return
  fi

  ${=open_cmd} "$@" &>/dev/null
}
