#!/bin/bash

dir=`dirname $0`
echo $dir
cd $dir
dir=`pwd`
echo $dir

suffix=`date +%s`
ls ~/.vimrc > /dev/null
if (($? == 0)); then
    echo "~/.vimrc --> ~/vimrc.$suffix"
    mv ~/.vimrc ~/vimrc.$suffix
fi
ls ~/.vim > /dev/null
if (($? == 0)); then
    echo "~/.vim --> ~/vim.$suffix"
    mv ~/.vim ~/vim.$suffix
fi
ln -s $dir/vimrc ~/.vimrc
ln -s $dir  ~/.vim
