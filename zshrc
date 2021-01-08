# Who23 Github
source /usr/local/opt/gitstatus/gitstatus.plugin.zsh
source ~/.config/zsh/gitstatus/mod_gitstatus.prompt.zsh

# setting some exports and paths
export TERM="xterm-256color"

PATH="/usr/local/bin:/usr/local/sbin:/usr/bin/:$PATH"
PATH=$PATH:$HOME/.npm-global/bin
PATH=$PATH:$HOME/.scripts
PATH="/usr/local/opt/python@3.8/bin":$PATH
PATH="~/.cargo/bin":$PATH
export PATH

# eval "$(rbenv init -)"
export EDITOR=nvim

# remove % sign
unsetopt PROMPT_SP

# aliases for useful things
alias pyd="cd ~/Documents/programming/Python\ Stuff/"
alias py="python3"
alias pip="pip3"
alias pd="cd ~/Documents/programming"

my_git_status() {
   echo $GITSTATUS_PROMPT
}

# geometry prompt
GEOMETRY_PATH_SHOW_BASENAME=true
GEOMETRY_PATH_COLOR="magenta"
GEOMETRY_RPROMPT=(geometry_exec_time my_git_status geometry_echo)
source ~/.config/zsh/geometry/geometry.zsh
# export STARSHIP_CONFIG=~/.config/starship/starship.toml
# eval $(starship init zsh)

# autocomplete
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# sensitive stuff can't be put in this file
source ~/.sensitive.sh

# start tmux
# if [ "$TMUX" = "" ]; then tmux; fi
# export PATH="/usr/local/opt/python@3.8/bin:$PATH"
