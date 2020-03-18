#!/bin/bash
#save as newer.sh
#show the newest file

newest_file=$(ls -t |head -1)

unset -v newest_file
for file in "$@"; do
 [[ $file -nt $newest_file ]] && newest_file=$file
done
echo "$newest_file"
