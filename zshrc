# Who23 Github

# setting some exports and paths
export TERM="xterm-256color"

PATH=$HOME/.python-color:$PATH
PATH="/usr/local/bin:/usr/local/sbin:/usr/bin/:$PATH"
PATH=$PATH:$HOME/.npm-global/bin
PATH=$PATH:$HOME/.dots/scripts
export PATH

eval "$(rbenv init -)"
export EDITOR=nvim

# remove % sign
unsetopt PROMPT_SP

# aliases for useful things
alias pyd="cd ~/Documents/programming/Python\ Stuff/"
# alias ls="colorls --sd"
# alias la="colorls -a --sd"
# alias lt="colorls --gs --tree"
alias git=hub
alias python="python3"
alias pip="pip3"
alias pd="cd ~/Documents/programming"

# starship prompt
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

# start tmux
if [ "$TMUX" = "" ]; then tmux; fi
export PATH="/usr/local/opt/python@3.8/bin:$PATH"
