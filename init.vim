call plug#begin()
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'tpope/vim-fugitive'
  Plug 'sainnhe/gruvbox-material'
  Plug 'preservim/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight' 
call plug#end()

set number
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set smarttab
set autowrite
set clipboard=unnamedplus

if has('termguicolors')
  set termguicolors
endif

set background=dark
let g:gruvbox_material_background = 'soft'
let g:gruvbox_material_better_performance = 1
colorscheme gruvbox-material

" set current directory
augroup cdpwd
    autocmd!
    autocmd VimEnter * cd $PWD
augroup END

" terminal exit esc
:tnoremap <Esc> <C-\><C-n>

" NERDTree
" Open NERDTree in the directory of the current file (or /home if no file is open)
nnoremap <silent> <expr> <leader>nn g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"
let g:NERDTreeWinSize=100

" Coc
 let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-yaml',
  \ 'coc-tslint-plugin',
  \ 'coc-emmet',
  \ 'coc-css',
  \ 'coc-html',
  \ 'coc-json',
  \ 'coc-git',
  \ ]

