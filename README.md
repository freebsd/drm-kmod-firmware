# drm-kmod-firmware
Firmware for use with drm-kmod drivers.

## Contributing

## Notes
These firmware modules are for use with the FreeBSD kms drm drivers.  They are
originally obtained from the linux-firmware repository, located here:
https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git

## Directory structure
The firmware files are located in amdgpukmsfw-files, i915kmsfw-files
and radeonkmsfw-files directories, for respective driver.
The directories with the same names, but without -files, contain Makefiles for
building firmware kmods for loading into the FreeBSD kernel.

## Adding new firmware
### Intel
Intel firmwares are versioned so we just import the needed ones.
Since there is multiple drm-kmod version supported on the different
version of FreeBSD we need different versions of the firmwares too.

For 5.10-lts (Supported on FreeBSD 13.1 and above) :

DMC firmware : https://github.com/freebsd/drm-kmod/blob/5.10-lts/drivers/gpu/drm/i915/display/intel_csr.c#L43

GuC/HuC firmware : https://github.com/freebsd/drm-kmod/blob/5.10-lts/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c#L53

For 5.15-lts (Supported on FreeBSD 14.0 and above) :

DMC firmware : https://github.com/freebsd/drm-kmod/blob/5.15-lts/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c#L50

GuC/HuC firmware : https://github.com/freebsd/drm-kmod/blob/5.15-lts/drivers/gpu/drm/i915/display/intel_dmc.c#L48

For 6.1-lts (Supported on FreeBSD 15.0 and above) :

DMC firmware : https://github.com/freebsd/drm-kmod/blob/6.1-lts/drivers/gpu/drm/i915/display/intel_dmc.c#L55

GuC/HuC firmware : https://github.com/freebsd/drm-kmod/blob/6.1-lts/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c#L50

For 6.6-lts (Supported on FreeBSD 15.0 and above) :

DMC firmware : https://github.com/freebsd/drm-kmod/blob/6.6-lts/drivers/gpu/drm/i915/display/intel_dmc.c#L96

GuC/HuC firmware : https://github.com/freebsd/drm-kmod/blob/6.6-lts/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c#L90

Download the firmware from the git repo above and do one commit related to the drm-kmod version bump.
So if upgrading to drm vX.Y needs three new firmware for different Intel hardware do one commit for the three.
