#!/bin/bash

CALC_TMP_FILE="$HOME/.local/share/rofi/rofi_calc_history"

echo "Deleting rofi-calculator history"

# Check if the file exists
if [ ! -f "$CALC_TMP_FILE" ]; then
    echo "No history file found. Skipping..."
else
    # rm "$CALC_TMP_FILE"
    trash "$CALC_TMP_FILE"
    echo "History file deleted"
fi

