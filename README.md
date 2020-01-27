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

## Execution

1. Now that you've completed setting everything up, you should have the following:
    * An ADB shell open to your device
    * your character standing in the designated spot in hometown
2. On your device, open the crafting interface, and select the item you wish to craft LOTs of. I had good luck with a level 14 green cap. Pick a stat for it that uses an essence you have a good amount of and want more of.
3. Now, you're ready to run the script. In your adb window, run the following:
```
$ cd /sdcard
$ sh ./lvlcrafting.sh
```
4. The script should now run and you will see that your selected item is crafted over and over and over, etc. Make sure that once your inventory is full, everything is automatically salvaged, and that crafting automatically resumes.
5. If something fails, you may have to adjust some of the coordinates. Stop the script by pressing CTRL-C in the ADB window, and then go back to the part of setup that deals with whatever is failing. Make adjustments to the coordinates until you are successful.
6. Once everything is working, you should be able to let this thing run for hours, if necessary. This process does use up a LOT of gold, so monitor that and take breaks to farm more if needed.
7. Good luck, and enjoy your MAXED-OUT crafting skill!
