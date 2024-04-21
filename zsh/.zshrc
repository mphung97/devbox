# add devbox bits to zsh
fpath+=($DEVBOX_GLOBAL_PREFIX/share/zsh/site-functions $DEVBOX_GLOBAL_PREFIX/share/zsh/$ZSH_VERSION/functions $DEVBOX_GLOBAL_PREFIX/share/zsh/vendor-completions)

autoload -U compinit && compinit

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# initialize apps
# atuin
if [[ $options[zle] = on ]]; then
  eval "$(atuin init zsh )"
fi
# starship
eval "$(starship init zsh)"
# zoxide
eval "$(zoxide init zsh)"
# direnv
eval "$(direnv hook zsh)"
