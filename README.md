package-techniclauncher
=======================

Package TechnicLauncher and Java in a nice deb or rpm.

I can’t host this package because it contains Oracles Java, but you can build it your self inside a nice Docker container to get deb and rpm’s.

I build this for my self, but share the Dockerfile's for you to use.

## What do I need?

`Docker` and `GNU Make`

## How to build the packages?

Just type `make deb` or `make rpm` and you will have a nice rpm/deb in `target/`.
Type `make` to build both.

## Where is it installed?

Everything is installed to `/opt/TechnicLauncher`
