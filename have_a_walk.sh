#/bin/bash

message="have a walk, man!?"
workInterval=10
postponeInterval=3

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
