if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

let g:python3_host_prog = '/Users/edwin/.pyenv/shims/python3'

call plug#begin('~/.vim/plugged')

Plug 'nanotech/jellybeans.vim', { 'tag': 'v1.7' }
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'alvan/vim-closetag'
Plug 'leafoftree/vim-vue-plugin'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
" Plug 'maxmellon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

let g:vim_vue_plugin_load_full_syntax = 1
let coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-json', 
  \ 'coc-prettier', 
  \ ]

call plug#end()

" basic

let mapleader = " "
syntax on
set tabstop=4
set shiftwidth=4
set nowrap
set noswapfile
set number
set termguicolors 
set nobackup
set nowritebackup
set smartindent
" highlight Comment ctermfg=green
" key mappings 

nnoremap <Leader>n :NERDTree<CR>
nnoremap <C-f> :NERDTreeToggle<CR>
nnoremap <C-s> :Prettier<CR>
noremap <Leader>s :update<CR>
noremap <Leader>l :FZF<CR>
noremap <Leader><Tab> gT<CR>
noremap <C-c> "+y<CR>
"autoclose tag settings 

let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

" template settings 

colorscheme jellybeans

if (has("termguicolors"))
  set termguicolors
endif

