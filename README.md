# Eternium

If you're not playing this awesome mobile RPG, then you should be.

## Script to level crafting

If you want to level your crafting without building callouses on your fingers, and you have some android development know-how,
this might be what you're looking for.

## Requires

* Android mobile device with Eternium installed, configured, etc.
    * developer options and USB debugging must be enabled on the device
* Computer with ADB installed
* USB cable to connect the Android device to the computer
* You know what you're doing with these things

## Setup

1. Enable the "show taps" option in Developer Options -> Input on your android device.
2. Open Eternium and pick the hero you want to use for leveling your crafting skill
    * this hero should have a full 56 slots in inventory, and they all need to be empty. If not, you will need to modify the script
3. Move your player to a strategic position where you can access Ingrid and the salvage table without having to move. I like
to use the larget stone right next to the dressing room.
4. On your computer, open the lvlcrafting.sh script file in your favorite editor.
5. Tap on Ingrid and note the coordinates shown in the overlay. In the shell script, fill them in on the line that says INGRID_OPEN, replacing the values I have there.
6. Tap the "Blacksmith Craft" menu item and note those coordinates. Those go with CRAFT_OPEN.
7. Get set up to craft a level 14 green cap (or whatever - it's your gold) with the stats you want. You don't need to remember these coordinates.
    * note that you usually end up with MORE essences than you put in, so use an essence you want more of.
    * ... or just experiment and see what works for your needs.
8. Once you're ready to craft your item, hit the "Craft" button to craft it, and note the coordinates. Those go with CRAFT_BTN.
9. To speed things up, tap the same spot 2 more times. You should now be back at the item configuration interface.
10. Now, click the "X" button that closes the crafting interface and note those coordinates. They go with CRAFT_CLOSE_BTN in the script file.
11. Now, open the salvaga table, being careful not to move your hero, and note those coordinates. They go on the SALVAGE_OPEN line.
12. Now, hit the "salvage all uncommon and lower" (or whatever) button and note those coordinates. They go on the SALVAGE_GREENS line.
13. Now, close the salvage table interface to return to the "hometown" screen, and note those coordinates. They go on the SALVAGE_CLOSE line.
14. Your hero should still be standing in the same place in hometown, and now you're ready to test your script!
15. On your computer, save the edits you made to the lvlcrafting.sh script.
16. Open a command prompt window in the same directory as the script and run the following:
```
$ adb push lvlcrafting.sh /sdcard
$ adb shell
```

... to be continued
