#!/bin/bash
Home="/home/sahil/devops"
App_log="/home/sahil/devops/application.log"
Sys_log="/home/sahil/devops/system.log"
Errors=("ERROR" "FATAL" "CRITICAL")
echo "### analysing logs"
echo "=============="
echo -e "\n### List of log files updated yesterday ###"
Log_Files=$(find "$Home" -name "*.log")
echo -e "\n### Files:"
echo "$Log_Files"
for log_file in $Log_Files; do 
    filename=$(basename "$log_file")
    echo -e "\n==================================================="
    echo "======================$filename====================="
    echo "========================================================"
    for error in ${Errors[@]};do
        echo -e "\n### searching "$error" logs in $log_file ###"
        grep "$error" "$log_file"
        echo -e "\n### Number of errors found in $log_file ###"
        grep -c "$error" "$log_file"
    done
done