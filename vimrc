syntax on 
set nocompatible 
set autoindent
set backspace=indent,eol,start 
set history=50 
set ruler 
set showcmd 
set incsearch 
set hlsearch 
set number
set showmatch
set tabstop=4
set shiftwidth=4
set smartindent
set laststatus=2
set expandtab
set mouse-=a
filetype plugin indent on 
autocmd FileType text setlocal textwidth=79

"jump to last edited position in the file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

imap <F2> <C-o>:w<CR>
map <F2> :w<CR>

imap <F10> <C-o>:wq!<CR>
map <F10> :wq!<CR>

imap <F11> <C-o>:q!<CR>
map <F11> :q!<CR>

imap <F4> <C-o>:%s/^[[:space:]\t]*\*.*\n\\|^[[:space:]\t]*\/\*.*\n\\|[[:space:]\t]*\/\*.*//g<CR>
map <F4> :%s/^[[:space:]\t]*\*.*\n\\|^[[:space:]\t]*\/\*.*\n\\|[[:space:]\t]*\/\*.*//g<CR>

map <silent> <C-b> :%s/[\t ]\+$//<CR>

colorscheme wombat
