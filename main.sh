#!/bin/bash
###############################
# Author: Marco Flores-Coronado
# version: 0
# This script prints ascii art at full moon and new moon dates

# setting seed to current date in seconds

dir=$1
RANDOM=$(date +%s)

index=$(( RANDOM % 2 ))


moon_phase_pct=$(bash ${dir}/moon_phase.sh)

if [ ${moon_phase_pct} -ge 44 ] && [ ${moon_phase_pct} -le 57 ]; then
	moons=($(ls -d $dir/ascii/*.f))
	moon=$(cat ${moons[$index]})
	echo -e "\035[36m${moon}\035[m"

elif [ ${moon_phase_pct} -ge 94 ] || [ ${moon_phase_pct} -le 7 ]; then
	moon=$(cat $dir/ascii/*.n)
	echo -e "\033[36m ${moon}\033[m"
fi
