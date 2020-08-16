# Operating Systems 

Operating Systems refers  to the understanding of lower lying hardware and technology that makes all the software run perfectly. It's about handlng the different work loads, optimizing the CPU performance, understanding how the memory and storage work, and how the software and hardware connect. It's really meant to help serve as a way to get a understanding of how to make software and technology talk to each other, and what the underlying OS does to make these two things communicate. 

## Table Of Contents
- [Operating Systems](#operating-systems)
  - [Table Of Contents](#table-of-contents)
- [Please Read First](#please-read-first)
- [An Introduction](#an-introduction)
- [Technologies](#technologies)
- [General](#general)
- [Getting Started](#getting-started)
  - [Installation In Windows!](#installation-in-windows)
  - [Before you Install On Disk](#before-you-install-on-disk)
  - [Updates](#updates)
  - [Easiness](#easiness)
  - [Security](#security)
  - [Size](#size)
  - [Server Side](#server-side)
- [People To Follow](#people-to-follow)
- [FAQ](#faq)
- [Learning Materials](#learning-materials)
  - [Courses](#courses)
  - [Books To Look Into](#books-to-look-into)
  - [Youtube Channels](#youtube-channels)
  - [MISC](#misc)
- [References](#references)

# Please Read First

# An Introduction

What does OS make it easier to understand? A lot, basically. To name a few,

- Processes, their scheduling, how programs are handled in the background, and how can they can be optimally served
- Threads and Concurrency, how you can schedule your work and functions to make them work faster
- CPU Scheduling, which helps to make it easier to understand how the CPU manages to schedule and choose what work to do
- Synchronization, what happens when two different programs try to access a block of memory at the same time?
- Deadlocks, or most commonely known as, why does my Windows hang so much?
- Virtual Memory, how you load bigger programs into memory, even though their size is greater than your RAM
- File System, how OS store and allocate files and folders, and how they keep a track of it
- Virtual Machines, how can you run 2 OS on the same hardware? How does Docker run images on an OS? How can you run a Linux instance in a virtualbox?
- Networks and Distributed Systems, how and which OS treat network interfaces

# Technologies

To get started, there are two factions here, one is the `Closed Sourced Community` like Windows which believes that only the company itself should have access and view to the source code of their products, and the `Open Source Community` like Linux, which believe systems should be open to scrunity, and that good systems only work are understood and shared amongst workers and members. 

Working with an OS from scratch means a good understanding of the underlying hardware, and building everything from scrach ( maybe even using Assembly! ), but obviously that isn't reasonable. You can try either `Windows` or `Linux`, but `Linux` is far more recommended as it gives you more control over, well, basically everything. You can change anything, anywhere - Windows doesn't let you do that.

# General

# Getting Started

So what `Linux` or `distribution of Linux` should you choose? It depends on what metrics you use and what is important to you. There are some basic [`trees`](https://en.wikipedia.org/wiki/List_of_Linux_distributions#/media/File:Linux_Distribution_Timeline.svg) of distributions, which means there are some OS which contain the Linux kernel, and have their own spin on it. The only thing about distros that make them Linux is the kernel they have, and the libraries they use. For example, the system call library functionalities that you used in OS were part of GNU - GNU has a `glibc` which means they have a library written in C which interacts with the Linux kernel.

The commands you run on the `terminal` ( *or the bash shell* ), that's the interface and call to the kernel to do that.

If you haven't guessed already, this guide is about working with and building Operating Systems by using Linux itself. This is not a guide if you want to build something from scratch. Please checkout [OS Dev](osdev.org) for that.

## Installation In Windows!

You can run Linux using [**W**indow's **S**ubsystem for **L**inux - WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10) in Windows. You can even make a Virtual Machine and install a Linux Distro on that! Most `.iso` from Linux vendors work straight out of the box, so there isn't much to configure there.

## Before you Install On Disk

Before you get into any kind of Linux, please read about the following to understand the basics of how to understand the way Linux works,

1. GPT vs MBR
2. File extensions, like EXT4, NTFS, VFAT, and ZFS
3. Desktop Environments
4. Filesystems in Linux are way different than in Windows
5. Package managers and software repositories

However, if you want to install Linux on your disk, please continue reading,

Now, the next thing is that you look at what is important to you. Here are some criteria,

1. Updates
2. Easiness
3. Security
4. Size
5. Server Side

## Updates

There are two contrasts here, there is a,

- Non-rolling release 
- Rolling release

A ***non-rolling release***, for example, is the debian family or 'tree', which ubuntu is a part of. It basically means that the kernel is and system is designed with system versions of software. Which ultimately means that you can specify what versions of software you want for your machine, and give it to the kernel, and it will set it up for you. But that means that if you want to change the version numbers, you will have to upgrade the system. 

So for example, if you decided to use Ubuntu 18.04, you would get python 3.7.3. Now, we have Python 3.8.1, say you wanted to upgrade, but you can't.

Upgrading a basic software that comes pre packed with the OS itself means to build everything up from scratch. Which means if you want to use the next Python version or upgrade, you need to upgrade your system from scratch. It's useful to make a drive solely for the backup, and then upgrade, but it's not always ideal depending on how you've set it up.

What you would now have to do is install the newest Ubuntu version and use the Python in that. This is great, depending on your use case. Because this means you can easily move to a lower system that has old dependencies, if you are working on legacy software, and it has features that are deprecated in the newest upgrade.

It also means that if you choose something like this for your setup, you can't use the latest tech, and everytime you want to upgrade, you need to create a backup, install a newest ubuntu which in the start is very buggy ( which is why you see so many people unsure about if they even want to upgrade their current ubuntu ).

A ***rolling release*** is very different. A rolling release emphasizes on giving you the latest whenever it can.
For example, there is `Arch Linux`, which lets you upgrade the system, even the kernel, with a sytem update command using its package manager. So now I have the latest of eveything I could want. 

*NOTE:* that rolling releases are never used in server side or cloud stuff because for, 

1. Troublshooting purposes
2. Hard to replicate
3. Constant rolling release have a chance that they break something

## Easiness

`openSUSE`, `Ubuntu`, `Fedora`, `Debian` and other such Debian forks are much easier to install rather than something like `Slackware`, `Arch Linux`. It's recommended that you try those out first before diving into anything harder.

## Security 

Kali Linux, Redhat, Fedora, Black Arch Linux come to mind, they have a preset of good configurations for security related measures when they are installed. They come with pre installed and pre setup software so that you can work on them quickly. There are some differences under the /etc/ folder for networking reasons.

## Size

Some distributions are lighter, and come with bare minimal software, so if you want to choose a light weight system based on your current hardware, look into Absolute Linux, Lubuntu, LXLE, Linux Lite, and other such distros.

Remember that linux by itself has no gui. The gui you see in Ubuntu is either Unity or Gnome. These are called Desktop Environments. Some are heavier, some more CPU intensive than others, depending on what you prefer. Anything is fine, really, depending on how good of a hardware you have, and what your own preference is.

## Server Side

Debian / Ubuntu are the goto options here. These are the most popular versions of Linux out there, and the ones supported by `AWS`, `Azure`, and `GCP`.

# People To Follow

# FAQ

# Learning Materials

Now that you've setup Linux, you can try a few resources to get down to the theoratical ideas,

- [Operating Systems: Three Easy Pieces](http://pages.cs.wisc.edu/~remzi/OSTEP/)
- [Modern Operating Systems](https://www.amazon.com/dp/013359162X/)
- [Tech Yourself CS - Operating Systems](https://teachyourselfcs.com/#operating-systems)
- [Silberschatz's Operating System Concepts, 10th Edition, Global Edition ( The 'Dinosaur Book' )](https://www.wiley.com/en-ad/Silberschatz%27s+Operating+System+Concepts%2C+10th+Edition%2C+Global+Edition-p-9781119454083) also check out the awesome [accompanying website](https://www.os-book.com/OS10/)!
- [OS Dev](https://wiki.osdev.org/Main_Page)

## Courses

## Books To Look Into

## Youtube Channels

## MISC

# References