#!/bin/zsh

# TODO: test with creating the folder nvim instead of kickstart and check if folder exists.
if [[ -d $HOME/.var/app/io.neovim.nvim/config/nvim]]; then
#	rm -r $HOME/.var/app/io.neovim.nvim/config/nvim
	echo "Folder already exists, please delete it"
else
 # git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.var/app/io.neovim.nvim/config/nvim}" TODO: NEED TESTING
 git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.var/app/io.neovim.nvim/config/kickstart}"
 mv ${XDG_CONFIG_HOME:-$HOME/.var/app/io.neovim.nvim/config/kickstart} ${XDG_CONFIG_HOME:-$HOME/.var/app/io.neovim.nvim/config/nvim}
fi
#Geting nvim to execute and autocomplete  NOTE :Make sure you have .zshrc, I recommend you install oh-my-zsh. https://ohmyz.sh/#install

ZSHRC_FILE="$HOME/.zshrc"
ALIAS="
 alias nvim=\"flatpak run io.neovim.nvim\"
compdef nvim="vim"
setopt complete_aliases
"
echo "Adding alias and autocomplete for nvim"
if grep -q nvim= "$ZSHRC_FILE"; then
	echo "alias for nvim already exists.\n"
else
	echo  "$ALIAS">> ~/.zshrc >/dev/null 2>&1
true
	echo "Alias Added\n"
fi

echo "Making init.lua configurations and setting up Header\n"


#NOTE: HEADER for 42 
awk 'NR==275 { print "--42Header - Dont forget to change username and email!\n {\n \"Diogo-ss/42-header.nvim\",\n cmd = { \"Stdheader\" },\n keys = {\"<F1>\"},\n opts = {\n default_map = true, -- Default mapping <F1> in normal mode.\n auto_update = true, -- Update header when saving.\n user = \"username\", -- Your user.\n mail = \"your@email.com\", -- Your mail.\n -- add other options.\n },\n config = function(_, opts)\n require(\"42header\").setup(opts)\n end,\n },\n"} 1' ${XDG_CONFIG_HOME:-$HOME/.var/app/io.neovim.nvim/config/nvim/init.lua} > ${XDG_CONFIG_HOME:-$HOME/.var/app/io.neovim.nvim/config/nvim/temp.lua} && mv ${XDG_CONFIG_HOME:-$HOME/.var/app/io.neovim.nvim/config/nvim/temp.lua} ${XDG_CONFIG_HOME:-$HOME/.var/app/io.neovim.nvim/config/nvim/init.lua}


#Settings for norminette compliance tabstop
awk 'NR==150 { print "\n-- Tab Settings for Norminette compliance\n\nvim.opt.tabstop = 4 \nvim.opt.shiftwidth = 4\nvim.opt.expandtab = false\n"} 1' ${XDG_CONFIG_HOME:-$HOME/.var/app/io.neovim.nvim/config/nvim/init.lua} > ${XDG_CONFIG_HOME:-$HOME/.var/app/io.neovim.nvim/config/nvim/temp.lua} && mv ${XDG_CONFIG_HOME:-$HOME/.var/app/io.neovim.nvim/config/nvim/temp.lua} ${XDG_CONFIG_HOME:-$HOME/.var/app/io.neovim.nvim/config/nvim/init.lua}

echo "Header and tabstop are setup, Press <F1> in Normal Mode to Insert Header\n"

echo "Make sure you edit your Username and e-mail in init.lua (Open Neovim - Press <Space>sn - search init.lua line 275)"
echo "\n\nPlease reset your terminal"
