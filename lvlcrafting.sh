#!/bin/sh

# configure these according to the instructions in README.md
CRAFT_BTN="1413 1011"
CRAFT_CLOSE_BTN="1781 60"
SALVAGE_OPEN="1178 372"
SALVAGE_GREENS="644 316"
SALVAGE_CLOSE="1772 60"
INGRID_OPEN="1449 706"
CRAFT_OPEN="1579 437"


while [ true ]; do
  # fill inventory
  # this loop taps the "craft" button, then taps the screen twice more in the same place.
  # This has the effect of skipping over the fancy animation of breaking open the crafting box
  # and rolling the stats. Each time thru the loop creates one item.
  #
  # this assumes you've got a full size inventory. If not, count how many spaces and change the "56" below
  # to however many inventory spaces you have
  for i in $(seq 1 56); do
	  input tap $CRAFT_BTN
	  input tap $CRAFT_BTN
	  input tap $CRAFT_BTN
  done

  # empty inventory - this closes the crafting interface and salvages all greens
  
  # close crafting interface
  input tap $CRAFT_CLOSE_BTN
  
  #open salvage table
  input tap $SALVAGE_OPEN
  
  #salvage all greens
  input tap $SALVAGE_GREENS
  
  #exit salvage ui
  input tap $SALVAGE_CLOSE 
  
  #re-open Ingrid
  input tap $INGRID_OPEN
  
  #open crafting iface
  input tap $CRAFT_OPEN
  
done




