git submodule init
git submodule update
cp -r .vim* ~
mv atom.vim ~/.vimrc/color/
vim +NeoBundleInstall +qall
