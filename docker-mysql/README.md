### Master Start Comand

	docker run -d -e MYSQL_ROOT_PASSWORD=123456 -v /mysql/master/my.cnf:/etc/mysql/my.cnf -p 3306:3306 --name=mysql-master mysql
	
	//create the user
	create user 'jasonzhu'@'%' identified by 'Zhu0307#'; 

	//grant privileges
	grant SELECT, REPLICATION SLAVE on *.* to 'jasonzhu'@'%';
### Slave Start Comand
	docker run -d -e MYSQL_ROOT_PASSWORD=123456 -v /mysql/slave1/my.cnf:/etc/mysql/my.cnf -p 3307:3306 --name=mysql-slave1 mysql

	//set the master host/user/password
	change master to master_host='192.168.99.100', master_user='jasonzhu', master_password='Zhu0307#';