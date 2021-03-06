" general
set autoread clipboard+=unnamedplus nocursorcolumn nocursorline encoding=utf-8 expandtab fillchars=eob:\ ,vert:\| inccommand=split mouse=a number relativenumber shiftwidth=4 tabstop=4 wildmode=longest,full
let mapleader = ","
" html skeleton
" interactive shell
" set shellcmdflag=-ic


call plug#begin('~/.config/nvim/plugged')
" Make sure you use single quotes
" Plug 'luochen1990/rainbow'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'lambdalisue/suda.vim'
Plug 'mattn/emmet-vim'
Plug 'overcache/NeoSolarized'
Plug 'preservim/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'unblevable/quick-scope'
Plug 'Valloric/YouCompleteMe'
Plug 'sheerun/vim-polyglot'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Always at the end
Plug 'ask1234560/vim-devicons'
" Initialize plugin system
call plug#end()


" colorscheme
set termguicolors
syntax enable
" Default value is "normal", Setting this option to "high" or "low" does use the
" same Solarized palette but simply shifts some values up or down in order to
" expand or compress the tonal range displayed.
let g:neosolarized_contrast = "normal"
" Special characters such as trailing whitespace, tabs, newlines, when displayed
" using ":set list" can be set to one of three levels depending on your needs.
" Default value is "normal". Provide "high" and "low" options.
let g:neosolarized_visibility = "normal"
" I make vertSplitBar a transparent background color. If you like the origin
" solarized vertSplitBar style more, set this value to 0.
let g:neosolarized_vertSplitBgTrans = 1
" If you wish to enable/disable NeoSolarized from displaying bold, underlined
" or italicized" typefaces, simply assign 1 or 0 to the appropriate variable.
" Default values:
let g:neosolarized_bold = 1
let g:neosolarized_underline = 1
let g:neosolarized_italic = 1
" Used to enable/disable "bold as bright" in Neovim terminal. If colors of bold
" text output by commands like `ls` aren't what you expect, you might want to
" try disabling this option. Default value:
let g:neosolarized_termBoldAsBright = 0
set background=dark
colorscheme NeoSolarized
filetype plugin on
" transparency
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi CursorLineNr guibg=NONE guifg=NONE


" keybindings
nmap <silent> <Leader>q :q<CR>
nmap <silent> <Leader>w :w<CR>
" Fix Y behaviour
nmap Y y$
"" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>
" case insensitive
nmap <Leader>i :set ic!<CR>:set ic?<CR>
" spell checker
nmap <silent> <Leader>s :setlocal spell! spelllang=en_us<CR>
" buffer next/prev/delete
nmap <silent> <Leader>l :bn<CR>
nmap <silent> <Leader>h :bp<CR>
nmap <silent> <Leader>d :bd<CR>
" split vertical
nmap <silent> <Leader>vs :vnew<CR>
" turn off highlight after search
nnoremap <silent> <Leader><space> :nohlsearch<CR>
" ctrlp
nnoremap <silent> <Leader>o :CtrlPBuffer<CR>
nnoremap <silent> <Leader>m :call Ctrlpmru()<CR>
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
nmap <Leader>ss :setlocal buftype=nofile bufhidden=hide noswapfile<CR>
" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv
"" Tabs
nnoremap <silent> <Leader>tn :tabnew<CR>
nnoremap <silent> <Leader>tc :tabclose<CR>
nnoremap <silent> <Leader>ti :tabs<CR>
" terminal
nmap <silent> <Leader>tt :call CustomTerminal()<CR>
tnoremap <silent> <Esc>n <C-\><C-n>
tnoremap <silent> <Esc><Esc> <C-\><C-n>:bd!<CR>
" Prefer Neovim terminal insert mode to normal mode.
 " Make navigation into and out of Neovim terminal splits nicer.
tnoremap <C-k> <C-\><C-N><C-w>k
" Remove white spaces
nnoremap <Leader>rs :%s/\s\+$//e<CR>
" vim fugitive
nnoremap <Leader>gd :Gvdiffsplit<CR>
nnoremap <Leader>gs :Git<CR>
" wrap
nnoremap <Leader>dw :windo set wrap<CR><C-w>h


" airline
let g:airline_theme = 'solarized'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'


" ctrlp
let g:ctrlp_working_path_mode = 'a'
" let g:ctrlp_user_command = "find %s -maxdepth 4 -not -path '*.git/*' -not -path '*node_modules/*' -type f"
let g:ctrlp_user_command = 'find %s -maxdepth 4 -path "*.git/*" -prune -o -path "*node_modules/*" -prune -o \( -type f -print \)'

" nerdtree
let g:NERDTreeShowLineNumbers = 1
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
" let g:NERDTreeHighlightCursorline = 0


" nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1


" quick-scope
let g:qs_max_chars=120
let g:qs_buftype_blacklist = ['terminal']
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
highlight QuickScopePrimary guifg='#afff5f' gui=underline  ctermfg=37 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=undercurl ctermfg=245 cterm=underline


" rainbow
let g:rainbow_active = 1
" let g:rainbow_conf = {'guifgs' : ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick'], 'ctermfgs' : ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']}


" suda
let g:suda_smart_edit = 1


" YCM
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/plugged/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1


fun! CustomTerminal()
    :bo 15new | terminal
    :set nocursorcolumn nocursorline nonumber norelativenumber
    :startinsert
endf


" ignore patterns in CtrlPMRU
fun! Ctrlpmru()
    :silent !sed -i.bak -e '/\.git\//d' -e '/\/tmp\//d' "$XDG_CACHE_HOME/ctrlp/mru/cache.txt"
    :CtrlPMRU<CR>
endf

" autocmds
" autocmd BufWritePre * %s/\s\+$//e
autocmd FocusGained * :checktime
autocmd InsertEnter * norm zz
" autocmd VimEnter    * if &diff | execute 'windo set wrap' | endif
" autocmd BufNewFile *.html 0r ~/.config/nvim/templates/html.skel
autocmd BufEnter term://* startinsert
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
