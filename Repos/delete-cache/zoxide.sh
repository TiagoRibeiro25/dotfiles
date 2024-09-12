#!/bin/bash

DB_PATH="$HOME/.local/share/zoxide/db.zo"

if [ -f "$DB_PATH" ]; then
    echo "Cleaning zoxide database..."
    # rm "$DB_PATH"
    trash "$DB_PATH"
    echo "Database cleaned."
else
    echo "Database was not found. Skipping..."
fi
