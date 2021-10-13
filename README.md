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
For v4.16 (Supported on FreeBSD 12.X) :

DMC firmware : https://github.com/FreeBSDDesktop/kms-drm/blob/drm-v4.16/drivers/gpu/drm/i915/intel_csr.c#L37

GuC firmware : https://github.com/FreeBSDDesktop/kms-drm/blob/drm-v4.16/drivers/gpu/drm/i915/intel_guc_fw.c#L33

HuC firmware : https://github.com/FreeBSDDesktop/kms-drm/blob/drm-v4.16/drivers/gpu/drm/i915/intel_huc.c#L45

For 5.4-lts (Supported on FreeBSD 13.0 and above) :

DMC firmware : https://github.com/freebsd/drm-kmod/blob/5.4-lts/drivers/gpu/drm/i915/intel_csr.c#L42

GuC/HuC firmware : https://github.com/freebsd/drm-kmod/blob/5.4-lts/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c#L41

For 5.5-stable (Supported on FreeBSD 13-STABLE and above) :

DMC firmware : https://github.com/freebsd/drm-kmod/blob/5.5-stable/drivers/gpu/drm/i915/intel_csr.c#L42

GuC/HuC firmware : https://github.com/freebsd/drm-kmod/blob/5.5-stable/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c#L45

For 5.6-stable (Supported on FreeBSD 13-STABLE and above) :

DMC firmware https://github.com/freebsd/drm-kmod/blob/5.6-stable/drivers/gpu/drm/i915/intel_csr.c#L42

GuC/HuC firmware : https://github.com/freebsd/drm-kmod/blob/5.6-stable/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c#L45

Download the firmware from the git repo above and do one commit related to the drm-kmod version bump.
So if upgrading to drm vX.Y needs three new firmware for different Intel hardware do one commit for the three.
