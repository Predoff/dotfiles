PWD ?= `pwd`
HOME ?= `echo $$HOME`
ZSHRC			= .zshrc
GITIGNORE		= .gitignore
VIMRC			= .vimrc
VIMFOLDER       = ".vim/"
OHMYZSH         = ".oh-my-zsh/"

backupfiles:
	mkdir -p ${HOME}/.dotfiles.old 2> /dev/null
	if [ -f "${HOME}/${ZSHRC}" ];     then mv -f ${HOME}/${ZSHRC} ${HOME}/.dotfiles.old 2> /dev/null; fi
	if [ -f "${HOME}/${GITIGNORE}" ]; then mv -f ${HOME}/${GITIGNORE} ${HOME}/.dotfiles.old 2> /dev/null; fi
	if [ -f "${HOME}/${VIMRC}" ];     then mv -f ${HOME}/${VIMRC} ${HOME}/.dotfiles.old 2> /dev/null; fi
	if [ -f "${HOME}/${VIMFOLDER}/" ];        then mv -f ${HOME}/${VIMFOLDER}  ${HOME}/.vim.old 2> /dev/null; fi
	if [ -f "${HOME}/${OHMYZSH}/" ];        then mv -f ${HOME}/${OHMYZSH}  ${HOME}/.oh-my-szh.old 2> /dev/null; fi

symlinks:
	ln -s ${PWD}/${ZSHRC} ${HOME}/${ZSHRC}
	ln -s ${PWD}/${GITIGNORE} ${HOME}/${GITIGNORE}
	ln -s ${PWD}/${VIMRC} ${HOME}/${VIMRC}
	ln -s ${PWD}/${VIMFOLDER} ${HOME}/${VIMFOLDER}
	ln -s ${PWD}/${OHMYZSH} ${HOME}/${OHMYZSH}

install: backupfiles symlinks
