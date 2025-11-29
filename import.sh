cp -rv ~/.config/Code\ -\ OSS/User/snippets ./settings/snippets
cp -rv ~/.config/Code\ -\ OSS/User/settings.json ./settings/settings.json
cp -rv ~/.config/Code\ -\ OSS/User/keybindings.json ./settings/keybindings.json

code --list-extensions > extensions.txt