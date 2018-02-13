+++
title = "Images"
weight = 2
+++

Images are derived from recipes. They can be pushed/pulled (like Docker) to Docker Hub.

You can avoid having to build recipes locally if you strictly pull your images from an external registry.

For example, I use Travis-CI to build and push my recipes/images. Then, on all my machines, all I need to do is:

```bash
sudo darch images pull pauldotknopf/darch-arch-plasma:latest
sudo darch stage upload pauldotknopf/darch-arch-plasma:latest
```