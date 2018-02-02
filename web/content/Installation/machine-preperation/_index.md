+++
title = "Machine preparation"
weight = 1
+++

You can install and run Darch on your current Ubuntu/Fedora/etc distribution, but I'd prefer to start fresh.

Start by installing your preferred distribution on your host. Think of this distribution as your "recovery" image. You likely won't be booting into this unless something goes wrong.

Darch stores all of it's images on ```/var/lib/darch```. This should be configured to be a separate partition. It must use a file system and partition layout that grub2 supports (gpt, lvm, etc), since it will be interacting with those files directly during boot.

If you intend to support building Darch images within a booted Darch image, I also suggest creating a partition for ```/etc/darch``` so that you can use the fstab hook to mount it into each booted image. If you intend to do this, you will also want to mount ```/var/lib/darch``` in each image as well.