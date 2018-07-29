# kms-firmware
Firmware for use with kms drivers.

## Contributing

## Notes
These firmware modules are for use with the FreeBSD kms drm drivers.  They are
originally obtained from the linux-firmware repository, located here:
https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git

## Directory structure
The uuencoded formware files are located in amdgpukmsfw-files, i915kmsfw-files
and radeonkmsfw-files directories, for respective driver.
The directories with the same names, but without -files, contain Makefiles for
building firmware kmods for loading into the FreeBSD kernel.

## Adding new firmware
Download the firmware from the git repo above, and then uuencode the firmware.
