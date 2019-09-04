" init.vim for neovim

" PLUGINS
call plug#begin('~/.local/share/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'Shougo/deoplete.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
Plug 'vim-syntastic/syntastic'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
" REMEMBER to reload init.vim(nvim) and run :PlugInstall to
" install plugins.
call plug#end() 

" BASICS
set nocompatible
set number
set expandtab
set shiftwidth=2
set autoindent
set smartindent
set scrolloff=8
"inoremap jj <ESC>

" KEYBINDS
let mapleader=" "

" FILE TREE
nnoremap <leader>e :Ex<cr>
nnoremap <leader>n :e<space>

" FZF/BUFFER MAPPINGS
nnoremap <leader>f :Files<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>g :Ag<cr>

" MOVING BETWEEN SPLITS
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l

" THEME
set termguicolors
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"syntax enable
syntax on
"NOTE syntax on overwrites colorscheme in order to highlight, enable does not
"set background=dark
let ayucolor="mirage" "Ayu can take 'mirage', 'dark', or 'light'
colorscheme ayu 

" DEOPLETE USE
let g:deoplete#enable_at_startup = 1

" LIGHTLINE CONFIG
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" EMMET-VIM CONFIG
let g:user_emmet_leader_key=","
"let g:user_emmet_expandabbr_key = '<Tab>'
let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.snippets_custom.json')), "\n"))

" SYNTASTIC SETTINGS
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:ale_enabled = 0

