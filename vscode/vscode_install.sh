VSCODE_SETTING_DIR=~/Library/Application\ Support/Code/User

ln -is "./settings.json" "${VSCODE_SETTING_DIR}/settings.json"
ln -is "./keybindings.json" "${VSCODE_SETTING_DIR}/keybindings.json"

cat extensions | while read line
do
 code --install-extension $line
done

code --list-extensions > extensions
