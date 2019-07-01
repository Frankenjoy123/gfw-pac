#!/bin/bash

echo "start gfw-pac.py"
./gfw-pac.py -i gfwlist.txt \
                 -f gfw.pac \
                 -p "SOCKS5 127.0.0.1:1081; SOCKS 127.0.0.1:1081; DIRECT;" \
                 --user-rule=custom-domains.txt \
                 --direct-rule=direct-domains.txt \
                 --localtld-rule=local-tlds.txt \
                 --ip-file=delegated-apnic-latest.txt

echo "copy to v2Ray"
cp /Users/zhouxiaowu/Library/Application\ Support/V2RayX/pac/pac.js /Users/zhouxiaowu/Library/Application\ Support/V2RayX/pac/pac.js.bak
cp ./gfw.pac /Users/zhouxiaowu/Library/Application\ Support/V2RayX/pac/pac.js