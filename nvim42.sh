#NOTE:This is a somewhat minimal configuration for Neovim, I chose Kickstart.nvim because it doesn't have a lot of plugins that can overwhelm you.
#NOTE : For me information about Kickstart.nvim please check (https://github.com/nvim-lua/kickstart.nvim)
#
#NOTE: I also integrated the 42Header (https://github.com/Diogo-ss/42-header.nvim) and changed a few settings for the Alias in .zshrc and it's completition and tabstop.
#
#NOTE: Check if folder exists!


git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.var/app/io.neovim.nvim/config/kickstarter}"
mv ${XDG_CONFIG_HOME:-$HOME/.var/app/io.neovim.nvim/config/kickstarter} ${XDG_CONFIG_HOME:-$HOME/.var/app/io.neovim.nvim/config/nvim}

#Geting nvim to execute and autocomplete  NOTE :Make sure you have .zshrc, I recommend you install oh-my-zsh. https://ohmyz.sh/#install
echo "Adding alias and autocomplete for nvim"
echo "
 alias nvim=\"flatpak run io.neovim.nvim\"
compdef nvim="vim"
setopt complete_aliases
" >> ~/.zshrc
echo "Alias Added"

echo "Making init.lua configurations and setting up Header"


#NOTE: HEADER for 42 NOTE: Change your username and your email AFTER the script!
awk 'NR==275 { print "--42Header - Dont forget to change username and email!\n {\n \"Diogo-ss/42-header.nvim\",\n cmd = { \"Stdheader\" },\n keys = {\"<F1>\"},\n opts = {\n default_map = true, -- Default mapping <F1> in normal mode.\n auto_update = true, -- Update header when saving.\n user = \"username\", -- Your user.\n mail = \"your@email.com\", -- Your mail.\n -- add other options.\n },\n config = function(_, opts)\n require(\"42header\").setup(opts)\n end,\n },\n"} 1' ${XDG_CONFIG_HOME:-$HOME/.var/app/io.neovim.nvim/config/nvim/init.lua} > ${XDG_CONFIG_HOME:-$HOME/.var/app/io.neovim.nvim/config/nvim/temp.lua} && mv ${XDG_CONFIG_HOME:-$HOME/.var/app/io.neovim.nvim/config/nvim/temp.lua} ${XDG_CONFIG_HOME:-$HOME/.var/app/io.neovim.nvim/config/nvim/init.lua}


#Settings for norminette compliance tabstop
awk 'NR==150 { print "\n-- Tab Settings for Norminette compliance\n\nvim.opt.tabstop = 4 \nvim.opt.shiftwidth = 4\nvim.opt.expandtab = false\n"} 1' ${XDG_CONFIG_HOME:-$HOME/.var/app/io.neovim.nvim/config/nvim/init.lua} > ${XDG_CONFIG_HOME:-$HOME/.var/app/io.neovim.nvim/config/nvim/temp.lua} && mv ${XDG_CONFIG_HOME:-$HOME/.var/app/io.neovim.nvim/config/nvim/temp.lua} ${XDG_CONFIG_HOME:-$HOME/.var/app/io.neovim.nvim/config/nvim/init.lua}

echo "Header and tabstop are setup, Press <F1> in Normal Mode to Insert Header"

echo "Make sure you edit your Username and e-mail in init.lua (Press <Space>sn - and then search init.lua)"
echo "Please reset your terminal"
