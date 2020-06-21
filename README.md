# neovim-config
The minimalist feature rich config for neovim

## Requirement
* Linux; win or mac not tested
* Patched fonts aka nerd fonts
* True color terminal support, [check here](https://gist.github.com/XVilka/8346728)
* Working nvim, `:checkhealth` for error checking


## Plugins installed
* [altercation/vim-colors-solarized](http://www.github.com/altercation/vim-colors-solarized)
* [ask1234560/vim-devicons](http://www.github.com/ask1234560/vim-devicons)
* [ctrlpvim/ctrlp.vim](http://www.github.com/ctrlpvim/ctrlp.vim)
* [jiangmiao/auto-pairs](http://www.github.com/jiangmiao/auto-pairs)
* [lambdalisue/suda.vim](http://www.github.com/lambdalisue/suda.vim)
* [mattn/emmet-vim](http://www.github.com/mattn/emmet-vim)
* [preservim/nerdcommenter](http://www.github.com/preservim/nerdcommenter)
* [scrooloose/nerdtree](http://www.github.com/scrooloose/nerdtree)
* [tpope/vim-fugitive](http://www.github.com/tpope/vim-fugitive)
* [tpope/vim-surround](http://www.github.com/tpope/vim-surround)
* [unblevable/quick-scope](http://www.github.com/unblevable/quick-scope)
* [Valloric/YouCompleteMe](http://www.github.com/Valloric/YouCompleteMe)
* [vim-airline/vim-airline](http://www.github.com/vim-airline/vim-airline)
* [vim-airline/vim-airline-themes](http://www.github.com/vim-airline/vim-airline-themes)

<!-- macro {y$I* Wv$hS]$a(http://www.github.com/pj0} -->
## Screenshots

<img src="Screenshots/Screenshot_from_2020-05-01_12:06:45.png" width=1000px>

## Installation
```
* install nvim
	* Debian 
		* sudo apt install neovim
	* Arch
		* sudo pacman -S neovim
* mkdir -p ~/.config
* cd ~/.config
* mv nvim nvim_bak 2>/dev/null
* git clone https://github.com/ask1234560/neovim-config.git nvim
* curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
* open nvim, :PlugInstall for installing plugins, build YouCompleteMe plugin
```

## Key bindings
```
* Leader => ,
* ,q => :q
* ,t => :terminal
* ,m => most recently used files
* ,o => open file buffers
* ,p => fuzzy finder in current directory
* ,c => set local directory to that of current file
* <c-{h,j,k,l}> => for left, bottom, top, right in split windows
* ,spacebar => :nohls
* 0 and ^ keybinds are interchanged
* ,l/,h => buffer next/buffer prev
```
