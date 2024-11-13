##### basic new install
##### first make a directory to clone repositories

mkdir build

git clone https://github.com/DiRTYMacTruCK/rtorrent ./build

cd build

### run the following command to install most of the apps.

sudo bash get_apps.sh

cd

##### still working on automating the rest of this.

mkdir flexget
mkdir tor
mkdir tor/watch_1
mkdir tor/watch_2
mkdir .session
mkdir download_1
mkdir download_2


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
