#!/bin/bash

wget -O - --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:120.0) Gecko/20100101 Firefox/120.0" https://www.dan.me.uk/torlist/?exit | awk '{print "deny",$0";"}' | sed '1 i\# Lista de direcciones IP de TOR' > /etc/nginx/torlist
