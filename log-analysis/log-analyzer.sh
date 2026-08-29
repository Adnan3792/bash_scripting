#!/bin/bash

set -e

LOG_FILE="./sample.log"


TOTAL=$(wc -l < "$LOG_FILE")
ERRORS=$(grep -ci "ERROR" "$LOG_FILE")
WARNINGS=$(grep -ci "WARN" "$LOG_FILE")
INFO=$(grep -ci "INFO" "$LOG_FILE")

echo "Total log lines : $TOTAL"
echo "INFO messages   : $INFO"
echo "WARN messages   : $WARNINGS"
echo "ERROR messages  : $ERRORS"

#ERROR Messages
grep -in "ERROR" "$LOG_FILE"
#WARN Messages
grep -in "WARN" "$LOG_FILE"

if (( ERRORS > 0 )); then
        echo "ALERT: Errors detected in application logs!"
fi

