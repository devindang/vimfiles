" vim-plug
call plug#begin('~/vimfiles/autoload')
Plug 'vim-airline/vim-airline'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'itchyny/vim-cursorword'
call plug#end()

" options
syntax on
filetype indent on
set showcmd
set number
set wildmenu
set hlsearch
set incsearch
set tabstop=4
set shiftwidth=4
set softtabstop=4

" mapping
noremap J 3j
noremap K 3k
map sl : set splitright<CR>:vs<CR>
map sh : set nosplitright<CR>:vsplit<CR>
map sj : set splitbelow<CR>:split<CR>
map sk : set nosplitbelow<CR>:split<CR>
map Q : qa<CR>
map <C-s> :w<CR>
map <C-q> :q<CR>
map <C-t> :tabe<CR>
map <F1> <Nop>
imap <F1> <Nop>

" LEADER
let mapleader=" "
map <LEADER>= :res +5<CR>
map <LEADER>- :res -5<CR>
map <LEADER>] :vertical resize-5<CR>
map <LEADER>[ :vertical resize+5<CR>
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l
map <LEADER><LEFT> :-tabnext<CR>
map <LEADER><RIGHT> :+tabnext<CR>
map <LEADER><CR> :nohlsearch<CR> 

iab <expr> dts strftime("%Y-%m-%d %H:%M:%S")

" airline
let g:airline#extensions#tabline#enabled = 1

" NERDTree
nmap <C-n> :NERDTreeToggle<CR>

" vim-colo
colorscheme desert

" vim-startify
let g:startify_bookmarks = [ {'r': '~/init.vim'} ]

