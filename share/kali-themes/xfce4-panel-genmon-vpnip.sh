#!/bin/sh

interface="$(ip tuntap show | cut -d : -f1 | head -n 1)"
ip="$(ip a s "${interface}" 2>/dev/null \
        | grep -o -P '(?<=inet )[0-9]{1,3}(\.[0-9]{1,3}){3}')"

if [ "${ip}" != "" ]; then
  printf "<icon>network-vpn-symbolic</icon>"
  printf "<iconclick>bash -c 'printf ${ip} | xclip -selection clipboard'</iconclick>"
  printf "<txt>${ip}</txt>"
  if command -v xclip; then
      printf "<tool>VPN IP (click icon to copy)</tool>"
  else
      printf "<tool>VPN IP (install xclip to copy to clipboard)</tool>"
  fi
else
  printf "<txt></txt>"
fi
