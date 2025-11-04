ZSH_THEME_GIT_PROMPT_PREFIX="%F{cyan}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%f"
#ZSH_THEME_GIT_PROMPT_CLEAN="%F{green}⬤%f"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%F{red}±%f"
ZSH_THEME_GIT_PROMPT_EQUAL_REMOTE="="
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE=">"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="<"

function git_prompt_info() {
  local ref
  if [[ "$(__git_prompt_git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]; then
    ref=$(__git_prompt_git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(__git_prompt_git rev-parse --short HEAD 2> /dev/null) || return 0
    echo "$(parse_git_dirty) $ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

PROMPT='%F{cyan}%2~%f %F{blue}››%f%(?.%F{green}›.%F{red}%?)%f '
RPS1='$(git_prompt_info) %F{blue}%m%f'
