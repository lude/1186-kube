#!/bin/bash

cd /src/op25/op25/gr-op25_repeater/apps
#python3 ./rx.py --nocrypt --args "rtl=1" --gains 'lna:36' -S 960000 -X -q 0 -v 1 -2 -V -l http:0.0.0.0:8091 -w -W udplistener-dtrs.udplistener -u 23456 -T trunk.tsv
python3 ./multi_rx.py -v 1 -c colorado_dtrs.json 2>&1
