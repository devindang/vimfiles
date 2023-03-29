# !/bin/bash | zsh
if [[ -z $VIM_HOME ]]; then
    export VIM_HOME=~/.vimfiles
fi

# universal
[[ -d ~/.vim ]] || ln -sfnv $VIM_HOME ~/.vim

# windows
[[ -f ~/.vimrc ]] || ln -sfnv $VIM_HOME/.vimrc ~/.vimrc
[[ -f ~/.gvimrc ]] || ln -sfnv $VIM_HOME/.gvimrc ~/.gvimrc
