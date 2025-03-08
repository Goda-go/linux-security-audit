#!/bin/bash

release=" /etc/os-release"
cat $release
echo ------------------------------------------------------
current_user=" whoami "
echo "The current user is: " && $current_user

echo ------------------------------------------------------

echo "All Users: "
echo --------------------
cat /etc/passwd | cut -d ':' -f1

echo ------------------------------------------------------

echo "Most 10 Process Use CPU"
echo ----------------------------
ps aux --sort=-%cpu | head -10

echo ------------------------------------------------------

echo "Search For any Open Ports"
echo -------------------------------
Open_Ports=" ss -tulnp "
$Open_Ports

echo ------------------------------------------------------

echo "Search For sensitive Files"
echo ------------------------------------
find / -type f \( -name "*password*" -o -name "*secret*" -o -name "*config*" \) 2>/dev/null


cat Linux_audit.sh >> audit_report.txt

