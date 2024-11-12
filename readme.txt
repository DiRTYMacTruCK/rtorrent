mkdir build
cd build
git clone https://github.com/DiRTYMacTruCK/rtorrent ./

cd

mkdir flexget
mkdir tor
mkdir tor/watch_1
mkdir tor/watch_2
mkdir .session
mkdir download_1
mkdir download_2


sudo apt update
sudo apt upgrade -y
sudo apt install python3 -y
sudo apt install python3-virtualenv -y
sudp apt install python3-pip -y
sudp apt install screen -y
sudo apt install rtorrent -y
sudo apt install emacs -y


git clone https://github.com/Flexget/Flexget.git ~/flexget

virtualenv ~/flexget
cd flexget
bin/pip install -e .

make sure ~/.config/flexget exist.  If not create folders

cd ~/build
cp congig.yml ~/.config/flexget


edit crontab
crontab -e
add lines
* * * * * /usr/bin/screen -dm -s tr rtorrent
5 * * * * ~/flexget/bin/flexget --cron execute
