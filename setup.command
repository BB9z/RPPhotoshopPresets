#! /bin/sh

source_path=$(dirname "$0")
backup_name=$(date "+%Y-%m-%d %H%M%S")
backup_dir="$source_path/Backup/$backup_name"

presets_dir="$HOME/Library/Application Support/Adobe/Adobe Photoshop CC/Presets"
settings_dir="$HOME/Library/Preferences/Adobe Photoshop CC Settings"

echo $source_path

echo "\nBackup old directories:"
mkdir -pv "$backup_dir"
mv -iv "$presets_dir" "$backup_dir/Presets"
mv -iv "$settings_dir" "$backup_dir/Settings"

echo "\nCreat link:"
ln -hfsv "$source_path/Presets" "$presets_dir"
ln -hfsv "$source_path/Settings" "$settings_dir"

echo "\nSetup end."
