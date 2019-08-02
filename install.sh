#!/bin/bash
echo "Installing dotfiles"

# Should probably loop through these when we have more...
#if [ -f ~./.tmux.conf ]
#then
#  mv ~/.tmux.conf ~/.tmux-orig
#fi

#ln -fs "$(pwd)/.tmux.conf" "${HOME}/.tmux.conf"

for f in $(pwd)
do
  echo $(basename $f)
  if [ -f $f ]; then
    echo "exists"
  fi
done
