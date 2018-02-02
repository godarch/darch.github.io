+++
title = "Installing Darch"
weight = 2
+++

After you have your machine prepared and configured, you should install Darch.

If you are on Arch Linux, you can install it from the [AUR](https://aur.archlinux.org/packages/darch/). Otherwise, head over to the [GitHub Releases](https://github.com/godarch/darch/releases) and download the Darch binaries. There are two packages you can download.

* ```darch-amd64-with-runtime.tar.gz``` - Contains Darch, but with containerd and runc baked into it.
* ```darch-amd64.tar.gz``` - Contains just Darch.

If you download Darch without the runtime backed into it, you must manually install a valid version of containerd (>=1.0.1) and runc on your system. I recommend using the download with the runtime bundled since the availability of containerd/runc in distributions are limited ATM.

By default, containerd will want to store it's images/data in ```/var/lib/containerd```. I recommend changing this to ```/var/lib/darch/containerd``` so that your images can exist on a single partition.

**/etc/containerd/config.toml**
```toml
root = "/var/lib/darch/containerd"
```

Make sure your containerd service is running (```sudo systemctl enable containerd && sudo systemctl start containerd```).

After everything is up an running, you should be able to run ```sudo darch images list``` without issue.

Now you can start [building recipes]({{< ref "concepts/recipes/_index.md" >}}) and [staging images]({{< ref "concepts/stage/_index.md">}})!