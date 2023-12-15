## Theme files
- BIOS (Syslinux)
	- live:  
		- stdmenu.cfg ->  
                 `live-build-config/kali-config/common/includes.binary/isolinux/stdmenu.cfg`
		- syslinux-splash.png ->  
                 `live-build-config/kali-config/common/includes.binary/isolinux/splash.png`
	- installer:  
		- stdmenu.cfg ->  
                 `debian-installer/build/boot/x86/stdmenu.cfg`
		- syslinux-splash.png ->  
                 `debian-installer/build/boot/x86/pics/kali.png`

- UEFI (Grub)
	- live:  
		- config.cfg ->  
                 `live-build-config/kali-config/common/bootloaders/grub-pc/config.cfg`  
		- grub-splash.png ->  
                 `live-build-config/kali-config/common/bootloaders/grub-pc/splash.png`  
		- theme.txt ->  
                 `live-build-config/kali-config/common/bootloaders/grub-pc/theme/theme.txt`  
	- installer:  
		- config.cfg ->  
                 `debian-installer/build/boot/x86/grub/grub-efi.cfg`  
		- grub-splash.png ->  
                 `debian-installer/build/boot/x86/pics/kali.png`  
		- theme.txt ->  
                 `debian-cd/data/kali-rolling/grub-theme.in`
