call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'sainnhe/vim-color-forest-night'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jnurmine/zenburn'
Plug 'ajh17/spacegray.vim'

call plug#end()
