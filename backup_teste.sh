#!/bin/sh
backuped_dir="/srv/http/backup"
data_backup=$(date +'%Y%m%d%H%M%S')
echo Inicializando backup de "$backuped_dir" na data de "$data_backup"
mysqldump -u root -p --routines --all-databases > "$backuped_dir"/mysqldump.sql
tar -czvf "$backuped_dir"/../"$data_backup".tar.gz "$backuped_dir"
rm -f "$backuped_dir"/mysqldump.sql
