eval "$(zoxide init bash)"

if command -v fzf-share >/dev/null; then
	source "$(fzf-share)/key-bindings.bash"
	source "$(fzf-share)/completion.bash"
fi

eval "$(direnv hook bash)"

# Use bash-completion, if available
#[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
#    . /usr/share/bash-completion/bash_completion
#
if ! shopt -oq posix; then
	if [ -f /usr/share/bash-completion/bash_completion ]; then
		. /usr/share/bash-completion/bash_completion
	elif [ -f /etc/bash_completion ]; then
		. /etc/bash_completion
	fi
fi

export PATH="$PATH:/usr/local/go/bin"

export LOCALPATH="$HOME/bin"
export PATH=$LOCALPATH:$PATH

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
export PATH=$PATH:/home/max/.linkerd2/bin
