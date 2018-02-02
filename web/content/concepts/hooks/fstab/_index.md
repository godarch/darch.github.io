+++
title = "fstab"
weight = 1
+++

When booting your images, you will most likely want to mount some partitions to persist your data. For example, a common one would be:

```
/dev/sda2               /home               ext4            defaults        0 0
```

This would mean your entire operating system will be cleaned after every reboot, except everything under ```/home```.

To configure an ```/etc/fstab``` to be used during boot, create a ```/etc/darch/hooks/fstab.confg``` file.

```
image:name=this_fstab_file
*:that_fstab_file
```

Then place your fstab in ```/etc/darch/hooks```. For example, ```/etc/darch/hooks/this_fstab_file```.