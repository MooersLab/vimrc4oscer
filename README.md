
# vimrc4oscer

This is Blaine's dot vimrc file that worked on the supercomputer Schooner at [OSCER](http://ou.edu/oscer) in Feburary 2020.
You cannot use GUI's to run software on schooner.

The editors nano, vim, and emacs are available for use in the terminal on schooner.
Other editors that I am ignorant about may also be available.

Use the editor nano if you are new to the terminal.
It is very easy to use.
The instructions and options appear at the bottom of the screen.
You can master it in 30 minutes.

Vim is a very powerful editor. 
It is worth the pain of building the new muscle memory in your fingers to master it.
You can become an advanced beginner (the level that I am stuck at) in two weeks.
I use Vim keybindings in Emacs via the evil-mode, in Jupyter Notebooks, in the terminal in zsh (yes, this is possible with oh-my-zsh installed), and in LaTeX on Overleaf.
Windows users can get a Vim add-on for MS Word.
(If you have installed Neovim, you can the fireneovim plugin for Google Chrome and run run local Neovim in the text boxes of webpage.
Beware that the command line shows up as a narrow box in the middle of the screen rather than at the bottom.
This provides you with access to all of your favorite customizations and packages in the browser.)

The OSCER computer system is Centos 7. 
You can check by entering `cat /etc/os-release`.
The Vim on OSCER was version 7.4 in Febrary 2020. 
This is quite out of date. 
I use Vim 8.2 and the vim-plug package manager on my laptop hence my need to develop a vimrc for OSCER.

You will have to install vundle in .vim first for the plugins to be installed in the subfolder `~/.vim/bundle`.
Otherwise comment out the lines that call the plugins.

