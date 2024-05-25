![Version](https://img.shields.io/static/v1?label=vimrc4oscer&message=0.2&color=brightcolor)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)



# vimrc4oscer

This is Blaine's dot vimrc file that worked on the supercomputer Schooner at [OSCER](http://ou.edu/oscer) in February 2020.
You cannot use GUI's to run software on schooner.

The editor's nano, vim, and emacs are available in the Schooner terminal.
Other editors that I am ignorant about may also be available.

Use the editor nano if you are new to the terminal.
It is very easy to use.
The instructions and options appear at the bottom of the screen.
You can master it in 30 minutes.

Vim is a very powerful editor. 
It is worth the pain of building the new muscle memory in your fingers to master it.
You can become an advanced beginner (the level that I am stuck at) in two weeks.
I use Vim keybindings in Emacs via evil-mode, in Jupyter Notebooks, in the terminal in zsh (yes, this is possible with *oh-my-zsh* installed), and in LaTeX on Overleaf.
Windows users can get a Vim add-on for MS Word.
(If you have installed Neovim, you can install the Fireneovim plugin for Google Chrome and run local Neovim in the text boxes of the webpage.
Beware that the command line appears as a narrow box in the middle of the screen rather than at the bottom.
This gives you access to all your favorite customizations and packages in the browser.)

The OSCER computer system is Centos 7. 
You can check by entering `cat /etc/os-release`.
The Vim on OSCER was version 7.4 in February 2020. 
This is quite out of date. 
I use Vim 8.2 and the vim-plug package manager on my laptop, so I needed to develop a vimrc for OSCER.

You must install vundle in .vim first for the plugins to be installed in the subfolder `~/.vim/bundle`.
Otherwise comment out the lines that call the plugins.

## Update history

|Version      | Changes                                                                                                                                                                         | Date                 |
|:-----------:|:------------------------------------------------------------------------------------------------------------------------------------------:|:--------------------:|
| Version 0.2 |   Added badges, funding, and update table.                                                                                                                  | 2024 May 24         |

## Sources of funding

- NIH: R01 CA242845
- NIH: R01 AI088011
- NIH: P30 CA225520 (PI: R. Mannel)
- NIH: P20 GM103640 and P30 GM145423 (PI: A. West)
