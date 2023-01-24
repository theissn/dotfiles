call plug#begin()
" LSP Support
Plug 'neovim/nvim-lspconfig'             " Required
Plug 'williamboman/mason.nvim'           " Optional
Plug 'williamboman/mason-lspconfig.nvim' " Optional

" Autocompletion Engine
Plug 'hrsh7th/nvim-cmp'         " Required
Plug 'hrsh7th/cmp-nvim-lsp'     " Required
Plug 'hrsh7th/cmp-buffer'       " Optional
Plug 'hrsh7th/cmp-path'         " Optional
Plug 'saadparwaiz1/cmp_luasnip' " Optional
Plug 'hrsh7th/cmp-nvim-lua'     " Optional

"  Snippets
Plug 'L3MON4D3/LuaSnip'             " Required
Plug 'rafamadriz/friendly-snippets' " Optional

" Lsp
Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v1.x'}

" Fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Themes
Plug 'shaunsingh/nord.nvim'
Plug 'ayu-theme/ayu-vim'

" Nerdtree
Plug 'preservim/nerdtree'

Plug 'nvim-lua/plenary.nvim'
Plug 'ThePrimeagen/harpoon'
call plug#end()

" filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

lua <<EOF
-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.setup()

require("mason").setup()
EOF

nnoremap <C-p> :<C-u>FZF<CR> 
nnoremap <C-f> :<C-u>Rg<CR> 
nnoremap <C-\> :<C-u>LspZeroFormat<CR> 
nnoremap <C-t> :NERDTreeToggle<CR>

colorscheme nord

set number
set relativenumber
