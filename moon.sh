#!/bin/bash
###############################
# Author: Marco Flores-Coronado
# version: 0
# This script prints ascii art at full moon and new moon dates

# setting seed to current date in seconds

dir=$1

moon_phase_pct=$(bash ${dir}/moon_phase.sh)

if [[ $moon_phase_pct -lt 7 ]] ; then
	echo "New Moon"
	echo "🌑"
elif [[ $moon_phase_pct -lt 19 ]] ; then
	echo "Waxing Crescent Moon"
	echo "🌒"
elif [[ $moon_phase_pct -lt 32 ]] ; then
	echo "First Quarter Moon"
	echo "🌓"
elif [[ $moon_phase_pct -lt 44 ]] ; then
	echo "Waxing Gibbous Moon"
	echo "🌔"
elif [[ $moon_phase_pct -lt 57 ]] ; then
	echo "Full Moon"
	echo "🌕"
elif [[ $moon_phase_pct -lt 69  ]] ; then
	echo "Waning Gibbous Moon"
	echo "🌖"
elif [[ $moon_phase_pct -lt 82 ]] ; then
	echo "Last Quarter Moon"
	echo "🌗"
elif [[ $moon_phase_pct -lt 94 ]] ; then
	echo "Waning Crescent Moon"
	echo "🌘"
else
	echo "New Moon"
	echo "🌑"
fi
