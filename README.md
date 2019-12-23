# neovim-config
The minimalist feature rich config for neovim

## Requirement
* Linux, win or mac not tested
* Patched fonts aka powerline fonts
* True color terminal support, check https://gist.github.com/XVilka/8346728
* Working nvim, :checkhealth for error checking


## Plugins installed

* joshdick/onedark.vim
* vim-airline/vim-airline
* tpope/vim-fugitive
* morhetz/gruvbox
* frazrepo/vim-rainbow
* tpope/vim-surround
* scrooloose/nerdcommenter
* ctrlpvim/ctrlp.vim
* lambdalisue/suda.vim
* terryma/vim-multiple-cursors
* Valloric/YouCompleteMe


## Screenshots

<img src="screenshots/4.png" width=1000px>
<img src="screenshots/2.png" width=1000px>
<img src="screenshots/3.png" width=1000px>

## Installation


* mkdir -p ~/.config
* cd ~/.config
* mv nvim nvim_bak 2>/dev/null
* git clone https://github.com/ask1234560/neovim-config.git nvim

* curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
* open nvim, :PlugInstall for cloning plugins, build __YouCompleteMe__ plugin


## Key bindings
* Leader = ,
* ,q = :q
* ,t = :terminal
* ,m = most recently used files
* ,o = open file buffers
* ,p = fuzzy finder in current directory
* ,c = set local directory to that of current file
* <c-{h,j,k,l}> = for left, bottom, top, right in split windows
* ,spacebar = :nohls



