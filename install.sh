pkg install git -y
pkg install python -y
pkg install python2 -y
pip2 install requests
pip2 install mechanize 
pkg install figlet
pkg install toilet -y
pkg install openssh -y
pkg install wget -y

#!/data/data/com.termux/files/usr/bin/bash
apt install zsh -y
git clone https://github.com/Cabbagec/termux-ohmyzsh.git "$HOME/Stylish-Termux" --depth 1

mv "$HOME/.termux" "$HOME/.termux.bak.$(date +%Y.%m.%d-%H:%M:%S)"
cp -R "$HOME/Stylish-Termux/.termux" "$HOME/.termux"

git clone git://github.com/robbyrussell/oh-my-zsh.git "$HOME/.oh-my-zsh" --depth 1
mv "$HOME/.zshrc" "$HOME/.zshrc.bak.$(date +%Y.%m.%d-%H:%M:%S)"
cp "$HOME/.oh-my-zsh/templates/zshrc.zsh-template" "$HOME/.zshrc"
sed -i '/^ZSH_THEME/d' "$HOME/.zshrc"
sed -i '1iZSH_THEME="agnoster"' "$HOME/.zshrc"
echo "alias chcolor='$HOME/.termux/colors.sh'" >> "$HOME/.zshrc"
echo "alias chfont='$HOME/.termux/fonts.sh'" >> "$HOME/.zshrc"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"

chsh -s zsh

echo "Styles installed successfully!"
sleep 2
echo "Choose your color scheme now:"
$HOME/.termux/colors.sh

echo "Choose your font now~"
$HOME/.termux/fonts.sh
echo "Now set up Welcome Screen."
sleep 1
echo "Type your text with figlet or toilet." 
sleep 3
echo "(1)ctrl+x (2)y (3)enter"
sleep 4
rm -rf ~/../usr/etc/motd
nano ~/../usr/etc/zshrc
echo "Please restart Termux app..."

exit
