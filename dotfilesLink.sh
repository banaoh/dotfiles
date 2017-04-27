T_FILES=(.vimrc .zshrc .tmux.conf .vim .gitconfig .gitignore)
for file in ${DOT_FILES[@]}
do
    ln -s ~/dotfiles/$file ~/$file
done

