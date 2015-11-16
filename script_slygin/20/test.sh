for i in $(seq 1 9)
do
	for j in $(seq 1 9)
	do
		cp 2015-10-20-BASE_1C.tar.gz 2015-0"$i"-0"$j"-BASE_1C.tar.gz
	done
done

for i in $(seq 10 12)
do
	for j in $(seq 10 31)
	do
		cp 2015-10-20-BASE_1C.tar.gz 2015-"$i"-"$j"-BASE_1C.tar.gz
	done
done

$(echo "clear")
echo "Done!"
