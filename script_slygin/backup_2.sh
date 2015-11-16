#!/bin/bash
#script for backup

input_file=$1
backup_suffix="BASE_1C"

if [ -z $input_file ]
then
echo "Error!\n Try this: $0 catalog_for_copy"
exit 1
fi

tar -czpf $(date +%Y-%m-%d_%H_%M_%S)-$backup_suffix.tar.gz $input_file

$(echo "clear")
echo "Backup Finished!"

#period=2592000
#for i in $(ls *-backup.tar.gz)
#do
#	time = ${i%-backup.tar.gz}
#	file_utime=$(date --date="$time" + %s)
#	cur_utime=$(date +%s)
#	if [ $(($cur_utime - $file_utim)) -gt $period ]
#	then
#		rm $i
#		echo "File $i deleted"
#	fi
#done
