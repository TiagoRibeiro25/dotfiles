#!/bin/bash

TMP_DIR="$HOME/.config/clipse/tmp_files"

if [ ! -d $TMP_DIR ]; then
    echo "$TMP_DIR does not exist. Creating it now..."
    mkdir -p $TMP_DIR
    echo "Created $TMP_DIR"
fi

# Check if there're any files in the directory
if [ "$(ls -A $TMP_DIR)" ]; then
    echo "There are files in the tmp directory. Removing them now..."
    # rm -rf $TMP_DIR/*
    trash $TMP_DIR/*
    echo "Removed all files in the tmp directory"
else
    echo "There are no files in the tmp directory. Skipping..."
fi

