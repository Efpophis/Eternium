#!/bin/sh

CRAFT_BTN="1413 1011"


# craft lvl 14 greens with whatever stat
# you set this up in the game beforehand


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
  input tap 1781 60
  
  #open salvage table
  input tap 1178 372
  
  #salvage all greens
  input tap 644 316
  
  #exit salvage ui
  input tap 1772 60 
  
  #re-open Ingrid
  input tap 1449 706
  
  #open crafting iface
  input tap 1579 437
  
done

# TODO: automatically clear out email inbox




