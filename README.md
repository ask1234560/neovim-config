# neovim-config
The minimalist feature rich config for neovim

## Requirement
* Linux; win or mac not tested
* Patched fonts aka nerd fonts
* True color terminal support, check https://gist.github.com/XVilka/8346728
* Working nvim, :checkhealth for error checking


## Plugins installed


* [Named Link](http://www.github.com/joshdick/onedark.vim "joshdick/onedark.vim")
* [Named Link](http://www.github.com/vim-airline/vim-airline "vim-airline/vim-airline")
* [Named Link](http://www.github.com/tpope/vim-fugitive "tpope/vim-fugitive")
* [Named Link](http://www.github.com/morhetz/gruvbox "morhetz/gruvbox")
* [Named Link](http://www.github.com/frazrepo/vim-rainbow "frazrepo/vim-rainbow")
* [Named Link](http://www.github.com/tpope/vim-surround "tpope/vim-surround")
* [Named Link](http://www.github.com/preservim/nerdcommenter "preservim/nerdcommenter")
* [Named Link](http://www.github.com/ctrlpvim/ctrlp.vim "ctrlpvim/ctrlp.vim")
* [Named Link](http://www.github.com/lambdalisue/suda.vim "lambdalisue/suda.vim")
* [Named Link](http://www.github.com/terryma/vim-multiple-cursors "terryma/vim-multiple-cursors")
* [Named Link](http://www.github.com/Valloric/YouCompleteMe "Valloric/YouCompleteMe")
* [Named Link](http://www.github.com/scrooloose/nerdtree "scrooloose/nerdtree")
* [Named Link](http://www.github.com/ryanoasis/vim-devicons "ryanoasis/vim-devicons")

## Screenshots

<img src="screenshots/1.png" width=1000px>
<img src="screenshots/4.png" width=1000px>
<img src="screenshots/2.png" width=1000px>
<img src="screenshots/3.png" width=1000px>

#### After devicons

<img src="screenshots/5.png" width=1000px>
<img src="screenshots/6.png" width=1000px>
<img src="screenshots/7.png" width=1000px>

## Installation


* mkdir -p ~/.config
* cd ~/.config
* mv nvim nvim_bak 2>/dev/null
* git clone https://github.com/ask1234560/neovim-config.git nvim

* curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
* open nvim, :PlugInstall for cloning plugins, build __YouCompleteMe__ plugin


## Key bindings
* Leader => ,
* ,q => :q
* ,t => :terminal
* ,m => most recently used files
* ,o => open file buffers
* ,p => fuzzy finder in current directory
* ,c => set local directory to that of current file
* <c-{h,j,k,l}> => for left, bottom, top, right in split windows
* ,spacebar => :nohls



