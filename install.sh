#!/bin/sh

# Check if config.jsonc exists, if not generate it
[ -f ~/.config/fastfetch/config.jsonc ] || fastfetch --gen-config

# Change directory to fastfetch config folder
cd ~/.config/fastfetch || exit 1

# Check if config-turing.jsonc exists, if not download it
[ -f config-turing.jsonc ] || curl -O https://raw.githubusercontent.com/Arashmoez/TuringFetch/refs/heads/main/config-turing.jsonc

# Check if Turing.txt exists, if not download it 
[ -f Turing.txt ] || curl -O https://raw.githubusercontent.com/Arashmoez/TuringFetch/refs/heads/main/Turing.txt

# Remove old config.jsonc and copy new one
rm config.jsonc
cp config-turing.jsonc config.jsonc

# Run fastfetch
fastfetch
