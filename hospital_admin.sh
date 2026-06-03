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
done
}

#member 2
secure_data() {
	echo "Applying security permissions..."
	chmod 700 active_logs
	echo "Current permissions"
	ls -ld active_logs 


}

#member 3
initialize_system
secure_data

echo "System environment secured"

date
