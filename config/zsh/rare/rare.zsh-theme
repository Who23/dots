# vim: filetype=sh

# Prompt symbol
COMMON_PROMPT_SYMBOL="❯"

# Colors
COMMON_COLORS_HOST_ME=green
COMMON_COLORS_HOST_AWS_VAULT=yellow
COMMON_COLORS_CURRENT_DIR=blue

COMMON_COLORS_RETURN_STATUS_TRUE=yellow
COMMON_COLORS_RETURN_STATUS_FALSE=red

COMMON_COLORS_GIT_STATUS_STAGED=green
COMMON_COLORS_GIT_STATUS_UNSTAGED=yellow
COMMON_COLORS_GIT_STATUS_UNTRACKED=red
COMMON_COLORS_GIT_STATUS_AHEAD=cyan
COMMON_COLORS_GIT_STATUS_BEHIND=magenta

COMMON_COLORS_BG_JOBS=yellow



# Load vcs_info 
autoload -Uz vcs_info


# Host
common_host() {
  if [[ -n $SSH_CONNECTION ]]; then
    me="%n@%m"
  elif [[ $LOGNAME != $USER ]]; then
    me="%n"
  fi
  if [[ -n $me ]]; then
    echo "%{$fg[$COMMON_COLORS_HOST_ME]%}$me%{$reset_color%}:"
  fi
  if [[ $AWS_VAULT ]]; then
    echo "%{$fg[$COMMON_COLORS_HOST_AWS_VAULT]%}$AWS_VAULT%{$reset_color%} "
  fi
}

# Current directory
common_current_dir() {
  echo -n "%F{$COMMON_COLORS_CURRENT_DIR}%c "
}

# Prompt symbol
common_return_status() {
  echo -n "%(?.%F{$COMMON_COLORS_RETURN_STATUS_TRUE}.%F{$COMMON_COLORS_RETURN_STATUS_FALSE})$COMMON_PROMPT_SYMBOL%f "
}

### Git status
setopt prompt_subst
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' check-for-changes true
zstyle ':vcs_info:git*' use-prompt-escapes true
zstyle ':vcs_info:git*' stagedstr "%F{$COMMON_COLORS_GIT_STATUS_STAGED}●%f"
zstyle ':vcs_info:git*' unstagedstr "%F{$COMMON_COLORS_GIT_STATUS_UNSTAGED}●%f"

precmd() {
  if [[ -z $(git ls-files --other --exclude-standard -- $(git rev-parse --show-cdup 2>/dev/null) 2>/dev/null) ]]; then
      untracked=''
  else
      untracked="%F{$COMMON_COLORS_GIT_STATUS_UNTRACKED}●%f"
  fi

  # get commits ahead/behind
  if [ -d .git ]; then
    if [[ $(git remote) != "" ]]; then
      branch="$(git rev-parse --abbrev-ref HEAD)"
      behind="$(git rev-list --right-only --count $branch...origin/$branch)"
      ahead="$(git rev-list --left-only --count $branch...origin/$branch)"

      if [[ $ahead -ne 0 ]]; then
        ahead="%F{$COMMON_COLORS_GIT_STATUS_AHEAD}↑$ahead%f"
      else
        ahead=""
      fi

      if [[ $behind -ne 0 ]]; then
        behind="%F{$COMMON_COLORS_GIT_STATUS_BEHIND}↓$behind%f"
      else
        behind=""
      fi
    fi
  fi

  zstyle ':vcs_info:git*' formats "%b%c%u$untracked%{$reset_color%} $ahead$behind"
  zstyle ':vcs_info:git*' actionformats "(%a|%b)%c%u$untracked%{$reset_color%} $ahead$behind"
  vcs_info
}

# Background Jobs
common_bg_jobs() {
  bg_status="%{$fg[$COMMON_COLORS_BG_JOBS]%}%(1j.↓%j .)"
  echo -n $bg_status
}

# Left Prompt
PROMPT="$(common_host)$(common_current_dir)$(common_bg_jobs)$(common_return_status)"

# Right Prompt
RPROMPT='${vcs_info_msg_0_}'
