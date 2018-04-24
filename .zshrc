
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export PATH="$HOME/.rbenv/bin:$PATH" 
eval "$(rbenv init - zsh)"

# bibtexのパスの設定
export BSTINPUTS=$BSTINPUTS:/usr/share/texmf/jbibtex/bst
export PATH="$PATH:/usr/local/Cellar/openssl/1.0.2/bin"
export PATH="$HOME/.rbenv/shims:$PATH"
# powerline関連のもののパスを通す

# android sdkのパス
export PATH="$PATH:/Users/Banaoh/Library/Android/sdk/platform-tools"

setopt share_history
ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

# ディレクトリ名だけでも移動可能
setopt auto_cd
alias cdw="cd /Users/Banaoh/Development/WebApp"
alias cdws="cd /Users/Banaoh/Development/WebApp/sake"
alias cddi="cd /Users/Banaoh/Development/Internship"
alias cddiv="cd /Users/Banaoh/Development/Internship/vagrant"
alias cdwr="cd /Users/Banaoh/Development/WebApp/rebecca"
alias cdir="cd /Users/Banaoh/Development/iPhoneAPP/rebbeca_ios"
alias cdi="cd /Users/Banaoh/Development/iPhoneAPP/"
alias c="clear"
alias la="ll -a"


# git branchの設定
# RPROMPで%{%}でくくらないとバグる
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }

PROMPT='%F{cyan}[%~]%f %(?.$.%F{red}$%f)'
RPROMPT='${vcs_info_msg_0_}'

# zsh-plugin---------------
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "b4b4r07/enhancd", use:init.sh
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"

if ! zplug check --verbose; then
  printf 'Install? [y/N]: '
  if read -q; then
    echo; zplug install
  fi
fi

zplug load --verbose
# -------------------------

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PATH=/Users/banaoh/.pyenv/shims:/Users/banaoh/.pyenv/bin:/usr/local/Cellar/zplug/2.4.1/bin:/usr/local/opt/zplug/bin:/Users/banaoh/Library/Python/2.7/lib/python/site-packages/powerline:/Users/banaoh/.rbenv/shims:/Users/banaoh/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/Library/TeX/texbin:/usr/local/Cellar/openssl/1.0.2/bin:/Users/Banaoh/Library/Android/sdk/platform-tools:~/.local/bin
