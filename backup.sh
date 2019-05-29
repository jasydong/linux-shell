#!/bin/bash

#备份数据库脚本

Ymd=$(date +%Y%m%d)

cd /root/backup

db_list=("agent" "main" "users" "club")
for db_name in "${db_list[@]}"; do
	file_name="${db_name// /_}_$Ymd.sql"
	mysqldump -uroot -p123456 $db_name > ./$file_name
done

zip_file="db_backup_${Ymd}.tar.gz"
tar -czvf "$zip_file" *.sql
