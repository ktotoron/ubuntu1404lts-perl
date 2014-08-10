#!/bin/bash


if [[ ! -e $HOME/.plenv ]];then
   git clone git://github.com/tokuhirom/plenv.git $HOME/.plenv
   echo 'export PATH="$HOME/.plenv/bin:$PATH"' >> $HOME/.zshrc
   echo 'eval "$(plenv init -)"' >> $HOME/.zshrc
   git clone git://github.com/tokuhirom/Perl-Build.git $HOME/.plenv/plugins/perl-build/
   $HOME/.plenv/bin/plenv install 5.10.1
   $HOME/.plenv/bin/plenv rehash
   $HOME/.plenv/bin/plenv global 5.10.1 
   $HOME/.plenv/bin/plenv install-cpanm
   $HOME/.plenv/bin/plenv rehash
   $HOME/.plenv/shims/cpanm Carton 
fi

