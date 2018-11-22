+++
title = "Test drive"
weight = 1
pre = "<b>1. </b>"
+++

Want to try Darch quickly without committing too much effort? Try it out in a VM!

{{% notice note %}}
**BEFORE PROCEEDING**: Although this page is still valid, there is a much easier way to try out Darch, using pre-built VM images (vhd, vmdk, etc).
Read [this](https://pknopf.com/post/2018-11-09-give-ubuntu-darch-a-quick-ride-in-a-virtual-machine/) for more info.
{{% /notice %}}

## Requirements

1. Any Linux-based distribution can be used as a guest operating system.
2. Must be using grub2.

{{% notice note %}}
If you setup a VM with Arch as guest, you may use a variation of [this](https://github.com/pauldotknopf/darch-recipes/blob/master/machine-bootstrap) script during the installation processes. This also installs Darch for you. If you go down this route, you can jump to [Step 2: Obtaining recipes](#step-2-obtaining-recipes).
{{% /notice %}}

## Step 1: Install Darch

If you are on Arch Linux, you can install it from the [AUR](https://aur.archlinux.org/packages/darch/). Otherwise, head over to the [GitHub Releases](https://github.com/godarch/darch/releases) and download the Darch binaries. There are two packages you can download.

* ```darch-amd64-with-runtime.tar.gz``` - Contains Darch, but with containerd and runc baked into it.
* ```darch-amd64.tar.gz``` - Contains just Darch.

If you download Darch without the runtime backed into it, you must manually install a valid version of containerd (>=1.0.1) and runc on your system.

After you extract/install the tarball, ensure that containerd is running (```sudo systemctl start containerd```).

To verify containerd is running, run ```sudo ctr version```. To verify Darch can connect to it, run ```sudo darch images list```.

To enable Darch boot entries in grub, run ```sudo grub-mkconfig -o /boot/grub/grub.cfg```.

That's it! Darch is installed and running!

## Step 2: Obtaining recipes

You can get images in 1 of 2 ways.

### Option 1: Pre-built images

You may use my prebuilt Arch Linux images to test the waters.

```
sudo darch images pull pauldotknopf/darch-arch-base:latest && \
sudo darch stage upload pauldotknopf/darch-arch-base:latest
```

Also, you may use ```pauldotknopf/darch-arch-plasma:latest``` if you wish to boot into a KDE environment.

### Option 2: Build your own

You can compile the images yourself. Normally, you'd want to utilize your own recipes, but you can use mine if you like.

```bash
git clone git@github.com:pauldotknopf/darch-recipes.git
cd darch-recipes
sudo darch images pull godarch/arch:latest
sudo darch recipes build base
sudo darch stage upload base
```

## Step 3: Reboot!

That's it! Reboot your VM to see the new grub entry!

Next, you may want to dig into hooks to setup persisted mount points (```/home```, ```/var/lib/games```, etc) and custom ```/etc/hostname``` files.
