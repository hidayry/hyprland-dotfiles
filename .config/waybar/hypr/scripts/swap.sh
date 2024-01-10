#!/bin/bash

# Set the path to the config and style files
config_file="${HOME}/.config/waybar/hypr/config"
config_background_file="${HOME}/.config/waybar/hypr/config-background"
style_file="${HOME}/.config/waybar/hypr/style.css"
style_background_file="${HOME}/.config/waybar/hypr/style-background.css"

# Swap names of config files
mv "${config_file}" "${config_file}.temp"
mv "${config_background_file}" "${config_file}"
mv "${config_file}.temp" "${config_background_file}"

# Swap names of style files
mv "${style_file}" "${style_file}.temp"
mv "${style_background_file}" "${style_file}"
mv "${style_file}.temp" "${style_background_file}"

echo "File names swapped successfully!"

pkill waybar
waybar -c ~/.config/waybar/hypr/config -s ~/.config/waybar/hypr/style.css &

