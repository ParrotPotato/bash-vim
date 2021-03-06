" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

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

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

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

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

so ~/.vim/plugins.vim

set relativenumber 

set cursorline
hi cursorline cterm=none term=none

"Commenting the terminal gui color out made colors better for some reason
"set termguicolors
"

"colorscheme gruvbox 
"set bg=dark
"let g:gruvbox_contrast_dark="low"

colorscheme spacegray 


set laststatus=2
"let g:lightline = {
"	\ 'colorscheme':'gruvbox',
"	\ }

"Making it use 4 space for tabs instead of 8
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

" Enables the mouse for all modes
set mouse=a

" Enables incremental search (search as we are typing) 
set incsearch

" Making space the leader key because it is the most convinent key on the
" board
let mapleader = " "
" space + f makes me search 
nnoremap <leader>f :Files<CR> 
nnoremap <leader>tv :vertical terminal<CR> 
nnoremap <leader>ts :terminal<CR> 
nnoremap <leader>vs :vs<CR>
nnoremap <leader>sp :sp<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>


" Code for highlighting NOTE TODO etc.

if has("autocmd")
	if v:version > 701
		autocmd Syntax * call matchadd('Todo', '\W\zs\(TODO\|FIXME\|BUG\|HACK\)')
		autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\|DEBUG\)')
	endif
endif
