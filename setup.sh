#! /bin/sh

source_path=$(dirname $0)
backup_name=$(date "+%Y-%m-%d %H%M%S")

presets_dir="$HOME/Library/Application Support/Adobe/Adobe Photoshop CC"
cd "$presets_dir"

echo "\nBackup old directories:"
mv -iv "Presets" "Presets Backup $backup_name"

echo "\nCreat link:"
echo 
ln -hfsv "$source_path" "$presets_dir/Presets"

echo "\nSetup end."
