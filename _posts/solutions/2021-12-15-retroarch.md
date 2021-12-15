---
title: "Configure RetroArch on Android and fix problems"
date: 2021-12-15 12:32:10 -0000
category: solutions
tags: emulation mobile app android retroarch games
---

**WORK IN PROGRESS**

## Summary

- Set start directory in `Settings/Directory/File Browser`
- Install Core
- Set controller overlay in `Settings/On-Screen Display/On-Screen Overlay/Overlay Preset`
- Use the Flat overlays, they work much better as far as I know (for NES). The themed ones don't let you use the d-pad right.
- If you can't use save states it might be because you enabled `Acheivements/Hardcore Mode`

## Introduction

Emulation is awesome because you can play a massive range of abandonware games, like every game from the N64 or earlier, on virtually any hardware, including mobile.

RetroArch is great because it's the definitive emulation platform for installing and managing many emulators and games, and it's on mobile.

However, it has a lot of settings with a not great layout so it can be hard to set up for the first time.

In this solution, I'll walk through the basic setup and fix problems with the control overlay d-pad being unusable and with save states not working.

## Solution

1. Open RetroArch.

    ![RetroArch main menu after opening app](/assets/images/retroarch/Screenshot_20211215_115042_com.retroarch.jpg){:width="25%"}

2. Set your start directory. The start directory is a shortcut to where your games (ROMs) are stored.

    1. Go to settings

        ![Settings](/assets/images/retroarch/Screenshot_20211215_121942_com.retroarch.jpg){:width="25%"}

    2. Go to Directory

        RetroArch loves putting important settings at the bottom of the menu :/

        ![Scroll down](/assets/images/retroarch/Screenshot_20211215_222002_com.retroarch.jpg){:width="25%"}

        ![Directory](/assets/images/retroarch/Screenshot_20211215_222005_com.retroarch.jpg){:width="25%"}

    3. Go to File Browser

        ![Scroll down](/assets/images/retroarch/Screenshot_20211215_222010_com.retroarch.jpg){:width="25%"}

        ![File Browser](/assets/images/retroarch/Screenshot_20211215_222_com.retroarch.jpg){:width="25%"}
