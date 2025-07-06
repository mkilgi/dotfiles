# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias gh="cd /mnt/e/Documents/GitHub"

ZSH_HIGHLIGHT_STYLES[precommand]='fg=112'
ZSH_HIGHLIGHT_STYLES[command]='fg=112'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=112'
ZSH_HIGHLIGHT_STYLES[function]='fg=112'
ZSH_HIGHLIGHT_STYLES[alias]='fg=112'

setopt NO_BEEP

# Make directories more visible
zstyle ':completion:*:default' list-colors 'di=93:ln=35:so=32:pi=33:ex=31:bd=34:cd=34'
