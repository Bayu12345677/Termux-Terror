PYTHON_VERSION := $(shell python -V | sed 's/[[:space:]]//g' | cut -c 1-10 | tr '[:upper:]' '[:lower:]')

setup:
	apt-get update -y
	apt-get upgrade -y
	apt-get install ruby python ossp-uuid figlet pv toilet nodejs uuid-utils file util-linux binutils -y
	apt-get install boxes jq html2text tree toilet figlet openssl-tool brotli coreutils silversearcher-ag -y
	apt-get install curl xh ncurses-utils clang bc nodejs-lts ossp-uuid nala xz-utils ripgrep -y bzip2
	rm -rf $$PREFIX/lib/$(PYTHON_VERSION)/site-packages/requests
	pip uninstall requests -y
	pip uninstall psutil -y
	pip install phonenumbers
	pip install rich-cli
	pip install requests
	pip install httpie
	@gem install lolcat
	@npm -g i chalk chalk-animation
	@npm -g i bash-obfuscate
	@echo "[+] paket berhasil di setup"

id:
	@id
Run:
	@echo "[  INPO ] harap tunggu sedang menjalankan program"
	@echo "[  INPO ] Security Pyramid ENCIENT: 10.0.0"
	@bash new.enc
