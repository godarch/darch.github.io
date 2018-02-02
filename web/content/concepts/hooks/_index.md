+++
title = "Hooks"
weight = 4
+++

Hooks are vital to make your bootable images viable for normal usage.

Hooks are special scripts that are run during the boot of your image (in initramfs). They will run before the kernel does a ```chroot``` into your root-filesystems's init system.

To view the hooks currently available:

```bash
darch hooks list
```

Darch comes with some hooks out-of-the-box for some common requirements.

{{% children %}}

When images uploaded/tagged in the stage, all the hooks are ran for that image.

After you change a hook's configuration, you may re-run all hooks for your staged images using:

```bash
sudo darch stage run-hooks
```

Aside from the configuration options available for each hook, hooks can be globally configured to enabled/disabled for certain images. For example, maybe you want all images tagged as :testing to not use a fstab, and persist no changes?

To configure hooks globally, create a ```/etc/darch/hooks/hooks-config.json``` file.

```json
{
    "fstab": {
        "execution-order": 0,
        "include-images": ["*"],
        "exclude-images": ["*:testing"]
    }
}
```

You don't have to list every hook, only hooks that you wish to change the default behavior. The default behavior is defined as:

```
{
    "_default": {
        "execution-order": 0,
        "include-images": ["*"],
        "exclude-images": []
    }   
}
```

The ```_default``` entry can be manually specified. If left blank (or no ```/etc/darch/hooks/hooks-config.json``` file exists), then the default entry above is assumed.