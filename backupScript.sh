#!/bin/bash
Home="/home/sahil/devops"
App_log="/home/sahil/devops/application.log"
Sys_log="/home/sahil/devops/system.log"
Errors=("ERROR" "FATAL""CRITICAL")
echo "### analysing logs"
echo "=============="
echo -e "\n### List of log files updated yesterday ###"
find "$Home" -name "*.log" -mtime -1
echo -e "\n### searching "${Errors[0]}" logs in application logs ###"
grep "${Errors[0]}" "$App_log"
echo -e "\n### Number of errors found in application logs ###"
grep -c "${Errors[0]}" "$App_log"
echo -e "\n### The last error from application logs ###"
grep "${Errors[0]}" "$App_log" | tail -1
echo -e "\n### The "${Errors[1]}" errors from system logs ###"
grep "${Errors[1]}" "$Sys_log"
echo -e "\n### Number of "${Errors[1]}" errors in system logs ###"
grep -c "${Errors[1]}" "$Sys_log"
