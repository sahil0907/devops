#!/bin/bash
echo "### analysing logs"
echo "=============="
echo -e "\n### List of log files updated yersterday ###"
find /Users/nana/logs -name "*.log" -mtime -1
echo -e "\n### searching ERROR logs in application logs ###"
grep "ERROR" /Users/nana/logs/application.log
echo -e "\n### Number of errors found in application logs ###"
grep -c "ERROR" /Users/nana/logs/application.log
echo -e "\n### The last error from application logs ###"
grep "ERROR" /Users/nana/logs/application.log | tail -1
echo -e "\n### The FATAL errors from system logs ###"
grep "FATAL" /Users/nana/logs/system.log
echo -e "\n### Number of FATAL errors in system logs ###"
grep -c "FATAL" /Users/nana/logs/system.log
