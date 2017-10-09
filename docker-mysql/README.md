### Master Start Comand

	docker run -d -e MYSQL_ROOT_PASSWORD=123456 -p 3306:3306 --name=mysql-master mysql
	
	//replace config file
	docker cp master.cnf mysql-master:/etc/mysql/conf.d

	//create the user
	create user 'jasonzhu'@'%' identified by 'Zhu0307#'; 

	//grant privileges
	grant SELECT, REPLICATION SLAVE on *.* to 'jasonzhu'@'%';
### Slave Start Comand
	docker run -d --link mysql-master:master -e MYSQL_ROOT_PASSWORD=123456 -p 3307:3306 --name=mysql-slave1 mysql
	
	//replace config file
	docker cp slave.cnf mysql-slave1:/etc/mysql/conf.d

	//set the master host/user/password
	change master to master_host='master', master_user='jasonzhu', master_password='Zhu0307#';

	//start slave
	start slave;

	//show slave status
	show slave status\G