shell=`ps -p $$ | awk 'NR>1  {print $4}' | sed 's/-//g'`
SCRIPT_PATH="$HOME/.local/share/devbox/global/current"

case $(basename $shell) in
     "zsh" )
            . $DEVBOX_GLOBAL_ROOT/zsh/.zshrc
           ;;
     "bash" )
            . $DEVBOX_GLOBAL_ROOT/bash/.bashrc
           ;;
     * )
           ;;
esac

# zoxide
# zoxide for smart cd
alias cd='z'
# bat
# bat --plain for unformatted cat
alias catp='bat -P'
# replace cat with bat
alias cat='bat'
# devbox helpers
alias dbr='devbox run'
alias cddevbox='cd $DEVBOX_GLOBAL_ROOT'

alias ld='eza -lD'
alias lf='eza -lF --color=always | grep -v /'
alias lh='eza -dl .* --group-directories-first'
alias ll='eza -al --group-directories-first'
alias ls='eza -alF --color=always --sort=size | grep -v /'
alias lt='eza -al --sort=modified'


