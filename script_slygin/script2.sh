#!/bin/bash

filename="sysinfo.html"

echo '<html>' > $filename
echo '	<head>' >> $filename
echo '	</head>' >> $filename
echo '	<meta charset="utf8">' >> $filename
echo '	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">' >>  $filename
echo '	</head>' >> $filename
echo '	<body>' >> $filename

echo '		<h1> Информация об этом компьютере! </h1>' >> $filename
echo '		<table class="table" style="min-width:400px;">' >> $filename
echo '			<tbody>' >> $filename
echo '				<tr>' >> $filename


#код для создание вывода характеристик в виде таблицы этого компьютера 

#cpu=$(cat /proc/cpuinfo | grep "model name" | sed 1,1d | awk -F ":" {'print $2'})
cpu=$(cat /tmp/file | grep "processor" | awk {'print $3 " " $4 " " $5 " " $6'})


echo "					<td>Процессор:</td><td>$cpu</td>" >> $filename
echo '				</tr>' >> $filename
echo '				<tr>' >> $filename

ram=$(cat /tmp/file | grep "memory" | sed 2,1d | awk {'print $3'})

echo "					<td>ОЗУ:</td><td>$ram</td>" >> $filename
echo '				</tr>' >> $filename
echo '				<tr>' >> $filename



echo "					<td>Жесткий диск:</td><td> Нет доступа</td>" >> $filename

echo '				</tr>' >> $filename
echo '				<tr>' >> $filename
kernel=$(uname -mrs)
echo "					<td>Ядро ОС:</td><td>$kernel</td>" >> $filename


echo '				</tr>' >> $filename
echo '			</tbody>' >> $filename
echo '		</table>' >> $filename
echo '	</body>' >> $filename
echo '</html>' >> $filename


