#!/bin/bash

# User Defined Commands

# slow output
type_out() {
  local text="$1"
  local delay="${2:-0.05}"  # default delay 0.05 seconds
  for ((i=0; i<${#text}; i++)); do
    printf "%s" "${text:$i:1}"
    sleep "$delay"
  done
  echo
}

# help

help() {
    echo 'To navigate, simply type the number to select your choice and hit enter'
    }

# Arrays
inventory=()

# Begin

echo '___________      ________ '
echo '\__    ___/___   \_____  \__  _  ______ '
echo '  |    | /  _ \   /   |   \ \/ \/ /    \ '
echo '  |    |(  <_> ) /    |    \     /   |  \ '
echo '  |____| \____/  \_______  /\/\_/|___|  / '
echo '                         \/           \/ '
echo '         _________         __ '
echo '_____    \_   ___ \_____ _/  |_ '
echo '\__  \   /    \  \/\__  \\   __\ '
echo ' / __ \_ \     \____/ __ \|  | '
echo '(____  /  \______  (____  /__| '
echo '     \/          \/     \/ '

echo ' ⠀⣴⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀'
echo '⠀⣼⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀'
echo '⣼⣿⣿⣿⣿⣿⣿⣿⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀'
echo '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣤⣤⣶⣶⣿⣿⡗ '
echo '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟ '
echo '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀'
echo '⣿⣿⡇⠜⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ⠀ '
echo '⣿⣿⣿⣶⣿⣿⣿⣿⣿⠋⡹⠙⣿⣿⣿⡇⠀⠀'
echo '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣾⣿⣿⠛⠀⠀⠀⠀'⠀
echo '⣿⣿⣿⣿⣿4⣿⣿⣿⣿⣿⡟⠛⠁⠀⠀⠀⠀⠀⠀'
echo '⣿⣿⡿⠻⠿⠿⠿⠿⠛⠹⠑⠀⠀'
echo "⠟          ⡇' "
type_out 'a CYOA short story about enjoying a weekend with your feline friend'

echo ------

type_out 'what is your feline friends name?'
echo
read catname
echo " $catname is a good name "


### 1.0
echo
echo
echo Chapter 1
echo
echo
sleep 2

type_out 'you wake up'
type_out 'the birds are chirping'
type_out 'it is Saturday morning'
type_out 'there is a cat on your face'
type_out 'you cant breathe'
type_out 'how do you react?'

echo ------
echo '1. go back to sleep'
echo '2. move cat gently'
echo ------
echo
read choice

case $choice in

    1)
        type_out "the sound of $catname's purring helps you drift back to sleep."
        type_out 'you use the rest of the saturday strategically dreaming of pizza.'
        type_out 'rest for resistance.'
        type_out '---the end.---'
        exit
        ;;
    
    2)
        type_out "you attempt to pick up $catname."
        type_out "$catname punishes you by swatting your hand,"
        type_out 'then leaps off your face, digging its hind paws into your cheek.'
        type_out '...'
        type_out 'you are awake.'
        ;;
esac

### 1.1

echo
sleep 2
echo

type_out 'you get out of bed and rise, stretch, and rub your tired eyes'
type_out "$catname looks at you innocently from below and mews"
type_out 'your stomach grumbles'
type_out 'it is time for breakfast'
type_out 'you head toward the kitchen'
type_out "$catname rushes ahead of you drifting on the tile,"
type_out 'and bouncing off the walls.'
type_out 'do you..'

echo '------'
echo '1. feed yourself first '
echo "2. feed $catname first "
echo '------'
echo
read choice

case $choice in

    1)
        type_out "the sound of purring helps you drift back to sleep."
        type_out "you use the rest of the saturday strategically dreaming of pizza."
        type_out "rest for resistance."
        type_out "---the end.---"
        exit
        ;;
    
    2)
        type_out "you attempt to pick up the cat"
        type_out "the cat punishes you by swatting your hand"
        type_out "then leaps off your face, digging its hind paws into your cheek"
        type_out "you are awake"
        ;;
esac

