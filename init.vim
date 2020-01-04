"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath = &runtimepath
"source ~/.vimrc


set number
set relativenumber
set termguicolors
let mapleader = ","

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'frazrepo/vim-rainbow'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'lambdalisue/suda.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

" Initialize plugin system
call plug#end()


syntax on
" colorscheme onedark
colorscheme gruvbox
let g:airline_theme = 'onedark'

let g:airline_powerline_fonts = 1

let g:rainbow_active = 1

filetype plugin on

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

let g:ycm_global_ycm_extra_conf = '~/.config/nvim/plugged/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" :q :terminal key binding
nmap <silent> <Leader>q :q<CR>
nmap <silent> <Leader>t :terminal<CR>

" NERDTree config
map <Leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1


