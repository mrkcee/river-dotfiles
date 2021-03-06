#!/bin/zsh -e

config_files=(
	foot
	fuzzel
	mako
	river
	yambar
	zsh
)

for config in $config_files
do
	echo "Backing up $config..."
	if [[ -d ./$config ]]; then
		rm -rf ./$config
	fi
	cp -r $HOME/.config/$config .
done

echo "Config files have been backed up successfully."
