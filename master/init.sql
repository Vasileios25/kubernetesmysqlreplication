DROP USER IF EXISTS 'slave_user'@'%';
CREATE USER 'slave_user'@'%' IDENTIFIED  BY 'password' REQUIRE SSL;
GRANT REPLICATION SLAVE ON *.* TO 'slave_user'@'%';
FLUSH PRIVILEGES;
