setup:
	apt-get update
	apt-get upgrade
	apt-get install ruby python ossp-uuid figlet pv toilet nodejs uuid-utils
	apt-get install curl xh ncurses-utils clang bc nodejs-lts ossp-uuid nala
	pip install requests
	pip install httpie
	pip install phonenumbers
	@gem install lolcat
	@npm -g i chalk chalk-animation
	@npm -g i bash-obfuscate
	@echo "[+] paket berhasil di setup"

id:
	@id
Run:
	@bash new.enc
