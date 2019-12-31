#!/bin/sh

# craft lvl 11 greens with water stat
while [ true ]; do
  # fill inventory
  for i in $(seq 1 56); do
	  input tap 1413 1011
	  input tap 1413 1011
	  input tap 1413 1011
  done
  # empty inventory
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




