#sh
#!/bin/sh -x
#
# simple.sh
#
# This simple.sh script is in the current working directory on my
# laptop, and gets uploaded to the workspace when my paperspace job is
# created. You can put it in an empty directory and run:
#
# paperspace jobs create --container ufoym/deepo --machineType P5000 --command './simple.sh'
# Let's fetch a large file if it's not already there and put it in
# persistent storage:
if [ ! -f /storage/war-and-peace.txt ]; then
 apt -y update && apt -y install curl
 curl http://www.gutenberg.org/files/2600/2600-0.txt > /storage/war-and-peace.txt
fi
# then we can operate on it and place the result in /artifacts:
wc /storage/war-and-peace.txt > /artifacts/war-and-peace-word-count.txt
# you can delete the files in /storage using another job like this:
#
# paperspace jobs create --container ufoym/deepo --machineType P5000 --command 'rm /storage/war-and-peace.txt'
exit 0
