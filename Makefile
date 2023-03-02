MAKEFLAGS += --silent

updateFromLocal:
	cp ~/.config/nvim/init.vim .

deployToLocal:
	mkdir -p ~/.config/nvim/
	cp init.vim ~/.config/nvim/

help:
	echo "First install neovim"
	echo "Then run make deployToLocal to create the local config folder and deploy the config file"
	echo "Finally enter nvim and execute :PlugInstall"
	echo "Some plugins require installing additional things"
