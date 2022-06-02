#!/bin/sh

# Kill xfconf to force reading the modified configuration
pkill -9 xfconf


sed -i -zE 's|(\s+<value[^\n]+)\1|<value type="string" value="xfce4-terminal-emulator.desktop"/>\1|' \
  ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml

# Remove autorun file after first run
rm -f ~/.config/autostart/fix-duplicated-xfce-panel-launcher.desktop
