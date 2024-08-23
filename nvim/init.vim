:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set clipboard=unnamedplus

:let mapleader = " "

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/folke/tokyonight.nvim.git'
Plug 'junegunn/fzf' " Fuzzy finder
Plug 'mfussenegger/nvim-dap' " Neovim DAP debugger
Plug 'morhetz/gruvbox'
Plug 'vhda/verilog_systemverilog.vim'
Plug 'suoto/hdlcc'

set encoding=UTF-8

call plug#end()

:let g:NERDTreeWinSize=26

nnoremap <leader>f :NERDTreeFocus<CR>
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nnoremap <leader>p :FZF<CR>

nnoremap <leader>t :tabnew<CR>
nnoremap <leader>w :tabclose<CR>
nnoremap <leader>n :tabnext<CR>

" nnoremap <leader>pr :MarkdownPreview<CR>

nmap <F8> :TagbarToggle<CR>

:set ft=nasm
:set ft=yasm
:set ft=asm

let g:markdown_fenced_languages = [
	\ 'vim',
	\ 'help',
	\ 'nasm',
	\ 'asm',
	\ 'yasm',
	\]
let g:gruvbox_transparent_bg = 1
let g:gruvbox_constrast_dark='hard'
:set background=dark
:colorscheme gruvbox
:set completeopt-=preview " For No Previews

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <CR> pumvisible() ? coc#_select_confirm() : "<CR>"

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

inoremap <S-Tab> <C-d>

:set ft=nasm
