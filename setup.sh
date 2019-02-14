#!/bin/sh
#put file on ~/ and do chmod +x setup.sh
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y virtualenv -y
sudo apt-get install -y python-pip -y
sudo apt-get dist-upgrade -y
sudo apt-get install -y build-essential checkinstall python-dev python-setuptools python-pip python-smbus
sudo apt-get install -y libffi-dev libreadline-gplv2-dev libncursesw5-dev libssl-dev \
    libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev zlib1g-dev openssl
cd /usr/src
sudo wget https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tgz
sudo tar xzf Python-3.7.0.tgz
cd Python-3.7.0
sudo ./configure --enable-optimizations
sudo make altinstall
python3.7 -V
mkdir ~/project
cd ~/project
sudo apt-get install -y git
sudo apt-get install -y gunicorn
sudo apt-get install -y nginx
virtualenv --python python3.7 venv
source venv/bin/activate
pip install wheel
pip install cookiecutter
pip install flask
pip install gunicorn
cat > ~/.bash_aliases <<EOF /
alias1='sudo nano ~/.bash_aliases' /
alias2='sudo source ~/.bashrc' /
EOF
