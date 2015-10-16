set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'epmatsw/ag.vim'
Plugin 'kien/ctrlp.vim'
call vundle#end()
filetype plugin indent on

"ctrlp settings
let g:ctrlp_match_window = 'bottom.order:ttb,min:1,max:10,results:100'
let g:ctrlp_max_files = 0
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_clear_cache_on_exit = 0
set wildignore+=*/.git/*.*/.hg/*.*/.svn/*
let g:ctrlp_user_command = 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$"'
let g:ctrlp_use_caching = 1
let g:ctrlp_root_markers = ['.ctrlp']
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"GLobal settings
set ic
set number
set t_Co=256
colorscheme kolor
set title
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
