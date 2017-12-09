
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Plug 'chriskempson/base16-vim'
Plug 'dracula/vim'
" Devicons
Plug 'ryanoasis/vim-devicons'
" SimplyFold
Plug 'tmhedberg/SimpylFold'
" NerdTree
Plug 'scrooloose/nerdtree'
" NerdCommenter
Plug 'scrooloose/nerdcommenter'
" SuperTab
Plug 'ervandew/supertab'
" Git Gutter
Plug 'airblade/vim-gitgutter'
" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Code completion
Plug 'zchee/deoplete-jedi'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Lint
Plug 'w0rp/ale'

" Initialize plugin system
call plug#end()

" Confiure airline
let g:airline_theme='dracula'

" Required:
filetype indent plugin on
set tabstop=4
set shiftwidth=4
set expandtab
set noswapfile
map <Tab> :tabn<CR>

" Configure colorscheme
" colorscheme base16-default-dark
set t_Co=256
syntax on
" colorscheme base16-default-dark
color dracula
set number
set termguicolors
set cursorline

" Configure NerdTree
nnoremap <LocalLeader>t :NERDTreeToggle<CR>

let NERDTreeMapActivateNode='<l>'

" Configure NerdCommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Configure deoplete
let g:deoplete#enable_at_startup = 1
" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Configure ALE
 let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 1
 let g:ale_fixers = {
 \   'python': ['autopep8'],
 \}
let g:ale_fix_on_save = 1
highlight ALEErrorSign guibg=#ff5555 guifg=#ff5555
highlight ALEWarningSign guibg=#f1fa8c guifg=#f1fa8c
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
