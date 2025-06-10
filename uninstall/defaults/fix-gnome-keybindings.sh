#!/bin/bash

#------------------------------------------------------------------------------#
# This script restores the workspace switch keybindings that were modified by  #
# the original script. It uses the backup file if available, otherwise uses    #
# the default keybindings that were replaced.                                  #
#                                                                              #
# Author: Reverse script of aagamezl's fix-gnome-keybindings                   #
# Version: 1.0.0                                                               #
# Last Update: 2023-10-30                                                      #
#------------------------------------------------------------------------------#

APP_HOME_NAME="$HOME/.window-config"
BACKUP_FILE="$APP_HOME_NAME/org.gnome.desktop.wm.keybindings.backup"

# Keybindings that the original script replaced
SWITCH_TO_WORKSPACE_LEFT="switch-to-workspace-left"
SWITCH_TO_WORKSPACE_RIGHT="switch-to-workspace-right"
SWITCH_TO_WORKSPACE_UP="switch-to-workspace-up"
SWITCH_TO_WORKSPACE_DOWN="switch-to-workspace-down"

set_keybindings() {
  local key_name="$1"
  local key_value="$2"

  gsettings set org.gnome.desktop.wm.keybindings "$key_name" "$key_value"
}

restore_from_backup() {
  local key_name="$1"
  
  if [ -f "$BACKUP_FILE" ]; then
    # Extract the keybinding from backup file
    local line=$(grep "^$key_name=" "$BACKUP_FILE")

    if [ -n "$line" ]; then
      # Remove the keyname and = from the beginning
      local key_value="${line#*=}"
      set_keybindings "$key_name" "$key_value"
      return 0
    fi
  fi

  return 1
}

# Restore default keybindings
if ! restore_from_backup "$SWITCH_TO_WORKSPACE_LEFT"; then
  set_keybindings "$SWITCH_TO_WORKSPACE_LEFT"
fi

if ! restore_from_backup "$SWITCH_TO_WORKSPACE_RIGHT"; then
  set_keybindings "$SWITCH_TO_WORKSPACE_RIGHT"
fi

if ! restore_from_backup "$SWITCH_TO_WORKSPACE_UP"; then
  set_keybindings "$SWITCH_TO_WORKSPACE_UP"
fi

if ! restore_from_backup "$SWITCH_TO_WORKSPACE_DOWN"; then
  set_keybindings "$SWITCH_TO_WORKSPACE_DOWN"
fi

# Remove backup file
if [ -f "$BACKUP_FILE" ]; then
  rm "$BACKUP_FILE"
fi

echo "GNOME workspace keybindings have been restored."