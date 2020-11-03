# Nix
source /Users/nicksloan/.nix-profile/etc/profile.d/nix.sh

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' stagedstr '*'
zstyle ':vcs_info:git:*' unstagedstr '*'
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' check-for-staged-changes true
zstyle ':vcs_info:git:*' formats '%F{green}(%b%F{red}%u%F{yellow}%c%f%F{green})%f'

# Editor settings
export NVIM_TUI_ENABLE_TRUE_COLOR=1

alias vim=nvim
export EDITOR=nvim

# direnv
eval "$(direnv hook zsh)"

# vi mode
bindkey -v

# export PROMPT='%B%F{#00854b}%~%f%b » '
PROMPT='%B%F{blue}%~%f%b'\$vcs_info_msg_0_' » '

fpath+="/Users/nicksloan/.nix-profile/share/zsh/site-functions/"

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle :compinstall filename '/Users/nicksloan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export NVIM_TUI_ENABLE_TRUE_COLOR=1

source /Users/nicksloan/.nix-profile/etc/profile.d/nix.sh

export PATH="/usr/local/opt/python/libexec/bin:$PATH"
