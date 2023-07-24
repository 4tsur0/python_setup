# Install anyenv
git clone https://github.com/anyenv/anyenv ~/.anyenv
echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(anyenv init -)"' >> ~/.bash_profile

exec $SHELL -l

anyenv install --init

## install anyenv-update
mkdir -p $(anyenv root)/plugins
git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
anyenv update

# install pyenv
anyenv install pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile

exec $SHELL -l

## setup pyenv
pyenv install -l
pyenv install バージョン名 (3.11.2)

# pyenv
mkdir プロジェクトのパス
cd プロジェクトのパス
pyenv local バージョン名 (3.11.2)

# venv
cd プロジェクトのパス
python -m venv [新しい環境名]
source [環境名]/bin/activate ## アクティベート

# pythonのバージョン確認
python -V # バージョン名

# python init
pip3 install --upgrade pip
pip3 install --upgrade setuptools
pip3 install numpy scipy matplotlib Pillow ipython scikit_learn jupyter pandas

# pythonの終了
deactivate ## 終了
