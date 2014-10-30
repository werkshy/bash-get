
ifeq ($(BASH_GET_DEVELOP), true)
	INSTALL_CMD = ln -sf
else
	INSTALL_CMD = cp
endif

DESTDIR=${HOME}/.bash-get

.PHONY: directories init_profile

install: directories install_files init_profile

directories:
	mkdir -p ${DESTDIR}/bin
	mkdir -p ${DESTDIR}/bash_completion.d

install_files: bash-get bashrc
	echo "Installing files with $(INSTALL_CMD)"
	${INSTALL_CMD} ${PWD}/bash-get ${DESTDIR}/bin
	${INSTALL_CMD} ${PWD}/bashrc ${DESTDIR}
	${INSTALL_CMD} ${PWD}/bash_completion ${HOME}/.bash_completion
	chmod 755 ${DESTDIR}/bin/bash-get

init_profile:
	grep -q '$$HOME/.bash-get/bashrc' ~/.bashrc  >/dev/null || echo 'source $$HOME/.bash-get/bashrc' >> ~/.bashrc
