#!/bin/bash

# Generate a timestamp for archive filenames
timestamp=$(date +"%Y%m%d_%H%M")

echo "Starting log archival process..."

# Move and rename Heart Rate log
mv active_logs/heart_rate_log.log \
   archived_logs/heart_rate_${timestamp}.log

# Move and rename Temperature log
mv active_logs/temperature_log.log \
   archived_logs/temperature_${timestamp}.log

# Move and rename Water Usage log
mv active_logs/water_usage_log.log \
   archived_logs/water_usage_${timestamp}.log

echo "Logs successfully moved to archived_logs."

# Recreate empty log files for the Python simulator
touch active_logs/heart_rate.log
touch active_logs/temperature.log
touch active_logs/water_usage.log

echo "Fresh log files created in active_logs."
echo "Archive completed at: $(date)"
