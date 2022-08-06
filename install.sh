git submodule init
git submodule update
cp -r .vim* ~
mkdir ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
mkdir -p ~/.vimrc/color/
cp atom.vim ~/.vimrc/color/
vim +NeoBundleInstall +qall
