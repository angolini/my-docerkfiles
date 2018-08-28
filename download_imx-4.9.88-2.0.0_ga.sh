#/bin/bash

echo "mkdir imx-4.9.88-2.0.0_ga"
mkdir imx-4.9.88-2.0.0_ga
echo "cd imx-4.9.88-2.0.0_ga"
cd imx-4.9.88-2.0.0_ga
repo init -u https://source.codeaurora.org/external/imx/imx-manifest  -b imx-linux-rocko -m imx-4.9.88-2.0.0_ga.xml
repo sync
