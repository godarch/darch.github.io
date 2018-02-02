+++
title = "Distributions"
weight = 2
+++

You can't just reference the Ubuntu/Fedora/etc images already available in DockerHub. The reason is because each image must have special scripts that take into account the kernel, initramfs and root file system.

## Available

**Arch Linux**

```bash
sudo darch images pull docker.io/godarch/darc
```

## Planned

If you would like to help out, refer to [godarch/distributions](https://github.com/godarch/distributions) to make a new base image.

**Gentoo**

**Void Linux**

**Debian stable/testing**

**Ubuntu**