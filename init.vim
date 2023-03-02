call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'neomake/neomake'
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'

call plug#end()

let g:deoplete#enable_at_startup = 1
let g:neomake_python_enabled_makers = ['pylint']

" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

" navigate in auto-complete with Tab
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" enable patched fonts in the status bar
let g:airline_powerline_fonts = 1

call neomake#configure#automake('nrwi', 500)

set clipboard+=unnamedplus
