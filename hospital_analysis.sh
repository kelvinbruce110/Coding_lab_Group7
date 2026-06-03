#!/bin/bash

#member 5
process_vitals() {
echo "Generating critical alerts report..."

    grep "CRITICAL" active_logs/heart_rate.log active_logs/temperature.log | \
    awk -F'|' '
    {
        printf "Timestamp: %s | Device_ID: %s | Value: %s\n",
        $1, $2, $3
    }' > reports/critical_alerts.txt

    echo "Report saved to reports/critical_alerts.txt"
}

#member 6
water_audit() {
	awk -F'|' '

    /ICU_WATER_RESERVE/ {
        sum += $3
        count++
    }

    END {
        if (count > 0) {
            avg = sum / count

            printf "\n===== WATER AUDIT REPORT =====\n"
            printf "Average ICU Water Usage: %.2f\n", avg
            printf "Records Processed: %d\n", count
            printf "==============================\n"
        }
        else {
            printf "\nNo ICU_WATER_RESERVE records found.\n"
        }
    }

    ' active_logs/water_usage.log
}
