# Pixel Experience (Android 12 + Magisk) for Mi 11 Lite 5G (renoir)

To begin, build the PE package then follow installation steps.

## Pre-install

Ensure the bootloader is unlocked, see [Mi Unlock](../../misc/Mi%20Unlock.md).

## Build

To build the package, you are expected to be on Arch Linux:

- Clone the repository locally and run `cd rom/pixel-experience-renoir-12`.
- Run each script in this directory in order from `0` to `3`
- Your Android ROM package will be available in `android/pe/out/target/product/renoir`
- You now have a file with a name similar to `PixelExperience_renoir-12.1-20221001-1315-UNOFFICIAL.zip` and `boot.img` which you need for the installation step

## Install

- Flash vendor boot before continuing:

  Download vendor_boot from [gitlab.pixelexperience.org](https://gitlab.pixelexperience.org/android/vendor-blobs/wiki_blobs_renoir/-/raw/twelve/twelve/vendor_boot.img) or [mirror](https://tank.insert.moe/archive/software/android/vendor-boot/renoir_vendor_boot.img).

  Enter fastboot and run `fastboot flash vendor_boot vendor_boot.img`.

- Flash and boot recovery:

  - Get the `boot.img` built earlier.
  - Enter fastboot.
  - Run `fastboot flash boot boot.img`.
  - Run `fastboot reboot`.
  - Hold `POWER + VOL UP` to go into recovery.

- Flash the ROM:

  - Get the `.zip` built earlier.
  - While in recovery, select factory reset and confirm.
  - Then go back to main menu and select "apply update".
  - Select "apply from adb".
  - Run `adb sideload filename.zip`.

- Reboot into Pixel Experience.
