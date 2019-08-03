
#setting some export and paths
export TERM="xterm-256color"
PATH=$HOME/.python-color:$PATH
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin/:$PATH"
PATH=$PATH:$HOME/.npm-global/bin
PATH=$PATH:$HOME/.custom
export PATH

eval "$(rbenv init -)"
export EDITOR=nvim
# source $(dirname $(gem which colorls))/tab_complete.sh


#stop the % sign from showing
# unsetopt PROMPT_SP

# last_weather_settings=$(cat ~/.weather_settings.txt)
# IFS=' ' read -r WEATHER lastUpdated <<< $last_weather_settings
# flag=true

# zsh_weather(){
#   now=$(($(date +"%H") * 60 + $(date +"%M")))
# 	if  [ ${$(($now - $lastUpdated))#-} -ge 30 ] ; then
#     	  local DATE=$(date +'%Y/%m/%d/')
# 	      local latest_weather=$(curl -s "https://www.metaweather.com/api/location/2459269/${DATE}" | jq '.[0] | .weather_state_abbr')
#         case $latest_weather in
#           "\"sn\"") WEATHER="\ue30a ";;
#           "\"sl\"") WEATHER="\ue3ad ";;
#           "\"h\"") WEATHER="\ue314 ";;
#           "\"t\"") WEATHER="\ue31d ";;
#           "\"hr\"") WEATHER="\ue318 ";;
#           "\"lr\"") WEATHER="\ue306 ";;
#           "\"s\"") WEATHER="\ue319 ";;
#           "\"hc\"") WEATHER="\ue312 ";;
#           "\"lc\"") WEATHER="\ue302 ";;
#           "\"c\"") WEATHER="\ue30d ";;
#           # *) WEATHER="X";;
#         esac
#         flag=false
#         lastUpdated=$now
#         echo "$WEATHER $lastUpdated" > ~/.weather_settings.txt
#   fi
# echo $WEATHER
#}
#

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

# POWERLEVEL9K_CUSTOM_WEATHER_BACKGROUND=
# 'black'
# POWERLEVEL9K_CUSTOM_WEATHER_FOREGROUND='white'
#POWERLEVEL9K_CUSTOM_ICON_BACKGROUND='black'
#POWERLEVEL9K_CUSTOM_ICON_FOREGROUND='white'

#Command exec element
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='yellow'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='black'
POWERLEVEL9K_EXECUTION_TIME_ICON=$'\uf608'

#general prompt options
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
#bolded >>> but with diiff symbols.
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=$'%B%F{blue}>%F{magenta}>%F{blue}>%b%f '
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=$'%B%F{magenta}==>%b%f '
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0B8 '
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\uE0BE '
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true

# Dir options
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_beginning"
POWERLEVEL9K_DIR_HOME_BACKGROUND='blue'
POWERLEVEL9K_DIR_ETC_BACKGROUND='blue'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='blue'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='blue'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_ETC_ICON=''

# battery segment options
POWERLEVEL9K_BATTERY_LOW_FOREGROUND='black'
POWERLEVEL9K_BATTERY_LOW_BACKGROUND='red'
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='black'
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND='yellow'
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND='green'
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='black'
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='white'
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND='black'
POWERLEVEL9K_BATTERY_VERBOSE=false
POWERLEVEL9K_BATTERY_STAGES=($'\uf579' $'\uf57a' $'\uf57b' $'\uf57c' $'\uf57d' $'\uf57e' $'\uf57f' $'\uf580' $'\uf581' $'\uf578')
POWERLEVEL9K_BATTERY_HIDE_ABOVE_THRESHOLD=10


# VCS options
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='red'
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'
POWERLEVEL9K_VCS_COMMIT_ICON="\uf417"
POWERLEVEL9K_SHOW_CHANGESET=false
POWERLEVEL9K_CHANGESET_HASH_LENGTH=6
POWERLEVEL9K_VCS_SHORTEN_LENGTH=5
POWERLEVEL9K_VCS_SHORTEN_MIN_LENGTH=11
POWERLEVEL9K_VCS_SHORTEN_STRATEGY="truncate_from_left"
POWERLEVEL9K_VCS_SHORTEN_DELIMITER=".."
POWERLEVEL9K_VCS_GIT_ICON=''
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=''
POWERLEVEL9K_VCS_GIT_GITLAB_ICON=''
POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON=''
POWERLEVEL9K_HIDE_BRANCH_ICON=true

# background_jobs

# dir_writable
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND='blue'
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND='160'

# time
POWERLEVEL9K_TIME_FORMAT="%D{%M:%S}"
POWERLEVEL9K_TIME_FOREGROUND='black'
POWERLEVEL9K_TIME_BACKGROUND='magenta'
POWERLEVEL9K_TIME_ICON=''

# status
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='red'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='black'
POWERLEVEL9K_STATUS_OK_FOREGROUND='black'
POWERLEVEL9K_STATUS_OK_BACKGROUND='green'

# root indicator
# ZSH_THEME="powerlevel9k/powerlevel9k"


# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

#History file size
HISTSIZE=1000
SAVEHIST=1000

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

#aliases for useful things
alias pyd="cd ~/Documents/programming/Python\ Stuff/"
alias ls="colorls --sd"
alias la="colorls -a --sd"
alias lt="colorls --gs --tree"
alias git=hub
alias py="python-color"
alias pip="pip3"
alias pd="cd ~/Documents/programming"

#source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel9k/powerlevel9k.zsh-theme


POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator dir_writable dir_joined command_execution_time status battery)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
