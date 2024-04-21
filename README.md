                                  _  _ ___    _   _                 _           _     
                                 | || |__ \  | \ | |               (_)         ( )    
                                 | || |_ ) | |  \| | ___  _____   ___ _ __ ___ |/ ___ 
                                 |__   _/ /  | . ` |/ _ \/ _ \ \ / / | '_ ` _ \  / __|
                                    | |/ /_  | |\  |  __/ (_) \ V /| | | | | | | \__ \
                                    |_|____| |_| \_|\___|\___/ \_/ |_|_| |_| |_| |___/
                               _____             __ _          _____           _       _   
                              / ____|           / _(_)        / ____|         (_)     | |  
                             | |     ___  _ __ | |_ _  __ _  | (___   ___ _ __ _ _ __ | |_ 
                             | |    / _ \| '_ \|  _| |/ _` |  \___ \ / __| '__| | '_ \| __|
                             | |___| (_) | | | | | | | (_| |  ____) | (__| |  | | |_) | |_ 
                             \_____\___/|_| |_|_| |_|\__, | |_____/ \___|_|  |_| .__/ \__|
                                                      __/ |                    | |        
                                                     |___/                     |_|        
                                           _____ _______ ______ __  __ 
                                          |  __ \__   __|  ____|  \/  |
                                          | |__) | | |  | |__  | \  / |
                                          |  _  /  | |  |  __| | |\/| |
                                          | | \ \  | |  | |    | |  | |
                                          |_|  \_\ |_|  |_|    |_|  |_|
                                          Read    The  Friendly Manual             by MrSloth-dev(joao-pol@42porto)
Hello everyone, welcome to 42Neovim Configuration with Kickstart!

This is a somewhat minimal configuration for Neovim, I chose Kickstart.nvim because it doesn't have a lot of plugins that can overwhelm you!
   -> For me information about Kickstart.nvim please check (https://github.com/nvim-lua/kickstart.nvim)
   ->Also check out this video by TJ DeVries that exaplains and guides you through the first steps of kickstart with Nvim (https://www.youtube.com/watch?v=m8C0Cq9Uv9o)

For easening the experience in 42 CommonCore (I don't recommend using Nvim during the piscine, because it won't help you that much.), I integrated the 42Header for Neovim  and changed tabstop and tab width for Norminette compliance.

INSTRUCTIONS:
1 -> Install Neovim in 42's Cluster PC through 42 Package manager 
NOTE: Notice that you need to do this is every different computer that you use, but the configuration will stay in your files, so the script will only need to run once.
2 -> Star this repository (doh!)

3 -> Download the .sh file or copy the code, remember that you need to give permissions to execute (chmod) and execute it;

3.1 -> The script will clone the kickstart repository to a configuration folder inside (~/.var/app/io.neovim.nvim/config/)
3.2 -> An alias will be added to ~/.zshrc file NOTE :Make sure you have .zshrc, I recommend you install oh-my-zsh. https://ohmyz.sh/#install;
3.3 -> Because the cluster uses flatpack it will be added in ~/.zshrc the autocompletion options in terminal to behave like "vim" command;
3.4 -> Add 42Header Plugin (Thank you Diogo (https://github.com/Diogo-ss/42-header.nvim))
3.5 -> Change Tab width and behaviour to comply with Norminette
4 -> Restart the Terminal
5 -> Write "nvim" in Terminal;
6 -> Go to the configuration init.lua file to change USER and MAIL for 42Header (Open Neovim - Press <Space>sn - search init.lua line 275);

THAT'S IT! You are ready to go!

Just want to recommend to Install Clangd LSP for Neovim. (Clangd understands your C++ code and adds smart features to your editor: code completion, compile errors,
go-to-definition and more!)

1 -> Open Neovim
2 -> Write :Mason
3 -> Search Clang and press I to Install
4 -> Restart Neovim, open a .c file and see compilations errors, warnings, etc.!

NOTE: When it shows the autocompletion, press <CTRL-Y> to accept and <CTRL-N> to go Next

Hope it worked for you and that you enjoy Neovim!

If there is anything that you want to say to correct or improve this script just email me  : joao.a.barbosa@proton.me

BONUS: Check this video to understand better how to use Kickstart and Neovim by TJ DeVries that explains and guides you through the first steps of Kickstart with Nvim
(https://www.youtube.com/watch?v=m8C0Cq9Uv9o)

TODO:
-> Test folder creation and break if nor successfull
-> Add more checks if script is being successfull and stop if anything gone bad.
-> Fork the Kickstart repo to add the modifications to the init.lua file
-> Ask for USER and MAIL during the script
-> Norminette LSP???
