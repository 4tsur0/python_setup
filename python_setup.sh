# Install anyenv

git clone https://github.com/anyenv/anyenv ~/.anyenv
echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bash_profile
anyenv init
echo 'eval "$(anyenv init -)"' >> ~/.bash_profile
anyenv install --init

## install anyenv-update
mkdir -p $(anyenv root)/plugins
git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
anyenv update

# install pyenv
anyenv install pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc

## setup pyenv
pyenv install -l
pyenv install バージョン名 (3.11.2)

## pyenv
mkdir プロジェクトのパス
cd プロジェクトのパス
pyenv local バージョン名 (3.11.2)

## venv
cd プロジェクトのパス
python -m venv [新しい環境名]
source [環境名]/bin/activate ## アクティベート
deactivate ## 終了
