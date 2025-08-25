PYTHON_VERSION := $(shell python -V | sed 's/[[:space:]]//g' | cut -c 1-10 | tr '[:upper:]' '[:lower:]')

setup:
	apt-get update
	apt-get upgrade
	apt-get install ruby python ossp-uuid figlet pv toilet nodejs uuid-utils file util-linux binutils
	apt-get install boxes jq html2text tree toilet figlet openssl-tool brotli coreutils silversearcher-ag
	apt-get install curl xh ncurses-utils clang bc nodejs-lts ossp-uuid nala xz-utils ripgrep
	rm -rf $$PREFIX/lib/$(PYTHON_VERSION)/site-packages/requests
	pip uninstall requests -y
	pip uninstall psutil -y
	pip install phonenumbers
	pip install requests
	pip install httpie
	@gem install lolcat
	@npm -g i chalk chalk-animation
	@npm -g i bash-obfuscate
	@echo "[+] paket berhasil di setup"

id:
	@id
Run:
	@echo "[INPO] sabar ya bung sc sedang berjalan bukan stuck :v"
	@echo "[INPO] update ini mungkin run nya akan sangat lama"
	@echo "[INPO] di karenakan ulah freetutorial kontol"
	@/bin/bash new.enc
