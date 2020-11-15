#!/bin/bash 

cp .tmux.conf ~/.tmux.conf
cd $HOME
sudo dpkg --add-architecture i386
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install binutils nasm
sudo apt-get -y install gcc-multilib g++-multilib
sudo apt-get -y install libc6-dev-i386
sudo apt-get -y install git vim tmux cscope ctags
sudo apt-get -y install libc6-dbg libc6-dbg:i386
sudo apt-get -y install nmap libseccomp-dev
sudo apt-get -y install python-pip libssl-dev
sudo apt-get -y install gdb
sudo apt-get -y install nodejs-dev node-gyp libssl1.0-dev
sudo apt-get -y install npm libmpc-dev openssh-server 
sudo ufw allow 22

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source-file ~/.tmux.conf
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

sudo pip install --upgrade pip
sudo pip install --upgrade capstone
sudo pip install --upgrade pwntools
sudo pip install ropgadget one_gadget

git clone https://github.com/scwuaptx/peda.git ~/peda 
cp ~/peda/.inpurc ~/
git clone https://github.com/scwuaptx/Pwngdb.git
cp ~/Pwngdb/.gdbinit ~/
git clone https://github.com/JonathanSalwan/ROPgadget
git clone https://github.com/cloudburst/libheap.git
sudo pip3 install --user ./libheap/
echo "python from libheap import *" >> ~/.gdbinit
echo "set follow-fork-mode child" >> ~/.gdbinit
git clone https://github.com/pwndbg/pwndbg
cd pwndbg
./setup.sh
cd $HOME

sudo apt-get -y install socat
sudo apt-get -y install xinetd

# pwndbg
# reset to commitid fa326d34831
# pwndbg/pwndbg/commands/context.py
# show-flags:True show-retaddr: True
# set exception-verbose on
# set exception-debugger on
