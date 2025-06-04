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

#add_item
add_item() {
  local item="$1"
  # Check if item already exists to avoid duplicates
  if ! has_item "$item"; then
    inventory+=("$item")
    echo ">> You acquired a $item."
  fi
}

#item_check
has_item() {
  local item="$1"
  [[ " ${inventory[*]} " == *" $item "* ]]
}

# Arrays
inventory=()
hp=(3)

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

# Choice Zzzz
    1)
        type_out "the sound of $catname's purring helps "
        type_out 'you drift back to sleep.'
        type_out 'you use the rest of the saturday'
        type_out 'strategically dreaming of pizza.'
        type_out 'rest for resistance.'
        type_out '---the end.---'
        exit
        ;;

# Choice Move kitty
    2)
        type_out "you attempt to pick up $catname."
        type_out "$catname punishes you by swatting your hand,"
        type_out 'then leaps off your face, digging its'
        type_out 'hindpaws into your cheek.'
        type_out '...'
        type_out 'you are awake.'
        ;;
esac

### 1.1

echo
sleep 2
echo

type_out 'you get out of bed and rise,'
type_out 'stretch, and rub your tired eyes'
type_out "$catname looks at you innocently"
echo
echo '        ⣼⣿⣷⣌  '
echo '  ⢰⣿⣶⣌⣥⣶⣿⣿⡟⠻⢛⢷⣦⡍  ⡴⣲⡲.  '
echo '  ⣾⣿⡿⡛⢻⣿⣿⣿⣇⠩⠤⣹⣿⡿⢋⣼⣯⣤⣼⡷ '
echo '  ⣿⣿⡌⠀⡁⢸⢿⣦⣻⣿⣿⣿⣿⣡⣿⣿⣿⣿⣿⡇ '
echo ' ⢹⣿⣿⣿⣶⣾⣿⣿⣷⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿ '
echo ' ⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇  '
echo ' ⡈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ '
echo '  ⠘⣿⣿⣿⣿⣿⡟⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ '
echo '  ⢈⣿⣿⣿⣿⣿⣿⡎⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧ '
echo '  ⣹⣿⣿⣿⣿⣿⣿⣿⢘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷ '
echo ' ⢰⣿⣿⣿⣿⣦⣍⣉⣥⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆'
type_out 'from below and mews'
sleep 1.5
type_out 'your stomach grumbles'
type_out 'it is time for breakfast'
type_out 'you head toward the kitchen'
type_out "$catname rushes ahead of you drifting on the"
type_out 'tile, and bouncing off the walls.'
type_out 'do you..'

echo '------'
echo '1. feed yourself first '
echo "2. feed $catname first "
echo '------'
echo
read choice

case $choice in
# Choice Feed yourself
    1)
          type_out 'you reach for the cupboard'
          type_out "$catname mews impatiently"
          type_out 'you pour lucky charms and milk'
          type_out 'out into the bowl. looks good.'
          add_item "cereal bowl"
          type_out "where do you want to eat?"
            echo '------'
            echo '1. eat cereal at the table'
            echo '2. eat cereal at the couch'
            echo '------'
            echo
            read choice
            
                case $choice in
                # Choice Eat @ table
                    1)
                        type_out 'you sit at the table'
                        type_out 'you enjoy spoonful after spoonful'
                        type_out 'its a great saturday'
                        type_out 'suddenly you feel a sharp pain in'
                        type_out 'your ankle. kitty attack!'
                        type_out "$catname is not pleased"
                        type_out 'you have been warned, lose 1 hp'
                            sleep 1
                        
                            ((hp[0]--))
                            
                             echo "Remaining HP: ${hp[0]}"
                        
                        if (( hp[0] <= 0 )); then
                            type_out 'The rest of the day is a blur of mediocre'
                            type_out 'cat care. you call it a day early zzzz'
                            type_out 'zzzz'
                            sleep 1
                            type_out 'zzzzzzzzzz'
                            sleep 1
                            type_out 'zzzzzzzzzzzzzzz'
                            type_out 'Later in the night, cat assasinates you.'
                            type_out 'cat fact: cat has hooks in tongue to eat meat'
                            type_out 'the end'
    
                                exit 1  # exits the script so the game stops here
                        fi
               # Choice Eat @ couch
                    2.)
                    
                    
                        esac
                            ;;
        
# Choice Feed cat
    2)
        type_out "you attempt to pick up the cat"
        type_out "the cat punishes you by swatting your hand"
        type_out "then leaps off your face, digging its hind paws into your cheek"
        type_out "you are awake"
        ;;
esac

