# Features

Plugins installed:
 - [NeoBundle](https://github.com/Shougo/neobundle.vim)
 - [vim-l9](https://bitbucket.org/ns9tks/vim-l9/)
 - [neocomplcache](https://github.com/Shougo/neocomplcache)
 - [vim-autocomplpop](https://bitbucket.org/ns9tks/vim-autocomplpop/)
 - [OmniCppComplete](http://www.vim.org/scripts/script.php?script_id=1520)
 - [vim-snipmate](https://github.com/garbas/vim-snipmate)
   - [tlib_vim](https://github.com/tomtom/tlib_vim)
   - [vim-addon-mw-utils](https://github.com/MarcWeber/vim-addon-mw-utils)
   - [vim-snippets](https://github.com/honza/vim-snippets)
 - [zencoding-vim](https://github.com/mattn/emmet-vim)
 - [taglist.vim](http://www.vim.org/scripts/script.php?script_id=273)
 - [AutoFenc.vim](https://github.com/vim-scripts/AutoFenc.vim)
 - [vim-php-cs-fixer](https://github.com/stephpy/vim-php-cs-fixer)


# Requirements

You need Git and Mercurial installed first.


# Installation

    git clone https://github.com/johnroyer/vimrc.git
    chmod u+x install.sh
    ./install.sh

# Configuration

Some config need to change by yourself.

## vim-php-cs-fixer

Download [http://cs.sensiolabs.org/](php-cs-fixer). Find `g:php_cs_fixer_path` in .vimrc and point to the path php-cs-fixer installed.

There is key binding `<leader>pcc` for [PHP-CodeSniffer](http://pear.php.net/package/PHP_CodeSniffer/redirected). Install [PHP-CodeSniffer](http://pear.php.net/package/PHP_CodeSniffer/redirected) and change the path:

    sudo aptitude install phpcs
