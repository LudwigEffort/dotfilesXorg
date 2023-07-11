#!/usr/bin/env bash

#notify-send "Getting list of available Wi-Fi networks..."
dunstify -i "/home/ludwig/.local/share/icons/fontawesome/wifi.svg" "List of available Wi-Fi..."
# Get a list of available wifi connections and morph it into a nice-looking list
wifi_list=$(nmcli --fields "SECURITY,SSID" device wifi list | sed 1d | sed 's/  */ /g' | sed -E "s/WPA*.?\S/ /g" | sed "s/^--/ /g" | sed "s/  //g" | sed "/--/d")

connected=$(nmcli -fields WIFI g)
if [[ "$connected" =~ "enabled" ]]; then
	toggle="󰖪  Disable Wi-Fi"
elif [[ "$connected" =~ "disabled" ]]; then
	toggle="󰖩  Enable Wi-Fi"
fi

# Use rofi to select wifi network
chosen_network=$(echo -e "$toggle\n$wifi_list" | uniq -u | rofi -dmenu -i -selected-row 1 -p "Wi-Fi SSID: " )
# Get name of connection
chosen_id=$(echo "${chosen_network:3}" | xargs)

if [ "$chosen_network" = "" ]; then
	exit
elif [ "$chosen_network" = "󰖩  Enable Wi-Fi" ]; then
	nmcli radio wifi on | dunstify -i "/home/ludwig/.local/share/icons/fontawesome/wifi.svg" "Wi-Fi Enabled"
elif [ "$chosen_network" = "󰖪  Disable Wi-Fi" ]; then
	nmcli radio wifi off | dunstify -i "/home/ludwig/.local/share/icons/fontawesome/wifi.svg" "Wi-Fi Disabled"
else
	# Message to show when connection is activated successfully
	success_message="You are now connected to \"$chosen_id\"."
	# Get saved connections
	saved_connections=$(nmcli -g NAME connection)
	if [[ $(echo "$saved_connections" | grep -w "$chosen_id") = "$chosen_id" ]]; then
		nmcli connection up id "$chosen_id" | grep "successfully" && dunstify -i "/home/ludwig/.local/share/icons/fontawesome/wifi.svg" "Connection Established" "$success_message"
	else
		if [[ "$chosen_network" =~ "" ]]; then
			wifi_password=$(rofi -dmenu -p "Password: " )
		fi
		nmcli d wifi connect "$chosen_id" password "$wifi_password" | grep "successfully"
	fi
fi
