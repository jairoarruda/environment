call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"nvim completion manager begin
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
"nvim completion manager end

Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

call plug#end()


colorscheme gruvbox
set background=dark

set backspace=indent,eol,start
set showcmd
set number
set mouse=a
set inccommand=split
set tabstop=3
set softtabstop=3
set expandtab
set shiftwidth=3

let mapleader="\<space>"
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/config/nvim/init.vim<cr>

nnoremap <c-p> :Files<cr>
nnoremap <c-f> :ack<space>
nnoremap <leader>t :NERDTree<cr>
nnoremap <leader>tc :NERDTreeClose<cr>
nnoremap <leader>tf :NERDTreeFocus<cr>

set completeopt=noinsert,menuone,noselect


