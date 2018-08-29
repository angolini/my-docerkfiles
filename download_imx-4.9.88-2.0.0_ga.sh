#/bin/bash

DIR=yocto-imx-bsp

sudo chown user:user $DIR

echo "mkdir $DIR/imx-4.9.88-2.0.0_ga"
mkdir -p $DIR/imx-4.9.88-2.0.0_ga
echo "cd $DIR/imx-4.9.88-2.0.0_ga"
cd $DIR/imx-4.9.88-2.0.0_ga

repo init -u https://source.codeaurora.org/external/imx/imx-manifest  -b imx-linux-rocko -m imx-4.9.88-2.0.0_ga.xml
repo sync

cat README-IMXBSP | head

echo -e "\n\n\n"

echo "cat README-IMXBSP to see the complete the options on how to build"

