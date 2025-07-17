#!/bin/bash

###################
# Author: Marco Flores-Coronado
#
# A bash script to calculate moon phase 
# Code inspired in https://kevinboone.me/clh_moonphase.html 
#
# A moon cycle is 29.530575 days, in seconds 2551443 (rounded)
# Reference is 24 sep 2024 -> moon 75% Third quarter (yeah, that's the name)
#

moon_cycle_secods=2551443

ref_date=`date --date "Sep 24 2024" +%s`

today_date=$(date +%s)

ref_phase=75

delta_time=$((${today_date} - ${ref_date}))

delta_moon_phase=$(( 100 * $delta_time / $moon_cycle_secods ))

moon_phase_pct=$((($delta_moon_phase + $ref_phase)%100))

echo $moon_phase_pct
