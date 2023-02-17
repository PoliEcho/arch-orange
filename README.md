# kali-themes

This package joins together all files that are related to theming
and configuration of the visual appearance. They were formerly split
across gnome-theme-kali, kali-defaults and desktop-base.

## file structure

All "data" files (`share/*` and what's built in the kali-logos and emblems
directory) are provided by kali-themes-common while the configuration
files (`etc/*`) are provided by kali-themes.

## desktop-base integration

desktop-base integration is provided by kali-desktop-base through
registration of various files in alternatives defined by the desktop-base
package. The files are not installed in /usr/share/desktop-base/
except for a symlink tree mimicking a "destkop-base theme". That symlink
tree is pre-built in the "share/desktop-base/kali-themes" directory in the
source package.

The kali-themes-common package is also installing various symlinks
trees to mimick directories that are traditionnally handled by
desktop-base. Most notably the directories in /usr/share/wallpapers/ that
are used by KDE.

## configuration files

The configuration files stored in the "etc" sub-directory are installed
as is in the "kali-themes" package. However the files listed in
"files-to-divert" are first diverted by dpkg-divert and the actual
files are stored in /usr/share/kali-themes/etc/ and copied in their
target location by the postinst script (see debian/kali-themes.postinst).

When you add a new file that needs to be diverted, you can update
the list in "files-to-divert" and run "bin/update-maintainer-scripts"
to update the list of files in the 3 maintainer scripts.

## wallpapers

The wallpapers are provided by the kali-wallpapers-VERSION binary package
which is built by the kali-wallpapers source package. We have the Makefile
which generates some symlinks pointing to the kali-wallpapers-VERSION that
we depend upon.

Care must be taken to ensure that we depend on the right package so that
the symlinks are working. So update debian/control and Makefile at the
same time.
