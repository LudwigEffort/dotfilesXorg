#!/bin/sh
#https://github.com/polybar/polybar-scripts/tree/master/polybar-scripts/vpn-nordvpn-status

STATUS=$(nordvpn status | grep Status | tr -d ' ' | cut -d ':' -f2)

if [ "$STATUS" = "Connected" ]; then
    echo "%{F#8ec07c}%{A1:nordvpn d:}$(nordvpn status | grep City | cut -d ':' -f2)%{A}%{F-}"
else
    echo "%{F#fb4934}%{A1:nordvpn c:} No VPN%{A}%{F-}"
fi
