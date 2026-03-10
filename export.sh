cp -rv ~/.config/Code\ -\ OSS/User/snippets ./settings/snippets
cp -rv ~/.config/Code\ -\ OSS/User/settings.json ./settings/settings.json
cp -rv ~/.config/Code\ -\ OSS/User/keybindings.json ./settings/keybindings.json

code --list-extensions > extensions.txt

echo ""
echo "---------- Git Sync Options ----------"

# Step 1: Ask user to stage + commit
read "ans1?Do you want to stage and commit all changes? (Y/N): "

if [[ "$ans1" == "Y" || "$ans1" == "y" ]]; then
    # Generate date in required format: 1st Dec 2025 11:20 PM
    commit_msg=$(date +"%d %b %Y %I:%M %p")

    git add .
    git commit -m "$commit_msg"

    echo "✔ Changes committed with message: $commit_msg"
else
    echo "❌ Operations terminated."
    exit 0
fi


# Step 2: Ask user if they want to push
read "ans2?Do you want to push to origin main? (Y/N): "

if [[ "$ans2" == "Y" || "$ans2" == "y" ]]; then
    git push -u origin main
    echo "✔ Changes pushed to origin main."
else
    echo "❌ Operations terminated."
    exit 0
fi
