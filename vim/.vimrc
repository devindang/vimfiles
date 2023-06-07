" vim-plug
call plug#begin('~/.vim/autoload')
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'itchyny/vim-cursorword'
call plug#end()

" options
syntax on
let mapleader=" "
filetype indent on
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set showcmd
set number
set wildmenu
set hlsearch
set incsearch
set tabstop=4
set shiftwidth=4
set softtabstop=4

" mapping
noremap J 5j
noremap K 5k
noremap R :source $MYVIMRC<CR>
map sl : set splitright<CR>:vs<CR>
map sh : set nosplitright<CR>:vsplit<CR>
map sj : set splitbelow<CR>:split<CR>
map sk : set nosplitbelow<CR>:split<CR>
map Q : qa<CR>
map <C-s> :w<CR>
map <C-q> :q<CR>

" LEADER
map <LEADER>= :res +5<CR>
map <LEADER>- :res -5<CR>
map <LEADER>] :vertical resize-5<CR>
map <LEADER>[ :vertical resize+5<CR>
map <LEADER>t :tabe<CR>
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l
map <LEADER><LEFT> :-tabnext<CR>
map <LEADER><RIGHT> :+tabnext<CR>
map <LEADER><CR> :nohlsearch<CR> 
map <C-T> :botright term<CR>

" Add current time in INSERT MODE
" Example: 2023-03-22 23:09:43
iab <expr> dts strftime("%Y-%m-%d %H:%M:%S")


" ALE
let g:ale_linters = {
\   'verilog': ['iverilog'],
\	'VHDL': ['ghdl'],
\}
let g:ale_lint_on_enter = 1
let g:ale_completion_enabled = 1


" fzf
nmap <C-p> :Files<CR>
nmap <C-e> :Buffers<CR>
let g:fzf_action = { 'ctrl-e': 'edit' }

" NERDTree
nmap <C-n> :NERDTreeToggle<CR>

" vim-colo
colorscheme desert

" vim-startify
let g:startify_bookmarks = [ {'r': '~/.vimrc'} ]

