---
title: "How to run King's Quit on emulator without a disk"
date: 2021-12-21 17:07:12 -0000
tags: games media dosbox retro sierra vinesauce rev revscarecrow vinesauce kingsquit kingsquest rom romhack cdrom
---

## Introduction

This article has been a fair undertaking and is currently a work in progress. I'm going to add sections about my research, some background, and a way I'm working on to make the mod easier to distribute, and even customisable. For now, enjoy this comprehensive guide to setting up the glitch in its simplest form.

## Solution

To play King's Quit you need any normal release of the 1991 multimedia version, and the audio resource file from the obscure 1995 SierraOriginals release. The SierraOriginals version is the *only* version with the unique audio resource file which makes the glitch work.

I've sourced and mirrored these files so that you can download them easily. I'm currently personally seeding the torrent files if you want faster download from archive.org.

### Downloads

#### Normal 1991 version

Use any one of these links.

- This website [/assets/KQ5.zip](/assets/KQ5.zip)

    My mirror removes the original audio file, as you will be replacing it. It also removes the floppy disk version, which isn't the one we need. The download size is about 10MB.

- Internet Archive <https://archive.org/details/KingsQuestV-roverinfo>
    - Direct link <https://archive.org/compress/KingsQuestV-roverinfo/formats=7Z&file=/KingsQuestV-roverinfo.zip>
    - Torrent link <https://archive.org/download/KingsQuestV-roverinfo/KingsQuestV-roverinfo_archive.torrent>

    If you use one of these, you'll have to find and extract the CD version folder. You'll need [7ZIP](https://www.7-zip.org/download.html) to deal with the .7z and .iso files. The download size is about 50MB for the zip, and about 400MB for the torrent, which includes archive.org thumbnails and stuff (you can skip them and just get the bits you need if you use a good torrent client though).

    There's [another version on archive.org](https://archive.org/details/msdos_Kings_Quest_V_-_Absence_Makes_the_Heart_Go_Yonder_1990) which doesn't work with this quite right for some reason. It just won't play the audio at all if you do a partial install. You can also get the game on [GOG](https://www.gog.com/game/kings_quest_4_5_6) and [Steam](https://store.steampowered.com/app/10100/Kings_Quest_Collection/). I haven't tested those,  but they should work in theory because the files are all the same as the original 1991 release.

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

        ![.zip file extracted](/assets/images/kings-quit/Screenshot_2021-12-21_184154.png)

    2. Move the AUDIO001.002 file into the extracted folder. If windows tells you it's a duplicated, select replace.

        ![Select the audio file](/assets/images/kings-quit/Screenshot_2021-12-21_184227.png)

        ![Move the audio file](/assets/images/kings-quit/Screenshot_2021-12-21_184242.png)

        ![Replace the audio file](/assets/images/kings-quit/Screenshot_2021-12-21_184254.png)

        ![Audio file moved success](/assets/images/kings-quit/Screenshot_2021-12-21_184310.png)

        This screenshot shows the file in place after replacement.

        ![The file in place after replacement](/assets/images/kings-quit/Screenshot_2021-12-21_184332.png)

        The original file is about 94KB. The replacement file is about 117KB.

4. Install the game in DOSBox like normal

    1. Create a folder which will be used as a virtual hard drive by dosbox.

        ![New folder](/assets/images/kings-quit/Screenshot_2021-12-21_184349.png)

        ![Give the folder a name](/assets/images/kings-quit/Screenshot_2021-12-21_184408.png)

    2. In dosbox, run these commands.

        ```dosbatch
        mount c C:\Users\joelm\dos\harddrive
        mount d C\Users\joelm\dos\KQ5
        d:
        install
        ```

        ![Running the above commands in dosbox](/assets/images/kings-quit/Screenshot_2021-12-21_184600.png)

    3. This opens an ancient-looking installer window for the game. Follow the instructions to install (enter, c, down, enter, enter, enter, n, enter, enter, enter).

        ![Installer start](/assets/images/kings-quit/Screenshot_2021-12-21_184615.png)

        Skip a few...

        ![99 100](/assets/images/kings-quit/Screenshot_2021-12-21_184727.png)

        ![Cli after instalation](/assets/images/kings-quit/Screenshot_2021-12-21_184642.png)

    4. You can now run the command `kq5` to play the game. Congratulations!

        ![Typing the kq5 command](/assets/images/kings-quit/Screenshot_2021-12-21_184741.png)

        ![Load screen of the game!](/assets/images/kings-quit/Screenshot_2021-12-21_184757.png)

        ![Menu screen of the game](/assets/images/kings-quit/Screenshot_2021-12-21_184803.png)

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

    ![Dosbox config before edit](/assets/images/kings-quit/Screenshot_2021-12-21_184823.png)

    ![Dosbox config after edit](/assets/images/kings-quit/Screenshot_2021-12-21_184859.png)

Thanks for reading!
