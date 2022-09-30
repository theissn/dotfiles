" Tab set to two spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set number
set relativenumber

call plug#begin()
  " Theme
  Plug 'morhetz/gruvbox'

  " LSP Support
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim'

  " Autocompletion
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'saadparwaiz1/cmp_luasnip'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-nvim-lua'

  " Snippets
  Plug 'L3MON4D3/LuaSnip'
  Plug 'rafamadriz/friendly-snippets'

  " LSP Setup
  Plug 'VonHeikemen/lsp-zero.nvim'

  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " Editorconfig
  Plug 'gpanders/editorconfig.nvim'
call plug#end()

try
  set signcolumn=yes
  set termguicolors
#  colorscheme onedark
catch
  " do nothing
endtry

lua <<EOF
local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.nvim_workspace()
lsp.setup()
EOF


nnoremap <silent> <C-p> :GFiles<CR>
nnoremap <silent> <C-;> :Files<CR>
nnoremap <silent> <C-f> :Rg<CR>


autocmd BufWritePre *.php :%s/\s\+$//e

