" general
set number
set relativenumber
" set termguicolors
set autoread
au FocusGained * :checktime
let mapleader = ","
" set tab to 4/ctrl-v<tab> to insert tab
set tabstop=4 shiftwidth=4 expandtab
set inccommand=split
set clipboard+=unnamedplus
" html skeleton
" autocmd BufNewFile *.html 0r ~/.config/nvim/templates/html.skel
" interactive shell
" set shellcmdflag=-ic


" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')
" Make sure you use single quotes
" Plug 'luochen1990/rainbow'
Plug 'altercation/vim-colors-solarized'
Plug 'ask1234560/vim-devicons'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'lambdalisue/suda.vim'
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'unblevable/quick-scope'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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
" case insensitive
nmap <silent> <Leader>i :set ic!<CR>
" spell checker
nmap <silent> <Leader>s :setlocal spell! spelllang=en_us<CR>
" buffer next/prev/delete
nmap <silent> <Leader>l :bn<CR>
nmap <silent> <Leader>h :bp<CR>
nmap <silent> <Leader>d :bd<CR>
" split horizontal/vertical
nmap <silent> <Leader>hs :new<CR>
nmap <silent> <Leader>vs :vnew<CR>
" turn off highlight after search
nnoremap <silent> <Leader><space> :nohlsearch<CR>
" ctrlp
nnoremap <silent> <Leader>o :CtrlPBuffer<CR>
nnoremap <silent> <Leader>m :CtrlPMRU<CR>
nnoremap <silent> <Leader>p :CtrlP<CR>
" NERDTree
map <silent> <Leader>n :NERDTreeToggle<CR>
" navigate to file
nmap <silent> <Leader>c :NERDTreeFind<CR>
" 0 first char/^ beg of line
noremap 0 ^
noremap ^ 0
" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
" scratchpad
nmap <silent> gs :setlocal buftype=nofile bufhidden=hide noswapfile<CR>


" airline
let g:airline_theme = 'solarized'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


" ctrlp
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_user_command = "find %s -maxdepth 4 -not -path '*.git/*' -type f"


" nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''


" nerdcommenter 
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1


" quick-scope
let g:qs_max_chars=120
highlight QuickScopePrimary guifg='#afff5f' gui=underline  ctermfg=37 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=undercurl ctermfg=245 cterm=underline


" rainbow 
let g:rainbow_active = 1
" let g:rainbow_conf = {'guifgs' : ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick'], 'ctermfgs' : ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']}	


" YCM 
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/plugged/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
