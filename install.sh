#!/bin/bash

repo_dir=$(pwd)
file="$HOME/.zshrc"

func='moon_cycle () {
bash '"${repo_dir}"'/main.sh '"${repo_dir}"'
}'

read -p "Do you want to install main function? yes/no   " ans
if [[ "$ans" == "yes" ]]; then
    if grep -Fq "moon_cycle ()" "$file"; then
        echo "Function is already installed"
    else
        echo "Installing"
        chmod +x "$repo_dir/main.sh"
        {
            echo " #-Start moon cycle-#"
            echo "$func"
            echo "moon_cycle"
            echo " #-End mon cycle-#"
        } >> "$file"
        echo "End Installing"
    fi
else
    echo "Do nothing!"
fi

moon='moon () {
bash '"${repo_dir}"'/moon.sh '"${repo_dir}"' 
}'

read -p "Do you want to install moon function? yes/no   " ans
if [[ "$ans" == "yes" ]]; then
	if grep -Fq "moon ()" "$file"; then
        echo "Function is already installed"
    else
        echo "$moon" >> "$file"
        echo "End Installing"
    fi
else
    echo "Do nothing!"
fi

