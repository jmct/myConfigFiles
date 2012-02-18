" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim72/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

set number

set nocompatible
set incsearch
set scrolloff=3
set expandtab
set shiftwidth=4
set tabstop=4

<<<<<<< HEAD
syntax enable

if has('gui_running')
    colorscheme solarized
    set background=dark
endif
=======
syntax on
>>>>>>> 0cfe96dae53c8d0445148f57ab6768b33a02a102

imap kj <esc>
