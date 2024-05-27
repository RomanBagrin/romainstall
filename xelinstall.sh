#!/bin/sh
apt update
apt install screen -y 
mkdir xel
cd xel
wget https://github.com/rigelminer/rigel/releases/download/1.17.3/rigel-1.17.3-linux.tar.gz
tar -xvf rigel-1.17.3-linux.tar.gz
cd rigel-1.17.3-linux
cat << EOF > ./mine.sh
./rigel -a xelishash+zil -o [1]stratum+tcp://cn.xel.k1pool.com:9351 -u [1]KrMGESXvuLwpdpsNVe8SJsDMFyWr5L6a9f7 -o [2]stratum+tcp://.zil.k1pool.com:1111 -u [2]KrMGESXvuLwpdpsNVe8SJsDMFyWr5L6a9f7 --zil-countdown -w test 
EOF
chmod +x ./mine.sh
screen -dmS mining bash ./mine.sh

