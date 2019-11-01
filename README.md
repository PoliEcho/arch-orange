# kali-themes

This package joins together files that were split across gnome-theme-kali,
kali-defaults and desktop-base.

The file structure has been revamped to make it easier to see everything
that needs to be provided.

## desktop-base integration

To create a new theme that integrates well into desktop-base, you need to
provide appropriate files in the following directories:

* Wallpapers: background images in different resolutions with GNOME and
  KDE meta-information.
* Gnome-Backgrounds: an XML file defining available wallpapers.
* Grub-Background: grub background image and other associated settings
  used by the default grub menu.
* LockScreen: wallpapers used by the screenlocker
* LoginScreen: wallpaper used on the login screen (GDM at least)
* Plymouth-Theme: theme used by plymouth (boot splash screen)

The following directories are also used by desktop-base but they don't
need any change for a new theme as the Kali logo and emblems are unlikely
to need any modification:
* emblems
* kali-logos

## Other integrations

* Color-Schemes: color schemes for various applications and widgets
* Window-Theme: Desktop/GTK themes
* Icon-Theme: various icon sets
* Grub-Theme: theme for Grub

## TODO

* The "Backgrounds" directory needs to be replaced with proper
  "Wallpapers".
* We should see whether the "Grub-Theme" directory can be folded
  into "Grub-Background" in some way.
