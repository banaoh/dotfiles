
# brewの確認
brew --version
if [ $? -eq 0 ]
then
  echo already installed homebrew
else
  echo brew install homebrew
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
  echo brew installed!!
fi

# zshの確認
brew list zsh
if [ $? -eq 0 ]
then
  echo already installed zsh
else
  echo brew install zsh
  brew install --without-etcdir zsh

  echo ログインシェルをzshにします
  echo -n "${MSG} [Y/N or y/n]: "
  read ans 
  case $ans in
    [yY]) 
      cat /usr/local/bin/zsh >> /etc/shells
      chsh -s /usr/local/bin/zsh
      echo $SHELL
      echo zshであればok

      echo oh-my-zshをインストール
      sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    [nN]) return 1 ;;
  esac
fi

# tmuxの確認
brew list tmux
if [ $? -eq 0 ]
then
  echo already installed tmux
else
  echo brew install tmux
  brew install tmux
fi

# git clone
brew list git
if [ $? -eq 0 ]
then
  echo already installed git
else
  echo brew install git
  brew install git
  echoo ins
fi

# symbolic link


