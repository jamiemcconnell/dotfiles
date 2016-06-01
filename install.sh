#!/bin/bash
echo "Installing dotfiles"

if [ -f ~./spacemacs ]
then
  mv ~/.spacemacs ~/.spacemacs-orig
fi

ln -fs $(pwd)/spacemacs ~/.spacemacs
