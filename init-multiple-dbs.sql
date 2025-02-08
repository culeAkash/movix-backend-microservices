CREATE DATABASE IF NOT EXISTS userservice;
CREATE DATABASE IF NOT EXISTS movieservice;
CREATE DATABASE IF NOT EXISTS reviewservice;
CREATE DATABASE IF NOT EXISTS ratingservice;

CREATE USER IF NOT EXISTS 'culeAkash'@'%' IDENTIFIED BY 'Akashjais@929';

GRANT ALL PRIVILEGES ON userservice.* TO 'culeAkash'@'%';
GRANT ALL PRIVILEGES ON movieservice.* TO 'culeAkash'@'%';
GRANT ALL PRIVILEGES ON reviewservice.* TO 'culeAkash'@'%';
GRANT ALL PRIVILEGES ON ratingservice.* TO 'culeAkash'@'%';

FLUSH PRIVILEGES;