+++
title = "Format"
weight = 1
+++

Your related recipes will live in a single folder, with multiple sub-folders.

```
└── recipes
    ├── common
    │   ├── config.json
    |   └── script
    ├── gaming
    │   ├── config.json
    |   └── script
    └── development
        ├── config.json
        └── script
```

Each sub-folder represents a recipe name. In the example above, ```common```, ```gaming``` and ```development``` are defined.

Each recipe must contain two files.

**```recipes/gaming/config.json```** -  Meta data about the recipe, including it's parent.
```json
{
    "inherits": "common"
}
```

**```recipes/gaming/script```** - The actual script that will be executed when building the recipe.
```bash
#!/usr/bin/env bash

pacman -S steam --noconfirm
```

To build this recipe:

```bash
cd recipes
sudo darch recipes build gaming
```

{{% notice note %}}
Any inherited images must be built (or listed in ```sudo darch images list```) beforehand. You can build every parent, including your desired recipe, using ```sudo darch recipes build $(sudo darch recipes build-dep gaming)```.
{{% /notice %}}

The root of every set of recipes must depend on an external image. The external image can be pulled (```sudo darch images pull```) or built previously.

To mark a recipe as dependending an external Arch Linux image, preappend ```external:``` to your image name.

```json
{
    "inherits": "external:godarch/arch:latest"
}
```

If no tag is specified for the inherited image, it will default to the first tag that is being used to build (```--tags```).
