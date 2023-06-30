#!/bin/sh
# source code https://github.com/polybar/polybar-scripts/tree/master/polybar-scripts/updates-pacman-aurhelper

if ! updates_arch=$(checkupdates 2> /dev/null | wc -l ); then
    updates_arch=0
fi

# if ! updates_aur=$(yay -Qum 2> /dev/null | wc -l); then
if ! updates_aur=$(paru -Qum 2> /dev/null | wc -l); then
# if ! updates_aur=$(cower -u 2> /dev/null | wc -l); then
# if ! updates_aur=$(trizen -Su --aur --quiet | wc -l); then
# if ! updates_aur=$(pikaur -Qua 2> /dev/null | wc -l); then
# if ! updates_aur=$(rua upgrade --printonly 2> /dev/null | wc -l); then
    updates_aur=0
fi

updatesArch=$updates_arch
updatesAur=$updates_aur

if [ "$updatesArch" -gt 0 ]; then
    echo " $updatesArch  $updatesAur"
else
    echo " $updatesArch  $updatesAur"
fi
