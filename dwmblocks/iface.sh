#!/bin/bash


iface="${1}"

[[ -z $iface ]] && exit 1

itype="${2:-E}"

state=$(cat /sys/class/net/${iface}/operstate)

ip_addr=$(ip -4 addr show ${iface}| awk -F'[ /]+' '/inet /{print $3}')

info="${ip_addr}"

if [[ "${state}" == "down" ]]
then
    info="${state}"
fi

printf "%s: %s\n" "$itype" "$info"
