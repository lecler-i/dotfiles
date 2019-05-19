#!/usr/bin/env sh
VPN_ICON=
if nmcli c show  --active | grep -E '(vpn|tun)' > /dev/null ; then
    VPN_INFOS=$(curl -s ifconfig.io/all.json | jq -r '[.country_code, .ip] | @tsv')
    COUNTRY=$(echo $VPN_INFOS | cut -f1 -d ' ')
    IP=$(echo $VPN_INFOS | cut -f2 -d ' ')
    echo "%{F#0f0}${VPN_ICON}%{F-} ${COUNTRY} - ${IP}"
else
    echo "%{F#f00}${VPN_ICON}%{F-}"
fi

