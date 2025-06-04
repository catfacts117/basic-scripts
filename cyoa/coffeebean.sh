#!/bin/bash

type_out() {
  local text="$1"
  local delay="${2:-0.05}"  # default delay 0.05 seconds
  for ((i=0; i<${#text}; i++)); do
    printf "%s" "${text:$i:1}"
    sleep "$delay"
  done
  echo
}

echo "___________      ________                          _________         __"
echo "\__    ___/___   \_____  \__  _  ______   _____    \_   ___ \_____ _/  |_"
echo "  |    | /  _ \   /   |   \ \/ \/ /    \  \__  \   /    \  \/\__  \\   __|"
echo "  |    |(  <_> ) /    |    \     /   |  \  / __ \_ \     \____/ __ \|  |"
echo "  |____| \____/  \_______  /\/\_/|___|  / (____  /  \______  (____  /__|"
echo "                        \/           \/       \/          \/     \/"
echo
echo

type_out "a CYOA short story about enjoying a weekend with your feline friend"


### 1.0
echo
echo
echo Chapter 1
echo
echo
sleep 2

type_out "you wake up"
type_out "the birds are chirping"
type_out "it is Saturday morning"
type_out "there is a cat on your face"
type_out "you cant breathe"
type_out "how do you react?"

echo ------
echo "1. go back to sleep"
echo "2. move cat gently"
echo ------
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

### 1.1

type_out "you wake up"
type_out "the birds are chirping"
type_out "it is Saturday morning"
type_out "there is a cat on your face"
type_out "you cant breathe"
type_out "how do you react?"

echo ------
echo "1. go back to sleep"
echo "2. move cat gently"
echo ------
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

