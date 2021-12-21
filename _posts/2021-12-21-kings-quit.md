---
title: "How to run King's Quit on emulator without a disk"
date: 2021-12-21 17:07:12 -0000
tags: games media dosbox retro sierra vinesauce rev revscarecrow vinesauce kingsquit kingsquest rom romhack cdrom
---

## Introduction

This article has been a fair undertaking and is currently a work in progress. I'm going to add sections about my research, some background, and a way I'm working on to make the mod easier to distribute, and even customisable. For now, enjoy this comprehensive guide to setting up the glitch in its simplest form.

## Solution

To play King's Quit you need any normal release of the 1991 multimedia version, and the audio resource file from the obscure 1995 SierraOriginals release. The SierraOriginals version is the *only* version with the unique audio resource file which makes the glitch work.

I've sourced and mirrored these files so that you can download them easily. The total download size is about 200MB. I'm currently personally seeding the torrent files if you want faster download from archive.org.

### Downloads

#### Normal 1991 version

Use any one of these links.

- This website </assets/KQ5.zip>
    My mirror removes the original audio file, as you will be replacing it. This reduces the download size by about 50MB.
- Internet Archive <https://archive.org/details/msdos_Kings_Quest_V_-_Absence_Makes_the_Heart_Go_Yonder_1990>
    - Direct link <https://archive.org/download/msdos_Kings_Quest_V_-_Absence_Makes_the_Heart_Go_Yonder_1990/Kings_Quest_V_-_Absence_Makes_the_Heart_Go_Yonder_1990.zip>
    - Torrent link <https://archive.org/download/msdos_Kings_Quest_V_-_Absence_Makes_the_Heart_Go_Yonder_1990/msdos_Kings_Quest_V_-_Absence_Makes_the_Heart_Go_Yonder_1990_archive.torrent>

#### Unique 1995 audio file

Use any one of these links.

- Google Drive <https://drive.google.com/file/d/17yj5dSYcNA3J0ESEOEW6YJrk_W6BZ-tg/view?usp=sharing>

    Credit to `Tequila#0015` on the Space Quest Historian discord for the link, SQH himself for making a video with the information in it, and Rev himself for directing me to the video by email. <https://youtu.be/K6zUt9fO9_s?t=1281>

- Internet Archive <https://archive.org/details/audio001-kq5-sierraoriginals>
    - Direct link <https://archive.org/download/audio001-kq5-sierraoriginals/AUDIO001.002>
    - Torrent link <https://archive.org/download/audio001-kq5-sierraoriginals/audio001-kq5-sierraoriginals_archive.torrent>

    Uploaded to the Internet Archive by me.

[Support Space Quest Historian](https://www.patreon.com/SpaceQuestHistorian)    
[Support RevScarecrow](https://vinesauce.com/shop/)    
[Support the Internet Archive](https://archive.org/donate)

### Guide

1. Create a folder to install the game in. I use `C:\Users\joelm\dos`, a directory named `dos` that I created in my user folder. If you keep the folder address short by creating it directly in your user folder, it makes using DOSBox easier.

2. Install DOSBox.

    - Link: <https://www.dosbox.com/download.php?main=1>
    - Direct link: <https://sourceforge.net/projects/dosbox/files/dosbox/0.74-3/DOSBox0.74-3-win32-installer.exe/download>

    DOSBox is an emulator for MS-DOS, an old kind of computer. This will allow you to run the game.

    Once you've installed it, run it and it should look like this.

    ![DOSBox after launching](/assets/images/kings-quit/Screenshot_2021-12-21_181306.png)

3. Modify the game files.

    You should have a .zip file and an AUDIO001.002 file in your game folder.

    ![Game folder with two files](/assets/images/kings-quit/Screenshot_2021-12-21_181557.png)

    1. Extract the .zip file.

    ![.zip file extracted](/assets/images/kings-quit/Screenshot_2021-12-21_18.png)

    2. Move the AUDIO001.002 file into the extracted folder. If windows tells you it's a duplicated, select replace.

    ![](/assets/images/kings-quit/Screenshot_2021-12-21_18.png)

4. Install the game in DOSBox like normal

    1. Create a folder which will be used as a virtual hard drive by dosbox.

    2. In dosbox, run these commands.

    ```dosbatch
    mount c C:\Users\joelm\dos\harddrive
    mount d C\Users\joelm\dos\KQ5
    d:
    install
    ```

    ![](/assets/images/kings-quit/Screenshot_2021-12-21_18.png)

    3. This opens an ancient-looking installer window for the game. Follow the instructions to install (enter, c, down, enter, enter, enter, n, enter, enter, enter).

    4. You can now run the command `kq5` to play the game. Congratulations!

5. If you want to make it easier to play the game without setup each time you launch it, search for 'DOSBox Options' and add these lines to the end of the configuration file.

    ```dosbatch
    # Lines in this section will be run at startup.
    # You can put your MOUNT lines here.
    MOUNT c C:\Users\joelm\dos\harddrive
    MOUNT d C:\Users\joelm\dos\KQ5
    c:
    dir
    cd SIERRA
    dir
    ```

Thanks for reading!
