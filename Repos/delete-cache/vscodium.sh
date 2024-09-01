#!/bin/bash

# Define the base directory
VSCODIUM_DIR="$HOME/.config/VSCodium"

# List of directories to clean
DIRECTORIES=(
  "blob_storage"
  "Cache/Cache_Data"
  "CachedData"
  "CachedExtensionVSIXs"
  "CachedProfilesData"
  "Code Cache"
  "databases"
  "DawnCache"
  "GPUCache"
  "Local Storage"
  "logs"
  "Service Worker"
  "Session Storage"
  "Shared Dictionary"
  "WebStorage"
  "User/workspaceStorage"
  "User/History"
  "User/globalStorage"
)

# Iterate over each directory and delete its contents
for DIR in "${DIRECTORIES[@]}"; do
  TARGET_DIR="$VSCODIUM_DIR/$DIR"
  if [ -d "$TARGET_DIR" ]; then
    # Check if the directory is empty
    if [ "$(ls -A "$TARGET_DIR")" ]; then
      echo "Cleaning directory: $TARGET_DIR"
      trash "$TARGET_DIR"/*
      # rm -rf "$TARGET_DIR"/*
    else
      echo "Directory is empty, skipping: $TARGET_DIR"
    fi
  else
    echo "Directory does not exist: $TARGET_DIR"
  fi
done

echo "Cleanup completed."
