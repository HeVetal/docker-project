# Создайте резервную копию тома my_volume и сохраните её в файл my_backup.tar.gz
docker-volume-backup backup my_volume my_backup.tar.gz

# Проверьте, что резервная копия создана
ls -la my_backup.tar.gz

sleep 5