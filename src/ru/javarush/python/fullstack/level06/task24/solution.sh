# Создайте резервную копию тома my_volume и сохраните её в файл my_backup.tar.gz
docker-volume-backup backup my_volume my_backup.tar.gz

# Проверьте, что резервная копия создана
ls -la my_backup.tar.gz

# Восстановите том my_volume из резервной копии my_backup.tar.gz
docker-volume-backup restore my_backup.tar.gz my_volume

# Проверьте, что том восстановлен
docker volume ls | grep my_volume

#docker run --rm \
#   -v my_volume:/volume \
#   -v $(pwd):/backup \
#   loomchild/volume-backup backup my_backup.tar.gz
#
#docker run --rm \
#   -v my_volume:/volume \
#   -v $(pwd):/backup \
#   loomchild/volume-backup restore my_backup.tar.gz