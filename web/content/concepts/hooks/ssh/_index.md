+++
title = "ssh"
weight = 3
+++

If you ever ssh into your machines, you'd want to host keys to be the same.

When this hook is first ran, it will copy your ssh keys to ```/etc/darch/ssh/default```.

On each boot, the contents of ```/etc/darch/ssh/default``` will be applied to ```/etc/ssh```.

This will likely get expanded in the future to support different ssh host keys for different machines.