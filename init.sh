
# brewの確認
brew --version
if [ $? -eq 0 ]
then
  echo 入ってる
else
  echo 入ってない
  #brew install
fi

# zshの確認
brew list zsh
if [ $? -eq 0 ]
then
  echo 入ってる
else
  echo 入ってない
fi

# tmuxの確認
brew list tmux
if [ $? -eq 0 ]
then
  echo 入ってる
else
  echo 入ってない
fi

# git clone
brew list git
if [ $? -eq 0 ]
then
  echo 入ってる
else
  echo 入ってない
fi

# symbolic link


