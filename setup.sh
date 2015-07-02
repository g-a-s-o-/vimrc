#!/bin/sh

CWD=`dirname $0`
echo ${CWD}
SCRIPT_DIR=`cd ${CWD} && pwd`
echo ${SCRIPT_DIR}

if [ -e ~/.vim ]
then
	echo "~/.vim/ is exist."
else
	echo "Create ~/.vim/ "
	mkdir ~/.vim
fi

if [ -e ~/.vim/backup ]
then
	echo "~/.vim/backup is exist."
else
	echo "Create ~/.vim/backup "
	mkdir ~/.vim/backup
fi


if [ `uname` = "Darwin" ]
then
echo "Creating ~/.vimrc"
	cat ${SCRIPT_DIR}/mac ${SCRIPT_DIR}/vimrc > ~/.vimrc
else
	cat ${SCRIPT_DIR}/unix ${SCRIPT_DIR}/vimrc > ~/.vimrc
fi

exit 0
