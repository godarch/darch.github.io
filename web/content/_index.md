---
subtitle: "Boot multiple stateless/clean environments."
chapter: true
---

# Darch

<div style="text-align: center;">
<a href="/test-drive/" class="btn btn-default"><i class="fa fa-arrow-right"></i> Test drive</a>
<a href="/concepts/" class="btn btn-default"><i class="fa fa-book"></i> Documentation</a>
<a href="https://github.com/godarch/darch" target="_blank" class="btn btn-default"><i class="fa fa-github"></i> GitHub</a>
</div>

Think Dockerfiles, but for bootable, stateless, graphical (or not) environments for your everyday usage.

Your images can be layered/inherited (like Dockerfiles) using recipes. For example:

{{<mermaid align="center">}}
graph TB;
	A[Arch Linux, Gentoo, Debian, etc] --> B
    B[User setup, common scripts] --> C[Steam gaming]
    B[User setup, common scripts] --> D[Developer tools, gcc/make/etc]
      D --> E[Plasma desktop]
      D --> F[i3 desktop]
{{< /mermaid >}}

Each image here can be booted bare-metal. It is up to you how you configure your layers and how granular you get with it.

After each reboot, the image is wiped clean (```tmpfs``` overlay). To make changes to your machine, update your recipes and rebuild. Images are built and managed via a docker-like cli.

<style type="text/css">
#body {
  max-width: 800px;
  margin-left: auto;
  margin-right: auto;
}
#sidebar {
  display: none;
}
#sidebar-toggle-span {
  display: none;
}
</style>