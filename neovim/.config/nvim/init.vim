" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
	Plug 'itchyny/lightline.vim'              " Lightline statusbar
	Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }				
	"Plug 'morhetz/gruvbox'
	"Plug 'fratajczak/one-monokai-vim'

call plug#end()

"SETTINGS

syntax on

"Color scheme
colo challenger_deep
"colo gruvbox
let g:lightline = { 'colorscheme': 'wombat'}
set termguicolors

"LoC
set number relativenumber
"set cursorline
"highlight clear cursorline
"highlight clear CursorLineNR 
"highlight CursorLineNR ctermbg=blue

"Mouse use
set mouse=a

"set clipboard=unamedplus

"Encoding
set encoding=utf-8

"Searching
set incsearch

"Indentation
set smartindent
set tabstop=4
set shiftwidth=4

"Kill annoying bell AND flashing
set visualbell
set t_vb=

"Other 
set noswapfile
set laststatus=2
set noshowmode

"REMAPS
nnoremap <C-N> :Texplore<CR>



