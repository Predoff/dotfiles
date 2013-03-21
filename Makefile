PWD ?= `pwd`
HOME ?= `echo $$HOME`
ZSHRC			= .zshrc
GITIGNORE		= .gitignore
VIMRC			= .vimrc

backupfiles:
	mkdir -p ${HOME}/.dotfiles.old 2> /dev/null
	if [ -f "${HOME}/${ZSHRC}" ]; then mv -f ${HOME}/${ZSHRC} ${HOME}/.dotfiles.old 2> /dev/null; fi
	if [ -f "${HOME}/${GITIGNORE}" ]; then mv -f ${HOME}/${GITIGNORE} ${HOME}/.dotfiles.old 2> /dev/null; fi
	if [ -f "${HOME}/${VIMRC}" ]; then mv -f ${HOME}/${VIMRC} ${HOME}/.dotfiles.old 2> /dev/null; fi

symlinks:
	ln -s ${PWD}/${ZSHRC} ${HOME}/${ZSHRC}
	ln -s ${PWD}/${GITIGNORE} ${HOME}/${GITIGNORE}
	ln -s ${PWD}/${VIMRC} ${HOME}/${VIMRC}

install: backupfiles symlinks
