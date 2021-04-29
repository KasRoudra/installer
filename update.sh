#!/data/data/com.termux/files/usr/bin/bash
echo "alias chfont='$HOME/.termux/fonts.sh'" >> "$HOME/.zshrc"
echo "alias chcolor='$HOME/.termux/colors.sh'" >> "$HOME/.zshrc"

termux-reload-settings

exit
