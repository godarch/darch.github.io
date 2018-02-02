+++
title = "hostname"
weight = 2
+++

You may want each of your images to have a custom ```/etc/hostname```.

By default, this hook will attempt to use the ```/etc/hostname``` present on the machine that run the hooks.

To change the hostname for your staged images, create a ```/etc/darch/hooks/hostname.config``` file.

```
image:tag=mycomputer1
*=mycomputer2
```