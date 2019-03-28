#!/bin/bash

git clone https://github.com/silmanduin66/vstax-arch.git

cd vstax-arch

makepkg -si

./usr/share/vstax2018/vstax2018.sh &

sleep 5

echo "pdf.viewer.cmd" >> '/home/teclis/.Kanton VS/VSTax 2018/VSTax 2018.properties'