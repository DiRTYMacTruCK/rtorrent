mkdir build
cd build
git clone https://github.com/DiRTYMacTruCK/rtorrent ./

cd

sudo apt update
sudo apt upgrade -y
sudo apt install python3 -y
sudp apt install screen -y
sudo apt install rtorrent -y

mkdir flexget
git clone https://github.com/Flexget/Flexget.git ~/flexget

virtualenv ~/flexget

edit crontab
crontab -e
add lines
* * * * * /usr/bin/screen -dm -s tr rtorrent
5 * * * * ~/flexget/bin/flexget --cron execute
