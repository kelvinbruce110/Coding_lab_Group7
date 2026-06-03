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

}


