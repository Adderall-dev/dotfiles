# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.8

. $HOME/.asdf/asdf.sh
alias ls='ls -las'
alias mps="mix phx.server"
alias im="iex -S mix"
alias cdf='cd ~/doggo/repo'
alias cdg="cd ~/doggo/notorious-go"
alias cdm="cd ~/doggo/notorious-phoenix"
alias ys="yarn start"
export PATH="$HOME/.emacs.d/bin:$PATH"
alias cdmsd="cd ~/doggo/notorious-phoenix/; scripts/dev.edwin.sh"
alias cdrfa="cd ~/dev/mirai/lucid-rfa-client/; scripts/dev.script.sh"
alias cdd="cd ~/dev"
alias p="python "
alias vim="nvim"
export EDITOR="nvim"

ZSH_THEME="powerlevel10k/powerlevel10k"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

PS1=$'%{\e[92;1m%}%m%{\e[m%}:%{\e[96;1m%}%~%{\e[m%}$ '
export PATH="/opt/homebrew/opt/m4/bin:$PATH"
source ~/powerlevel10k/powerlevel10k.zsh-theme

# go notorius server env
export GO_ENV=DEVELOPMENT

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
