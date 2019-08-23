#setting some export and paths
export TERM="xterm-256color"
PATH=$HOME/.python-color:$PATH
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin/:$PATH"
PATH=$PATH:$HOME/.npm-global/bin
PATH=$PATH:$HOME/.dots/scripts
export PATH

eval "$(rbenv init -)"
export EDITOR=nvim


# set iterm theme on load to make sure it is the correct one
yeetusdeletus=$(cat ~/.theme/currentTheme)

if [[ $yeetusdeletus == light ]]
then
	printf "\033]50;SetProfile=light\a"
elif [[ $yeetusdeletus == dark ]]
then
	printf "\033]50;SetProfile=dark\a"
elif [[ $yeetusdeletus == palenight ]]
then
	printf "\033]50;SetProfile=palenight\a"
fi

# common prompt https://github.com/jackharrisonsherlock/common
source ~/.config/zsh/rare/rare.zsh-theme


#aliases for useful things
alias pyd="cd ~/Documents/programming/Python\ Stuff/"
alias ls="colorls --sd"
alias la="colorls -a --sd"
alias lt="colorls --gs --tree"
alias git=hub
alias py="python-color"
alias pip="pip3"
alias pd="cd ~/Documents/programming"