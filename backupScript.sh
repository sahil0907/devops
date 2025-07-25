#!/bin/bash
Home="/home/sahil/devops"
App_log="/home/sahil/devops/application.log"
Sys_log="/home/sahil/devops/system.log"
Errors=("ERROR" "FATAL" "CRITICAL")
echo "### analysing logs"
echo "=============="
echo -e "\n### List of log files updated yesterday ###"
Log_Files=$(find "$Home" -name "*.log" -mtime -1)
echo -e "\n### Total Errors:"
echo "$Log_Files"
for log_file in "$Log_Files"; do 
    echo -e "\n==================================================="
    echo "======================$log_file====================="
    echo "========================================================"

    echo -e "\n### searching "${Errors[0]}" logs in $log_file ###"
    grep "${Errors[0]}" "$log_file"
    echo -e "\n### Number of errors found in $log_file ###"
    grep -c "${Errors[0]}" "$log_file"
    echo -e "\n### The last error from $log_file ###"
    grep "${Errors[0]}" "$log_file" | tail -1
    echo -e "\n### The "${Errors[1]}" errors from $log_file ###"
    grep "${Errors[1]}" "$log_file"
    echo -e "\n### Number of "${Errors[1]}" errors in $log_file ###"
    grep -c "${Errors[1]}" "$log_file"
done