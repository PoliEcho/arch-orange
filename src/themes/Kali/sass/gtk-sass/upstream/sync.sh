#!/bin/sh

VERSION=3.24.13

echo "[+] Pulling version $VERSION"
echo

while read file;
do
	echo
	echo "[*] Downloading file $file"
	echo
	wget https://gitlab.gnome.org/GNOME/gtk/raw/$VERSION/gtk/theme/Adwaita/$file --timestamping

	if [ -f $file.patch ]
	then
		echo "[+] Apply patch"
		echo
		patch $file $file.patch
		echo
	fi
done <<- EOF
	_colors.scss
	_common.scss
	_drawing.scss
	_colors-public.scss
EOF

