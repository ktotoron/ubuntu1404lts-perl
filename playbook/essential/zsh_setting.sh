#!/bin/bash

if [[ ! -e $HOME/.zshrc.antigen ]];then

  # $HOME/.zshrc.antigen
  cat << 'ZSH_AG_END' > $HOME/.zshrc.antigen
source ~/.zsh_ext/antigen.git/antigen.zsh

# Bundles from the default repo
antigen-bundle git
antigen-bundle autojump
antigen-bundle zsh-users/zsh-syntax-highlighting
antigen-bundle zsh-users/zsh-completions
antigen-bundle tetsujin/zsh-function-mysql
ZSH_AG_END


  # $HOME/.zshrc
  cat << 'ZSHRC_END' >> ~/.zshrc

source ~/.zshrc.antigen

ZSHRC_END

fi


