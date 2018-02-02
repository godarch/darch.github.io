+++
title = "Stage"
weight = 3
+++

The stage is where images are configured to be bootable. You can view images that you can currently boot using:

```
sudo darch stage list
```

To upload a image that you have built/pulled:

```
sudo darch stage upload myimage:latest
```

The uploading process does a few things:

* Generating a ```squashfs``` image that represents your root file system.
* Generating an initramfs that is capable of finding your ```squashfs```, mounting, and ```chroot``` into it.
* Builds the kernel
* Updates grub entries so that your image becomes available for selection.