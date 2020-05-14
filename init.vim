"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath = &runtimepath
"source ~/.vimrc


" general
set number
set relativenumber
" set termguicolors
set autoread
au FocusGained * :checktime
let mapleader = ","
" set tab to 4
set tabstop=4
set inccommand=split
" html skeleton
" autocmd BufNewFile *.html 0r ~/.config/nvim/templates/html.skel
" interactive shell
" set shellcmdflag=-ic


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
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline-themes'
" always load at end, fixed at commit to avoid bracket issue
Plug 'ryanoasis/vim-devicons' , { 'commit': 'ed7aee3de' }
" Initialize plugin system
call plug#end()


" colorscheme
syntax enable
set background=dark
colorscheme solarized
filetype plugin on
" transparency
hi Normal guibg=NONE ctermbg=NONE


" keybindings
nmap <silent> <Leader>q :q<CR>
nmap <silent> <Leader>t :terminal<CR>
nmap <silent> <Leader>w :w<CR>
" change directory according to fie
nmap <Leader>c :lcd %:p:h<CR>
" 0 first char/^ beg of line
noremap 0 ^
noremap ^ 0
" buffer next/prev
nmap <silent> <Leader>l :bn<CR>
nmap <silent> <Leader>h :bp<CR>
" inc/dec vert split
" nnoremap <silent> <Leader>j :wincmd <<CR>
" nnoremap <silent> <Leader>k :wincmd ><CR>
" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
" turn off highlight after search
nnoremap <silent> <Leader><space> :nohlsearch<CR>
" ctrlp
nnoremap <silent> <Leader>o :CtrlPBuffer<CR>
nnoremap <silent> <Leader>m :CtrlPMRU<CR>
nnoremap <silent> <Leader>p :CtrlP<CR>
" NERDTree
map <Leader>n :NERDTreeToggle<CR>


" airline
let g:airline_theme = 'solarized'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


" rainbow 
let g:rainbow_active = 1
" let g:rainbow_conf = {'guifgs' : ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick'], 'ctermfgs' : ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']}	


" ctrlp
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_user_command = "find %s -maxdepth 4 -not -path '*.git/*' -type f"


" YCM 
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/plugged/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1


" NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1


" nerdcommenter 
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1


" quick-scope
let g:qs_max_chars=120
highlight QuickScopePrimary guifg='#afff5f' gui=underline  ctermfg=37 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=undercurl ctermfg=245 cterm=underline
