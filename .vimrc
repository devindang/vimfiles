syntax on
let mapleader=" "
" let &t_SI .= "\e[1 q"
" let &t_SR .= "\e[5 q"
" let &t_EI .= "\e[1 q"

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

noremap H 5h
noremap J 5j
noremap K 5k
noremap L 5l
noremap R :source $MYVIMRC<CR>

map sl : set splitright<CR>:vs<CR>
map sh : set nosplitright<CR>:vsplit<CR>
map sj : set splitbelow<CR>:split<CR>
map sk : set nosplitbelow<CR>:split<CR>
map <LEADER>= :res +5<CR>
map <LEADER>- :res -5<CR>
map <LEADER>] :vertical resize-5<CR>
map <LEADER>[ :vertical resize+5<CR>

map Q : qa<CR>
map <C-s> :w<CR>
map <C-q> :q<CR>

map <C-t> :tabe<CR>
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l
map <LEADER><LEFT> :-tabnext<CR>
map <LEADER><RIGHT> :+tabnext<CR>
map <LEADER><CR> :nohlsearch<CR> 

" Add current time in INSERT MODE
" Example: 2023-03-22 23:09:43
iab <expr> dts strftime("%Y-%m-%d %H:%M:%S")


call plug#begin('~/.vim/autoload')

Plug 'vim-airline/vim-airline'
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" ALE
let g:ale_linters = {
\   'verilog': ['iverilog'],
\	'VHDL': ['ghdl'],
\}
let g:ale_lint_on_enter = 1
let g:ale_completion_enabled = 1


" Nerd Tree
nmap <C-n> :NERDTreeToggle<CR>
nmap <C-k> <Plug>(ale_previous_wrap)
nmap <C-j> <Plug>(ale_next_wrap)

" Color Scheme
colorscheme desert

" fzf
nmap <C-p> :Files<CR>
nmap <C-e> :Buffers<CR>
let g:fzf_action = { 'ctrl-e': 'edit' }



