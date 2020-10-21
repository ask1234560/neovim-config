# neovim-config
The minimalist feature rich config for neovim

## Requirement
* Linux; win or mac not tested
* nerd fonts
* True color terminal support, [check here](https://gist.github.com/XVilka/8346728)
* Working nvim, `:checkhealth` for error checking


## Plugins installed
* [ask1234560/vim-devicons](http://www.github.com/ask1234560/vim-devicons)
* [ctrlpvim/ctrlp.vim](http://www.github.com/ctrlpvim/ctrlp.vim)
* [jiangmiao/auto-pairs](http://www.github.com/jiangmiao/auto-pairs)
* [lambdalisue/suda.vim](http://www.github.com/lambdalisue/suda.vim)
* [mattn/emmet-vim](http://www.github.com/mattn/emmet-vim)
* [overcache/NeoSolarized](http://www.github.com/overcache/NeoSolarized)
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
<img src="Screenshots/Screenshot_from_2020-09-14_15:04:17.png" width=1000px>

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
* font used is JetBrainsMono Nerd Font
```
