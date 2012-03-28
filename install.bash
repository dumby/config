repo=`dirname $0`
if [ -f $HOME/.bashrc ]; then
    echo "~/.bashrc already exists, overwriting...";
else
    echo "installing .bashrc"
fi
echo "copying $repo/.bashrc to $HOME/.bashrc"
cp $repo/.bashrc $HOME/.bashrc
 
echo "sourcing .bashrc"
source $HOME/.bashrc

if [ -f $HOME/.vimrc ]; then
    echo "~/.vimrc already exists,overwriting";
else
    echo "installing .vimrc"
fi
echo "copying $repo/.vimrc to $HOME/.vimrc";
cp $repo/.vimrc $HOME/.vimrc

