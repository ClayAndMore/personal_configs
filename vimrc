" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

set nu

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"Auto add head info
".py file into add header
function HeaderPython()
    "call setline(1,"#!/usr/bin/env python")
    "call append(1,"your want to set"
    call setline(1,"# -*- coding:utf-8 -*-")
    normal G
    normal o
endf
autocmd bufnewfile *.py call HeaderPython()

"set the vundle
set nocompatible 
filetype off 
set rtp+=/root/vimPlugin/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'klen/python-mode'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

"set the nerdtree
map<F1> :NERDTreeToggle<CR>
map<F2> :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1
nnoremap <C-l> gt
nnoremap <C-h> gT
"autocmd VimEnter * NERDTree

"set \ to ,<header>
"let mapleader=","

"set python-model
let g:pymode=0
let g:pytmode_warnings=1
let g:pymode_python='python'
"let g:pymode_indent=1
let g:pymode_syntax=1
"let g:pymode_options=1
let g:pymode_run=1
let g:pymode_run_bind='<leader>r'
let g:pymode_rope_completion = 1
let g:pymode_rope_completion_on_dot = 1


