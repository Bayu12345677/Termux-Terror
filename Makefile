# Cara yang lebih aman untuk mengambil versi python (misal: python3.11) di Alpine
PYTHON_VERSION := $(shell python3 -c "import sys; print(f'python{sys.version_info.major}.{sys.version_info.minor}')")

setup:
	apk update
	apk upgrade
	# Menginstal semua dependensi yang tersedia di Alpine
	apk add --no-cache bash ruby python3 py3-pip nodejs npm figlet pv file util-linux binutils xxd \
		boxes jq html2text tree toilet openssl brotli coreutils the_silver_searcher xz \
		curl xh ncurses clang bc ripgrep bzip2 zip
	
	rm -rf $$PREFIX/lib/$(PYTHON_VERSION)/site-packages/requests
	
	# Menghapus & menginstal paket Python menggunakan flag global Alpine
	pip uninstall requests -y --break-system-packages || true
	pip uninstall psutil -y --break-system-packages || true
	pip install phonenumbers rich-cli requests httpie faker httpx --break-system-packages
	
	@gem install lolcat
	@npm -g i chalk chalk-animation bash-obfuscate
	@echo "[+] paket berhasil di setup"

id:
	@id

Run:
	@echo "[  INPO ] harap tunggu sedang menjalankan program"
	@echo "[  INPO ] Security Pyramid ENCIENT: 10.0.0"
	@bash new.enc
