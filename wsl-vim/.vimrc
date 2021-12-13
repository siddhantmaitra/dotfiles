"PLUGINS
call plug#begin('~/.vim/plugged')
    Plug 'itchyny/lightline.vim'              " Lightline statusbar
	Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }				
	Plug 'morhetz/gruvbox'
call plug#end()

"SETTINGS

syntax on

"Color scheme
colo challenger_deep
colo gruvbox
let g:lightline = { 'colorscheme': 'wombat'}

"LoC
set number
set cursorline
highlight clear cursorline
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

" WSL yank support 
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif


