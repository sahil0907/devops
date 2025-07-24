#!/bin/bash
Home="/home/sahil/devops"
App_log="/home/sahil/devops/application.log"
Sys_log="/home/sahil/devops/system.log"

echo "### analysing logs"
echo "=============="
echo -e "\n### List of log files updated yesterday ###"
find "$Home" -name "*.log" -mtime -1
echo -e "\n### searching ERROR logs in application logs ###"
grep "ERROR" "$App_log"
echo -e "\n### Number of errors found in application logs ###"
grep -c "ERROR" "$App_log"
echo -e "\n### The last error from application logs ###"
grep "ERROR" "$App_log" | tail -1
echo -e "\n### The FATAL errors from system logs ###"
grep "FATAL" "$Sys_log"
echo -e "\n### Number of FATAL errors in system logs ###"
grep -c "FATAL" "$Sys_log"
