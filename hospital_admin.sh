#!/bin/bash

#member 1
initialize_system() {
	echo "[INFO] Starting environment initialization..."
	local directories=("active_logs" "archived_logs" "reports")
       
	for dir in "${directories[@]}"; do
        if [ ! -d "$dir" ]; then
            echo "[M1] Creating '$dir' directory..."
            mkdir -p "$dir"
        else
            echo "[M1] Directory '$dir' already exists. Skipping creation."
        fi
kkkkkkkkktyyhdone
}

#member 2
secure_data() {

}

#member 3

