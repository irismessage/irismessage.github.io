---
title: "Configure RetroArch on Android and fix problems"
date: 2021-12-15 12:32:10 -0000
category: solutions
tags: emulation mobile app android retroarch games
---

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

        ![Scroll down](/assets/images/retroarch/Screenshot_20211215_122002_com.retroarch.jpg){:width="25%"}

        ![Directory](/assets/images/retroarch/Screenshot_20211215_122005_com.retroarch.jpg){:width="25%"}

    3. Go to File Browser

        ![Scroll down](/assets/images/retroarch/Screenshot_20211215_122010_com.retroarch.jpg){:width="25%"}

        ![File Browser](/assets/images/retroarch/Screenshot_20211215_122013_com.retroarch.jpg){:width="25%"}

    4. Select the folder where your games are stored. Your normal user folders like Documents are under `/storage/emulated/0`.

        ![/storage/emulated/0](/assets/images/retroarch/Screenshot_20211215_122028_com.retroarch.jpg){:width="25%"}

        ![Documents](/assets/images/retroarch/Screenshot_20211215_122033_com.retroarch.jpg){:width="25%"}

        ![Games](/assets/images/retroarch/Screenshot_20211215_122037_com.retroarch.jpg){:width="25%"}

    5. Select `<Use This Directory>`.

3. Download a core. The 'core' is just the underlying emulator software for each console. For NES, I use Mesen, which is sorted under Nintendo - NES/Famicom on the core downloader page.

    ![Load Core](/assets/images/retroarch/Screenshot_20211215_122047_com.retroarch.jpg){:width="25%"}

    ![Core Downloader](/assets/images/retroarch/Screenshot_20211215_122055_com.retroarch.jpg){:width="25%"}

    ![NES cores](/assets/images/retroarch/Screenshot_20211215_122110_com.retroarch.jpg){:width="25%"}

4. Now you could be able to go to Load Content and run a game. Don't do this yet, because RetroArch doesn't set a default controller layout, so you'd just get blank controls and have to restart the app. You need to select a controller layout first.

    1. Go to On-Screen Display (in Settings)

        ![Settings scrolled down to osd](/assets/images/retroarch/Screenshot_20211215_122500_com.retroarch.jpg){:width="25%"}

        ![On-Screen display](/assets/images/retroarch/Screenshot_20211215_122503_com.retroarch.jpg){:width="25%"}

    2. Go to On-Screen Overlay and scroll down to Overlay Preset

        ![On-Screen Overlay](/assets/images/retroarch/Screenshot_20211215_122507_com.retroarch.jpg){:width="25%"}

        ![Overlay Preset](/assets/images/retroarch/Screenshot_20211215_122511_com.retroarch.jpg){:width="25%"}

    3. Select Overlay Preset. This will open the retroarch file browser. Go to retroarch/overlays.

        ![retroarch/overlays](/assets/images/retroarch/Screenshot_20211215_122547_com.retroarch.jpg){:width="25%"}

    4. Do not go to Gamepads/Nintendo! These are busted as hell. There are actually alternate ones you can use. Go to Flat instead, and select nes.cfg.

        ![Scroll to Flat](/assets/images/retroarch/Screenshot_20211215_122630_com.retroarch.jpg){:width="25%"}

        ![Flat](/assets/images/retroarch/Screenshot_20211215_122633_com.retroarch.jpg){:width="25%"}

        ![Scroll to nes.cfg](/assets/images/retroarch/Screenshot_20211215_122638_com.retroarch.jpg){:width="25%"}

    5. You can now run a game!

        ![Main Menu](/assets/images/retroarch/Screenshot_20211215_122136_com.retroarch.jpg){:width="25%"}

        ![Load Content](/assets/images/retroarch/Screenshot_20211215_122139_com.retroarch.jpg){:width="25%"}

        ![Start Directory](/assets/images/retroarch/Screenshot_20211215_122141_com.retroarch.jpg){:width="25%"}

        ![Bideo game](/assets/images/retroarch/Screenshot_20211215_122821_com.retroarch.jpg){:width="25%"}

Thanks for reading.

![guh](/assets/images/retroarch/cement.gif)
