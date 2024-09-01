#!/bin/bash

# Early version of diceware implementation.
# After release of updated rockyou.txt, this was created to demonstrate a means of using adversarial momentum for defense.
# Uses built-in bash $RANDOM (/dev/random), which generates a pseudorandom number between 0 and 32767.
# /dev/random is not considered cryptographically secure.
# Passphrase generation is still considered reasonably secure for typical applications.
# Use at your own risk.

# Prompt user for wordlist path
echo -E "
__________                 .__     __      __
\______   \_____     ______|  |__ /  \    /  \_____  _______   ____
 |    |  _/\__  \   /  ___/|  |  \\   \/\/   /\__  \ \_  __ \_/ __ \
 |    |   \ / __ \_ \___ \ |   Y  \\        /  / __ \_|  | \/\  ___/
 |______  /(____  //____  >|___|  / \__/\  /  (____  /|__|    \___  >
        \/      \/      \/      \/       \/        \/             \/ "
############################################################
# Help                                                     #
############################################################

echo -e "BashWare is a Diceware Inspired Passphrase Generator\n"

echo -n "Wordlist (default: /usr/share/wordlists/rockyou.txt): "
read -p "$* " WORDLIST_PATH
WORDLIST_PATH=${WORDLIST_PATH:-"/usr/share/wordlists/rockyou.txt"}

# Prompt user for minimun desired word length
echo -n "Enter the desired minimum word length (default: 3): "
read -p "$* " WORD_LENGTH
WORD_LENGTH=${WORD_LENGTH:-3}

# Prompt user for the number of words desired
echo -n "Enter number of words (default: 7): "
read -p "$* " NUM_WORDS
NUM_WORDS=${NUM_WORDS:-7}

# Count total lines in the wordlist
TOTAL_LINES=$(wc -l < $WORDLIST_PATH)

# Roll the dice and generate words
for ((i=1; i<=$NUM_WORDS; i++)); do
  # Roll a dice to select a line from the wordlist
  RANDOM_NUMBER=$(( RANDOM % $TOTAL_LINES + 1 ))

  # Read the line at the random number from the wordlist
  WORD=$(head -$RANDOM_NUMBER $WORDLIST_PATH | tail -1)

  echo -n "${WORD} "
done

# Add a newline at the end
echo
