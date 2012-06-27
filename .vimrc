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
NeoBundle 'msanders/snipmate.vim'

" scroll jump
set sj=1
" scroll off
set so=6

set  wildmode=longest,list
set  wildignore+=*.o,*.a,*.so,*.obj,*.exe,*.lib,*.ncb,*.opt,*.plg,.svn,.git
" set wildoptions
set  winaltkeys=no

set et
set sw=3
set ts=3
set sts=3

set modeline
set mat=15
set ignorecase
set smartcase
set ruler is nowrap ai si hls sm bs=indent,eol,start 
set ff=unix

" encoding solutions
set fencs=utf-8,big5,euc-jp,utf-bom,iso8859-1
set fenc=utf-8 enc=utf-8 tenc=utf-8

" save view
autocmd  BufWinLeave *.*			silent mkview
autocmd  BufWinEnter *.*			silent loadview

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

syntax on
set nu

