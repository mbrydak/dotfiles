eval "$(zoxide init bash)"

if command -v fzf-share >/dev/null; then
  source "$(fzf-share)/key-bindings.bash"
  source "$(fzf-share)/completion.bash"
fi

eval "$(direnv hook bash)"

# Use bash-completion, if available
#[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
#    . /usr/share/bash-completion/bash_completion
export KUBECONFIG="/home/max/code/test/cntm/k3s.yaml"
