# Проверьте конфигурацию Logrotate
sudo logrotate -d /var/log/myapp/

# Вручную запустите ротацию логов для тестирования
sudo /usr/sbin/logrotate -f /etc/d.myapp