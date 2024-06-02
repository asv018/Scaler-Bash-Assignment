#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <logfile>"
    exit 1
fi

LOGFILE="$1"

if [ ! -r "$LOGFILE" ]; then
    echo "Error: Log file does not exist or is not readable."
    exit 1
fi

total_requests=$(wc -l < "$LOGFILE")
echo "Total Requests Count: $total_requests"

successful_requests=$(grep -E '" [2][0-9][0-9] ' "$LOGFILE" | wc -l)
percentage_successful=$(awk "BEGIN {printf \"%.2f\", ($successful_requests/$total_requests)*100}")
echo "Percentage of Successful Requests: $percentage_successful%"


most_active_user=$(awk '{print $1}' "$LOGFILE" | sort | uniq -c | sort -nr | head -n 1 | awk '{print $2}')
echo "Most Active User: $most_active_user"

exit 0
