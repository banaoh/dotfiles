
# Path to your oh-my-zsh installation.
export ZSH=/Users/Banaoh/.oh-my-zsh

# プロンプト
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*' max-exports 6 # formatに入る変数の最大数
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' formats '%b@%r' '%c' '%u'
zstyle ':vcs_info:git:*' actionformats '%b@%r|%a' '%c' '%u'
setopt prompt_subst
function vcs_echo {
    local st branch color
    STY= LANG=en_US.UTF-8 vcs_info
    st=`git status 2> /dev/null`
    if [[ -z "$st" ]]; then return; fi
    branch="$vcs_info_msg_0_"
    if   [[ -n "$vcs_info_msg_1_" ]]; then color=${fg[green]} #staged
    elif [[ -n "$vcs_info_msg_2_" ]]; then color=${fg[red]} #unstaged
    elif [[ -n `echo "$st" | grep "^Untracked"` ]]; then color=${fg[blue]} # untracked
    else color=${fg[cyan]}
    fi
    echo "%{$color%}(%{$branch%})%{$reset_color%}" | sed -e s/@/"%F{yellow}@%f%{$color%}"/
}
PROMPT='
%F{yellow}[%~]%f `vcs_echo`
%(?.$.%F{red}$%f) '


export PATH="$PATH:$HOME/.rbenv/bin"
eval "$(rbenv init - zsh)"

export PATH="$PATH:/usr/local/Cellar/openssl/1.0.2/bin"

# android sdkのパス
export PATH="$PATH:/Users/Banaoh/Library/Android/sdk/platform-tools"

setopt share_history

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# VCS settings
autoload -Uz vcs_info
precmd() {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    psvar[1]=$vcs_info_msg_0_
}
PROMPT=$'%2F%n@%m%f %3F%~%f%1v\n%# '

plugins=(git)


source $ZSH/oh-my-zsh.sh
source ~/.git-prompt.sh

# ディレクトリ名だけでも移動可能
setopt auto_cd

alias cdw="cd /Users/Banaoh/Development/WebApp"
alias cdws="cd /Users/Banaoh/Development/WebApp/sake"
alias cddi="cd /Users/Banaoh/Development/Internship"
alias cddir="cd /Users/Banaoh/Development/Internship/retty"
alias cddird="cd /Users/Banaoh/Development/Internship/retty_design"
alias cddiv="cd /Users/Banaoh/Development/Internship/vagrant"
alias cdwr="cd /Users/Banaoh/Development/WebApp/rebecca"
alias cdir="cd /Users/Banaoh/Development/iPhoneAPP/rebbeca_ios"
alias cdi="cd /Users/Banaoh/Development/iPhoneAPP/"
alias c="clear"

