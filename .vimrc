syntax on
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set number

" Font Setting
set guifont=FiraCode-Retina:14
colorscheme Tomorrow-Night

" Add right bracket automatically
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>



" Check if dein is installed
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  
  let g:rc_dir = expand('~/.vim/dein')
  let s:toml = g:rc_dir . '/dein.toml'
  
  call dein#load_toml(s:toml,{'lazy':0})


  
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif


filetype plugin indent on
syntax enable
