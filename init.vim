let python3_host_prog = '/usr/bin/python3'
call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'rmehri01/onenord.nvim', { 'branch': 'main' }
Plug 'EdenEast/nightfox.nvim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'haishanh/night-owl.vim'
Plug 'yonlu/omni.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Vim-Plug
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
"For async completion
Plug 'Shougo/deoplete.nvim'
"For Denite features
Plug 'Shougo/denite.nvim'

"nvim completion manager begin
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
"nvim completion manager end

"Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

if (has("termguicolors"))
 set termguicolors
endif

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
syntax enable

colorscheme night-owl

let g:lightline = { 'colorscheme': 'night-owl' }
"set background=dark

set backspace=indent,eol,start
set showcmd
set number
set mouse=a
set inccommand=split
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

let mapleader="\<space>"
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/config/nvim/init.vim<cr>

vnoremap <c-c> :w !pbcopy<cr><cr>
vnoremap <c-v> :r !pbpaste<cr><cr>

nnoremap <c-p> :Files<cr>
nnoremap <c-f> :ack<space>
nnoremap <leader>t :NERDTree<cr>
nnoremap <leader>tc :NERDTreeClose<cr>
nnoremap <leader>tf :NERDTreeFocus<cr>

set completeopt=noinsert,menuone,noselect

"prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile

"coc config
let g:coc_global_extensions = [
   \ 'coc-snippets',
   \ 'coc-pairs',
   \ 'coc-prettier',
   \ 'coc-go',
   \ 'coc-git',
   \ 'coc-elixir'
   \ ]

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let airline_theme='night_owl'
let airline_left_sep = ''
let airline_left_alt_sep = ''
let airline_right_sep = ''
let airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' '
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'
let airline#extensions#nerdtree_statusline = 1
