#!/data/data/com.termux/files/usr/bin/bash

: 'Credit ViewTech Official setuP'

pyversion=$(python --version 2>&1)

if (grep -o "3.13" <<< "$pyversion") &>/dev/null; then
  echo "[?] python saat ini sudah ada di versi 3.13"
  exit
fi

if (test -z "$(command -v pyenv)"); then
  echo "[?] install pyenv"
  bash < <(curl https://pyenv.run)
  echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
  echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
  echo 'eval "$(pyenv init -)"' >> ~/.bashrc
  source ~/.bashrc
fi

echo "[?] downgrade py ${pyversion} -> 3.13.5"
export CPPFLAGS="-Wno-error=implicit-function-declaration -Wno-implicit-function-declaration -Wno-error=int-conversion -Wno-int-conversion"
export LDFLAGS="-latomic"
export ac_cv_func_getpwent=no
export ac_cv_func_copy_file_range=no
export ac_cv_func_sendfile=no
export ac_cv_func_posix_spawn=no
export ac_cv_func_posix_spawnp=no
export PYTHON_CONFIGURE_OPTS="--disable-shared"
pyenv install 3.13.5


echo "[>] python versi 3.13 sudah berhasil di install"
echo "[>] jalankan perintah berikut : 
bash
pyenv global 3.13
pkill -9 -u \$(whoami)

lalu masuk kembali ke termux 
cd Checker-Scammer 
make install
just run
"
# sleep 1
# cat << EOF
# ----------------------------------------
# jalankan perintah berikut

# python3.13 -m venv venv
# source venv/bin/activate
# make install
# pip install -r req.txt
# just run
# EOF


