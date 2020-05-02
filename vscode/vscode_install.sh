SETTING_DIR="$HOME/Library/Application Support/Code/User"
VSCODEHOME="$HOME/dotfiles/vscode"

ln -is $VSCODEHOME/settings.json "${SETTING_DIR}/settings.json"
ln -is $VSCODEHOME/keybindings.json "${SETTING_DIR}/keybindings.json"

cat extensions | while read line
do
 code --install-extension $line
done

code --list-extensions > extensions
