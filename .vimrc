" Required by neobundle
set nocompatible
filetype off
filetype plugin indent off

" Load neobundle
if has('vim_starting')
   set runtimepath+=~/.vim/bundle/neobundle.vim/
   call neobundle#rc(expand('~/.vim/bundle/'))
endif

" Bundles
NeoBundle 'vim-scripts/L9'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'othree/vim-autocomplpop'
NeoBundle 'OmniCppComplete'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'honza/vim-snippets'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'vim-scripts/AutoFenc.vim'
NeoBundle 'myusuf3/numbers.vim'
NeoBundle 'stephpy/vim-php-cs-fixer'

" scroll jump
set sj=1
" scroll off
set so=6

set  wildmode=longest,list
set  wildignore+=*.o,*.a,*.so,*.obj,*.exe,*.lib,*.ncb,*.opt,*.plg,.svn,.git
" set wildoptions
set  winaltkeys=no

" enpandtab: use space instead of tab
set et

" shiftwidth: number of space for indentation
set sw=4
set ts=4
set sts=4

" show tabs as arrows
set list
set listchars=tab:>-,trail:·

set modeline
set mat=15
set ignorecase
set smartcase
set ruler is nowrap ai si hls sm bs=indent,eol,start 

" set file format to Unix
set ff=unix

" encoding solutions
set fencs=utf-8,big5,euc-jp,utf-bom,iso8859-1
set fenc=utf-8 enc=utf-8 tenc=utf-8

" Syntax highlight
syntax on
"highlight Pmenu ctermbg=5 ctermfg=7
"highlight PmenuSel ctermbg=13 ctermfg=14 gui=bold
highlight Pmenu ctermbg=8 ctermbg=127
highlight PmenuSel ctermbg=21 ctermbg=7 gui=bold guifg=white
highlight PmenuSbar ctermfg=8
"highlight PmenuThumb


" support 256 colors
set t_Co=256
colorscheme atom

" Show line numbers
set nu

" show cursorline
set cursorline

" larger register ("<"), default on others
set viminfo='100,<500,s10,h

" save view
autocmd  BufWinLeave *.*			silent mkview
autocmd  BufWinEnter *.*			silent loadview

" key map leader
let mapleader=','

" easytab
nm			<tab> v>
nm			<s-tab> v<
xmap		<tab> >gv
xmap		<s-tab> <gv

" command mode mapping:
" command line jump to head , end
cm      <c-a>   <home>
cm      <c-e>   <end>

" back one character:
cno  <c-b>      <left>
cno  <c-d>      <del>
cno  <c-f>      <right>
cno  <c-n>      <down>
cno  <c-p>      <up>

com! -bang -nargs=? QFix cal QFixToggle(<bang>0)
fu! QFixToggle(forced)
  if exists("g:qfix_win") && a:forced == 0
    cclose
    unlet g:qfix_win
  else
    copen 10
    let g:qfix_win = bufnr("$")
  en
endf   
nn      <leader>q :QFix<cr>

" OmniCompl
setl omnifunc=nullcomplete#Complete
autocmd FileType * setl omnifunc=nullcomplete#Complete
autocmd FileType python setl omnifunc=pythoncomplete#Complete
autocmd FileType javascript setl omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html setl omnifunc=htmlcomplete#CompleteTags noci
autocmd FileType css setl omnifunc=csscomplete#CompleteCSS noci
autocmd FileType xml setl omnifunc=xmlcomplete#CompleteTags
autocmd FileType php setl omnifunc=phpcomplete#CompletePHP
autocmd FileType c setl omnifunc=ccomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete


" TagList settings
let Tlist_Sort_Type = "name"     " sort by name
let Tlist_Exit_OnlyWindow = 1    " close tag list if there is no other windows
let tlist_php_settings='php;c:class;i:interfaces;d:constant;f:function' " do not show variable when open php files

" arrow alias key for autocomplpop
imap <C-J> <Down>
imap <C-K> <Up>
imap <C-L> <End>
imap <C-H> <Home>

" PHP Syntax Highlight
let php_sql_query = 1
let php_htmlInStrings = 1
let php_minlines = 3000
let php_baselib = 1
let php_asp_tags = 1

" paste mode
nnoremap <silent> <F9> :set paste<CR>
nnoremap <silent> <F10> :set nopaste<CR>

" shotkey let PHP check syntax for current filet
nmap <C-P> :!php -l %<CR>
nmap <leader>e :!php %<CR>

" vim-php-cs-fixer settings
let g:php_cs_fixer_path = "~/devel/phpcs-fixer/php-cs-fixer.phar"
let g:php_cs_fixer_level = "psr2"
let g:php_cs_fixer_config = "default"
let g:php_cs_fixer_php_path = "php"
"let g:php_cs_fixer_fixers_list = "linefeed,short_tag,indentation"
"let g:php_cs_fixer_enable_default_mapping = 1
let g:php_cs_fixer_dry_run = 0
let g:php_cs_fixer_verbose = 1

" php-cs-fixer mapping
nmap <leader>pcd :call PhpCsFixerFixDirectory()<CR>
nmap <leader>pcf :call PhpCsFixerFixFile()<CR>
nmap <leader>pcc :!phpcs %<CR>

