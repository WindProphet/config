so ~/.exrc
syn on
set t_Co=256
hi NonText ctermfg=248
set laststatus=2 
set noswapfile
set nocompatible
set nowrap
set colorcolumn=80
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vundle Bundles
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'scrooloose/nerdtree'
Plugin 'jamessan/vim-gnupg'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'toyamarinyon/vim-swift'
Plugin 'rip-rip/clang_complete'

call vundle#end()
filetype plugin indent on

command Tree :execute 'NERDTreeToggle'
silent! nmap <C-p> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>
let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"
vmap <C-c> :w !pbcopy<CR><CR>

hi VertSplit term=none cterm=none gui=none
hi HoriSplit term=none cterm=none gui=none

hi User2 cterm=bold
set statusline=                                        " Override default
set statusline+=%2*\ %f\ %m\ %r%*                      " Show filename/path
set statusline+=%3*%=%*                                " Set right-side status info after this line
set statusline+=%4*%y\ %*
set statusline+=%5*%l/%L:%v%*                          " Set <line number>/<total lines>:<column>
set statusline+=%6*\ %*                                " Set ending space

au InsertEnter * hi User2 ctermfg=cyan
au InsertLeave * hi User2 ctermfg=black
imap <C-[> <Esc>
