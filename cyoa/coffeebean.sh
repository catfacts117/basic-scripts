#!/bin/bash

# User Defined Functions

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
    echo ">> you acquired a $item."
  fi
}

#remove_item
remove_item () {
    local item_to_remove="$1"
    local new_inventory=()
    for item in "${inventory[@]}"; do
     if [[ "$item" != "$item_to_remove" ]]; then
            new_inventory+=("$item")
        fi
    done
    inventory=("${new_inventory[@]}")  # Now backpack has updated items
    echo ">> $item_to_remove was removed from your inventory."
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


echo
echo
echo
echo
echo
echo
echo
echo 'coded by'
echo 'by starskipper'
echo 'may the force b w u'
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo

echo '___________       ________ '
echo '\__    ___/___    \_____  \__  _  ______ '
echo '  |    | /  _ \    /   |   \ \/ \/ /    \ '
echo '  |    |(  <_> )  /    |    \     /   |  \ '
echo '  |____| \____/   \_______  /\/\_/|___|  / '
echo '                          \/           \/ '
echo '          _________         __ '
echo '_____     \_   ___ \_____ _/  |_ '
echo '\__  \    /    \  \/\__  \\   __\ '
echo ' / __ \_  \     \____/ __ \|  | '
echo '(____  /   \______  (____  /__| '
echo '     \/           \/     \/ '

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
type_out 'a CYOA short story about enjoying a'
type_out 'weekend with your feline friend'

echo ------

            #    Play Again
                    play_again="yes"
                        while [[ "$play_again" == "yes" || "$play_again" == "y" ]]; do
                        

type_out 'what is your feline friends name?'
echo
read catname
echo " >> $catname is a good name "


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

echo '------'
echo '1. go back to sleep'
echo '2. move cat gently'
echo '------'
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
        
    *)
        type_out 'you grumble, and keep thinking about'
        type_out 'what to do...'
        ;;
esac

### 1.1

echo
sleep 2
echo

type_out 'you get out of bed and rise,'
type_out 'stretch, and rub your tired eyes'
type_out "$catname looks at you innocently"
type_out 'from below and mews'
echo
echo '        ⣼⣿⣷\  '
echo '   /⣿⣶⣌⣥⣶⣿⣿⡟⠻⢛⢷⣦  ⡴⣲⡲.  '
echo '  ⣾⣿⡿⡛⢻⣿⣿⣿⣇⠩⠤⣹⣿⡿ ⣼⣯⣤⣼⡷ '
echo '  |⣿⡌⠀⡁⢸⢿⣦⣻⣿⣿⣿⣿⣿.⣿⣿⣿⣿| '
echo ' ⢹⣿⣿⣿⣶⣾⣿⣿⣷⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿/ '
echo '  |⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿/  '
echo ' ⡈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿/ '
echo '  ⠘⣿⣿⣿⣿⣿⡟⢿⣿⣿⣿⣿⣿⣿⣿⣿| '
echo '   ⣿⣿⣿⣿⣿⣿⡎⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿ '
echo '  ⣹⣿⣿⣿⣿⣿⣿⣿⢘⣿⣿⣿⣿⣿⣿⣿⣿⣿| '
echo '   ⣿⣿⣿⣿⣦⣍⣉⣥⣾⣿⣿⣿⣿⣿⣿⣿⣿/'
sleep 2
echo
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
    
    echo '------'
    add_item "cereal_bowl"
    echo '------'
    
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
            type_out 'you have been warned, LOSE 1 hp'
            sleep 1

            ((hp[0]--))

            echo "Remaining HP: ${hp[0]}"
                    #HP check
                    if (( hp[0] <= 0 )); then
                    type_out 'The rest of the day is a blur of mediocre'
                    type_out 'cat care. you call it a day early zzzz'
                    sleep 1
                    type_out 'zzzz'
                    sleep 1
                    type_out 'zzzzzzzzzz'
                    sleep 1
                    type_out 'zzzzzzzzzzzzzzz'
                    type_out 'Later in the night, cat assasinates you.'
                    type_out 'cat fact: cat has hooks in tongue to eat meat'
                    type_out '---the end---'
                    exit 1
                    fi
            ;;
        
        # Choice Eat @ couch
        2)
            type_out 'you sit at the couch'
            type_out 'you turn on your fav show'
            type_out "suddenly $catname jumps up on the couch"
            type_out 'and smacks the cereal bowl over the edge'
            type_out 'the bowl shatters on the floor'
            
            sleep 1
            echo '------'
            remove_item "cereal_bowl"
            echo '------'
            
            type_out "$catname starts eating your cereal for breakfast"
            type_out 'you move to clean up & step on a cereal bowl shard'
            type_out "you cry out. $catname eats lucky charms fast"
            type_out 'your day is off to a bad start, LOSE 2 hp'
            sleep 1
            echo
            ((hp[0]-=2))
            
            echo "Remaining HP: ${hp[0]}"
                    #HP check
                    if (( hp[0] <= 0 )); then
                    type_out 'The rest of the day is a blur of mediocre'
                    type_out 'cat care. you call it a day early zzzz'
                    sleep 1
                    type_out 'zzzz'
                    sleep 1
                    type_out 'zzzzzzzzzz'
                    sleep 1
                    type_out 'zzzzzzzzzzzzzzz'
                    type_out 'Later in the night, cat assasinates you.'
                    type_out 'cat fact: cat has hooks in tongue to eat meat'
                    type_out '---the end---'
                    exit 1
                    fi
            ;;
    
    esac
    ;;
    
# Choice Feed cat
2)
    type_out 'you fall prey to the mews'
    type_out 'you reach for the cupboard & grab kittysnax'
    type_out "$catname purrs around your legs"
    type_out 'you put the bowl of cat sustenance on the floor'
    type_out "$catname drops a toy mouse they have in their mouth"
    type_out 'and dives for the cat sensu beans'
    type_out 'you pick up and put the toy mouse in your pocket'
    
    echo '------'
    add_item "toy_mouse"
    echo '------'
    
    type_out "$catname finishes eating cat fuel"
    type_out 'your stomach growls again'
    type_out 'you reach for the cupboard'
    type_out "$catname mews playfully"
    
    
    echo '     /⡛\         /⣛\ '
    echo '    /⣿⣿⣌⣍⠄⣆⠄⡆⢀⣙⣡⣿⣿| '
    echo '   /⢸⣿⣿⣿⣿⣾⣿⣾⣿⣾⣿⣿⣿⠏| '
    echo '  ⠏⣴⣿⣿⣿⠛⠛⣿⣿⣿⣿⡿⠛⠻⣿⣴⡌\ '
    echo ' |⢈⣹⣿⣿⣿⣦⣥⣿⢯⠉⣿⣷⣬⣴⣿⣯⡲ | '
    echo ' |⢰⣾⣿⣿⣿⣿⣿⣿⣷⣶⣾⣿⣿⣿⣿⣿⡏/ '
    echo '  \⣸⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿\ '
    echo '  /⣿⣿⣿⣿⣌⠻⣿⣿⣿⣿⣿⣿⠟⣡⣾⣿⣿|  /⢛\ '
    echo ' /⣀⣬⣿⣦⣝⠛⢃⣼⣿⣿⣿⣿⣿⣘⢛⣫⣴⣿/  \⣼\ '
    echo ' ⡏⠉⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿|    \⡄\ '
    echo ' ⡟⠛⠛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣦⡀  /⣧| '
    echo ' \⢠⣾⣿⣿⣏⣛⡻⢿⣿⣿⣿⣿⠿⣋⣴⣿⣿⣿⣿⣧⣭/⡴⣿/ '
    echo '  \⣦⡙⢿⡿⠿⢿⣿⠆⣿⣿⣿⠸⡿⠟⡋⠼⢛⣛⣛⣛⣃/ '
    echo

    sleep 2
    
    type_out 'you pour lucky charms and milk'
    type_out 'out into the bowl. looks good.'
    
    echo '------'
    add_item "cereal_bowl"
    echo '------'
    
    type_out 'you enjoy spoonful after spoonful'
    type_out 'its a great saturday'
    type_out 'GAIN 1 hp'
    echo
    ((hp[0]++))
    echo "Remaining HP: ${hp[0]}"
    
            #HP check
            if (( hp[0] <= 0 )); then
                type_out 'The rest of the day is a blur of mediocre'
                type_out 'cat care. you call it a day early zzzz'
                sleep 1
                type_out 'zzzz'
                sleep 1
                type_out 'zzzzzzzzzz'
                sleep 1
                type_out 'zzzzzzzzzzzzzzz'
                type_out 'Later in the night, cat assasinates you.'
                type_out 'cat fact: cat has hooks in tongue to eat meat'
                type_out '---the end---'
                exit 1
            fi
                    
        ;;
    esac

    type_out 'suddenly you hear a mew in distress!'
    type_out "$catname runs towards the door to investigate"
    type_out 'you follow your feline friend to the porch door'
    type_out 'theres a cat outside'
    
cat <<'EOF'

⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢸⣿⣷⣆⡀⠀⠀⠀⠀⢀⣴⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⣿⣿⣿⣿⣷⣶⣶⣶⣶⣾⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠘⣿⣿⠟⢛⡻⣿⣿⣿⡿⢛⡛⢻⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢿⣯⡀⠻⠇⣻⣿⣿⡇⠻⠇⢠⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠘⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀
⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣀⡀⠀⠀
⠀⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⡿⠿⠿⢿⣿⣿⣿⣿⣷⡄
⠀⠀⠀⠀⠉⠉⠉⠁⠉⠉⠉⠁⠀⠈⠉⠉⠁⠀⠀⠀⠀⠀⠀⠈⠙⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣾⣿⣿⠏
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠀⠀
EOF
   
strangercatchoice () {
    type_out 'it stares into your soul without moving'
    type_out 'the kitty knows all your secrets in that instant'

    sleep 2
    
    type_out 'do you...'
    
    echo
    echo '------'
    echo '1. give guest cat cereal bowl with milk'
    echo '2. give guest cat toy mouse'
    echo '------'
    echo
        
    read choice

    case $choice in   
        
        #give cereal bowl
       
        1)
    
         if has_item "cereal_bowl"; then
            type_out 'you open the door and place the'
            type_out 'remainder cereal bowl milk for the'
            type_out 'cat outside.'
            
            echo '------'
            remove_item "cereal_bowl"
            echo '------'
            
            type_out 'the cat sips quietly.'
            type_out 'you close the door and leave them be'
            type_out "$catname and you watch awhile from"
            type_out 'inside... then the cat leaves quietly'
            type_out "you look at $catname"
            type_out "$catname gives you a mew of approval"
            type_out 'it is a good saturday'
            
            sleep 1
        
        else
        
        echo '------'
        type_out "You do not have a cereal bowl."
        echo '------'
        
        strangercatchoice
            fi
            
          ;;
        
    
        # give toy mouse
        2)
            type_out 'you remember the toy mouse in your pocket'
            type_out 'you kneel down to observe the guest kitty,'
            type_out 'then open the door and toss it on the balcony'
            type_out "$catname mrows and swats your face to punish you"
            type_out 'LOSE 1 hp'
            
            ((hp[0]--))
            
            echo "Remaining HP: ${hp[0]}"
            
                #HP check
                    if (( hp[0] <= 0 )); then
                    type_out 'The rest of the day is a blur of mediocre'
                    type_out 'cat care. you call it a day early zzzz'
                    sleep 1
                    type_out 'zzzz'
                    sleep 1
                    type_out 'zzzzzzzzzz'
                    sleep 1
                    type_out 'zzzzzzzzzzzzzzz'
                    type_out 'Later in the night, cat assasinates you.'
                    type_out 'cat fact: cat has hooks in tongue to eat meat'
                    type_out '---the end---'
                    exit 1
                    fi
            ;;
    
    esac

}

#Above is scene below is call scene
strangercatchoice



echo 'WIP'

                #End of game loop
                echo
                read -p "Do you want to play again? (yes/no): " play_again
                done

echo 'cat waves goodbye!'
cat <<'EOF'
⠀⠀⠀⢠⡶⢦⡀⠀⠀⠀⢀⣴⠖⣦
⠀⠀⠀⡿⢀⠀⢳⡀⠀⢀⡾⢁⢤⠘⡇
⠀⠀⢸⡇⡇⢣⢸⡧⠶⢼⠃⡜⢸⠀⡇⠀
⠀⠀⢸⡀⢃⠞⠀⠀⠀⠀⠀⠉⠁⠀⡇
⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣄⣀⡀
⠀⠀⣾⠁⠀⣤⡀⠀⢀⠀⢰⣿⠀⠀⡲⣿⡖⠂⠀⠀⠀
⢒⣲⣟⠀⠀⠉⠁⠀⠈⠈⠀⠀⠀⠀⣀⡿⢁⣤⠖⢲⡆
⠀⠈⠳⣤⣄⣀⣀⠀⠀⠀⠀⠀⠰⣾⠋⠀⡜⠁⠐⢸⠃
⠀⠀⠀⠀⠀⣟⠁⠀⠀⠀⠀⠀⠀⠙⡇⠀⡇⠀⠀⡏
⠀⠀⠀⠀⡴⠋⠀⠀⠀⠀⠀⠀⠀⠀⣧⠀⡇⠀⠀⡇
⠀⠀⠀⡼⠁⢀⠀⠀⠀⠠⢀⠀⠀⠀⠜⣷⠇⠀⠀⡇
⠀⠀⣴⠃⠀⢺⠀⠀⠀⠀⠈⠀⠀⠀⠐⠠⠂⠑⢰⠇
⠀⠀⣿⠀⠀⠀⡄⠀⠀⠀⠀⡆⠀⠀⡆⠀⠃⣠⠟⠀⠀
⠀⠀⠈⢦⡀⠀⢰⠀⠀⢠⠀⡇⠀⠀⠁⠀⣿⠁
⠀⠀⠀⠀⠈⠛⠢⢷⣤⡬⠤⢧⣠⡼⠤⠚⠁
EOF


