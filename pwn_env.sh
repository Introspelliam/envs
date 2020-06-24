#!/bin/bash 

cd $HOME
sudo dpkg --add-architecture i386
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install binutils nasm
sudo apt-get -y install gcc-multilib g++-multilib
sudo apt-get -y install libc6-dev-i386
sudo apt-get -y install git
sudo apt-get -y install libc6-dbg libc6-dbg:i386
sudo apt-get -y install nmap libseccomp-dev
sudo apt-get -y install python-pip libssl-dev
sudo apt-get -y install gdb
sudo pip install --upgrade pip
sudo pip install --upgrade capstone
sudo pip install --upgrade pwntools
sudo pip install ropgadget

git clone https://github.com/scwuaptx/peda.git ~/peda 
cp ~/peda/.inpurc ~/
git clone https://github.com/scwuaptx/Pwngdb.git
cp ~/Pwngdb/.gdbinit ~/
git clone https://github.com/JonathanSalwan/ROPgadget

git clone https://github.com/cloudburst/libheap.git
sudo pip3 install --user ./libheap/
echo "python from libheap import *" >> ~/.gdbinit
echo "set follow-fork-mode child" >> ~/.gdbinit

sudo apt-get -y install socat
sudo apt-get -y install xinetd

# pwndbg
# reset to commitid 351d479
# pwndbg/pwndbg/commands/context.py
# show-flags:True show-retaddr: True
