if status is-interactive
	# Commands to run in interactive sessions can go here
end


starship init fish | source
fzf --fish | source
zoxide init --cmd cd fish | source

function cd
  builtin cd $argv; and ls
end

alias blank="clear; cat >/dev/null"
alias ls="ls -aF --color"
alias sesh-start="sesh connect (sesh list -i | gum filter --limit 1 --placeholder 'quickstart' --prompt='⚡')"
# alias ssh="TERM=xterm-256color ssh"

# to use nvm - use zsh instead (fish isn't posix compliant)
#export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

set -U fish_greeting ""

# run neofetch at start
if test "$TERM" = "alacritty";
  # fastfetch
  sesh connect "$(sesh list -i | gum filter --limit 1 --placeholder 'quickstart' --prompt='⚡')"
end
