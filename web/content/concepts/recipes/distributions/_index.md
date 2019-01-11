+++
title = "Distributions"
weight = 2
+++

You can't just reference the Ubuntu/Fedora/etc images already available in DockerHub. The reason is because each image must have special scripts that take into account the kernel, initramfs and root file system.

## Available

**Ubuntu**

```bash
sudo darch images pull godarch/ubuntu:cosmic
```

**Arch Linux**

```bash
sudo darch images pull godarch/arch
```

{{% notice note %}}
The base Arch image doesn't include the kernel or initramfs. You must manually install the kernel (using ```pacman```) and run ```mkinitcpio -p linux``` to generate the initramfs. Otherwise, you will get errors during upload.
{{% /notice %}}

**Void Linux**

```
# For glib-based image:
sudo darch images pull godarch/void
# For musl-based image:
sudo darch images pull godarch/void-musl
```

**Debian**

```bash
# For the debian testing distro:
sudo darch images pull godarch/debian:testing
# For hte debian stable distro:
sudo darch images pull godarch/debian:stretch
```

## Planned

If you would like to help out, refer to [godarch/distributions](https://github.com/godarch/distributions) to make a new base image.

**Gentoo**
