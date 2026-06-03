#!/usr/bin/env bash
#Member 4's space 

timestamp="$(date +%Y%m%d_%H%M%S)"

mkdir -p archived_logs
mkdir -p active_logs

archive_log() {
    local logfile
    local filename
    local extension
    
    logfile="$1"

    if [ -f "$logfile" ]; then

        filename="$(basename "$logfile")"
        extension="${filename%.log}"

        mv "$logfile" \
            "archived_logs/${extension}_${timestamp}.log"

        touch "$logfile"

        echo "Archived: ${extension}.log"
    fi
}

archive_log "active_logs/heart_rate.log"
archive_log "active_logs/temperature.log"
archive_log "active_logs/water_usage.log"

echo "Log rotation completed."
