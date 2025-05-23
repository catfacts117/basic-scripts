#!/bin/bash

# Path to the encrypted cat facts file
ENCRYPTED_FILE="catfacts.enc"
PASSWORD="bubbleslovescats"

# Decrypt the file and pick a random cat fact from it (without saving it to disk)
RANDOM_FACT=$(openssl enc -aes-256-cbc -d -salt \
    -in "$ENCRYPTED_FILE" \
    -pass pass:"$PASSWORD" 2>/dev/null | shuf -n 1)

#########NOTIFICATIONSOUND##########
# Set system volume lower
osascript -e "set volume output volume 40"
afplay "catsound.mp3" &

# Show the decrypted random cat fact using swiftDialog or dialog
/usr/local/bin/dialog \
--title "🐈 cat fact" \
--message "$RANDOM_FACT" \
--icon "whitecat.png" \
--width 400 \
--height 300 \
--moveable \
--button1text "Mrrrrooow!"

##########NOTIFICATIONSOUNDLVLDECREASE#########
# Restore volume to previous level
osascript -e "set volume output volume 63"

exit

###########DECRYPT##############EXTRA###################
# #!/bin/bash

# Password stored securely or hardcoded for now (not ideal for real security)
#PASSWORD="YourSecretPassword"

# Decrypt catfacts
#openssl enc -aes-256-cbc -d -in catfacts.enc -pass pass:"$PASSWORD" | cat

