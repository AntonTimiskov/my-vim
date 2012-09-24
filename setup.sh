#!/bin/bash
sudo apt-get install exuberant-ctags ack ack-grep tmux
cp "$(cd $(dirname $0) && pwd)/vimrc" "$(cd $(dirname $0) && cd .. && pwd)/.vimrc"
