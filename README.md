package-techniclauncher
=======================

Package TechnicLauncher in a nice deb or rpm.

I build this for my self, but share the Dockerfile's for you to use.

A little warning, I have only tested the deb-package :)

## What do I need?

`Docker` and `GNU Make`

## How to build the packages?

Just type `make deb` or `make rpm` and you will have a nice rpm/deb in `target/`.
Type `make` to build both.

## Installation

* Just install the deb or rpm.
* Missing Oracle Java? Install [my java package](https://github.com/nsg/package-java).

## Start the the Launcher 

* You have a startup script called `techniclauncher`, just do `/opt/TechnicLauncher/techniclauncher` from a terminal.
* A desktop file is installed, check under Games in your menu.

Note: It will search for java installations in /opt, to set a fixed java version create the symlink `/opt/java` and point it to your prefered java install.
