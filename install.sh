#!/bin/bash

dir=`dirname $0`
echo $dir
cd $dir
dir=`pwd`
echo $dir


ln -s $dir/vimrc ~/.vimrc
ln -s $dir  ~/.vim
