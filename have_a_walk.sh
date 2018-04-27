#/bin/bash

message="have a walk, man!?"
workInterval=5000
postponeInterval=300

sleep $workInterval
zenity --question --text="$message"
result="$?"

while [ $result -eq 1 ]
do
 sleep $postponeInterval
 zenity --question --text="$message"
 result="$?"
done

echo $result
