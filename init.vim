"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath = &runtimepath
"source ~/.vimrc


set number
set relativenumber
" set termguicolors
set autoread
au FocusGained * :checktime
let mapleader = ","

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'lambdalisue/suda.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'luochen1990/rainbow'
Plug 'unblevable/quick-scope'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ryanoasis/vim-devicons'


" Initialize plugin system
call plug#end()

set inccommand=split


syntax on
colorscheme dracula
" let g:airline_theme = 'onedark'

let g:airline_powerline_fonts = 1

filetype plugin on

" rainbow configs 
let g:rainbow_active = 1
" let g:rainbow_conf = {'guifgs' : ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick'], 'ctermfgs' : ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']}	

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

hi Normal guibg=NONE ctermbg=NONE

" turn off highlight after search
nnoremap <silent> <Leader><space> :nohlsearch<CR>

" ctrlp mappings
nnoremap <silent> <Leader>o :CtrlPBuffer<CR>
nnoremap <silent> <Leader>m :CtrlPMRU<CR>
nnoremap <silent> <Leader>p :CtrlP<CR>
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_user_command = "find %s -maxdepth 4 -not -path '*.git/*' -type f"

" change directory according to fie
nmap <Leader>c :lcd %:p:h<CR>

" YCM configs
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/plugged/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" key binding
nmap <silent> <Leader>q :q<CR>
nmap <silent> <Leader>t :terminal<CR>
nmap <silent> <Leader>w :w<CR>
" nnoremap <silent> <Leader>j :wincmd <<CR>
" nnoremap <silent> <Leader>k :wincmd ><CR>

" NERDTree config
map <Leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1

" nerdcommenter configs
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
 
" html 
" autocmd BufNewFile *.html 0r ~/.config/nvim/templates/html.skel

" quick-scope
let g:qs_max_chars=1000
" Move across wrapped lines like regular lines
noremap 0 ^
noremap ^ 0
highlight QuickScopePrimary guifg='#afff5f' gui=underline  ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=undercurl ctermfg=81 cterm=undercurl

" set tab to 4
set tabstop=4

" nvim shell behave like command prompt
set shellcmdflag=-ic
