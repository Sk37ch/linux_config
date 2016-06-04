" BEGIN VUNDLE
set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on
" END VUNDLE

" BEGIN EASY MOTION (VUNDLE PLUGIN)
let mapleader = " "
let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
let g:EasyMotion_leader_key  ='<leader>'
let g:EclimCompletionMethod = 'omnifunc'
"map <Leader> <Plug>( )
" END EASY MOTION

"nerdtree
map <leader>k :NERDTreeToggle<CR>

set backspace=2
syntax on;
set number
set expandtab
set tabstop=4
abb pppp #/usr/bin/python
set incsearch "increment search

" When started as "evim", evim.vim will already have done these settings.
"if v:progname =~? "evim"
"  finish
"endif

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

set tabstop=2       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=2    " Indents will have a width of 4
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

"abbreviations
"iab psvm public static void main(String [] args) {<CR>
"\
"\<CR>}
"iab { {<CR>
"\<CR>
"\}
iab sout System.out.println("");<left><left><left>

" If you prefer the Omni-Completion tip window to close when a selection is
" " made, these lines close it on movement in insert mode or when leaving
" " insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
