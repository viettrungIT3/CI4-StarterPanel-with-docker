#!/bin/bash
# Cập nhật quyền cho thư mục writable để đảm bảo Apache có thể ghi vào đó
chown -R www-data:www-data /var/www/html/writable
chmod -R 775 /var/www/html/writable

# Khởi động Apache trong nền
apache2-foreground
