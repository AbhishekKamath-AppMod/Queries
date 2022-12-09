Step 1 : abhishek_kamath@cloudshell:~ (niveustraining)$ gcloud sql connect javaassignmen2 --user=postgres --quiet
	 Allowlisting your IP for incoming connection for 5 minutes...done.     
	 Connecting to database with SQL user [postgres].Password:
	 psql (15.1 (Debian 15.1-1.pgdg110+1), server 14.4)
	 SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, compression: off)
	 Type "help" for help.
	
Step 2 : postgres=> \l
                                                                     List of databases
          Name           |       Owner       | Encoding |  Collate   |   Ctype    | ICU Locale | Locale Provider |            Access privileges
-------------------------+-------------------+----------+------------+------------+------------+-----------------+-----------------------------------------
 cloudsqladmin           | cloudsqladmin     | UTF8     | en_US.UTF8 | en_US.UTF8 |            | libc            |
 customer                | cloudsqlsuperuser | UTF8     | en_US.UTF8 | en_US.UTF8 |            | libc            |
 employee                | postgres          | UTF8     | en_US.UTF8 | en_US.UTF8 |            | libc            |
 javalateralassignment_2 | cloudsqlsuperuser | UTF8     | en_US.UTF8 | en_US.UTF8 |            | libc            |
 postgres                | cloudsqlsuperuser | UTF8     | en_US.UTF8 | en_US.UTF8 |            | libc            |
 template0               | cloudsqladmin     | UTF8     | en_US.UTF8 | en_US.UTF8 |            | libc            | =c/cloudsqladmin                       +
                         |                   |          |            |            |            |                 | cloudsqladmin=CTc/cloudsqladmin
 template1               | cloudsqlsuperuser | UTF8     | en_US.UTF8 | en_US.UTF8 |            | libc            | =c/cloudsqlsuperuser                   +
                         |                   |          |            |            |            |                 | cloudsqlsuperuser=CTc/cloudsqlsuperuser
(7 rows)


Step 3 : postgres=> \c employee
	 Password:
	 psql (15.1 (Debian 15.1-1.pgdg110+1), server 14.4)
	 SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, compression: off)
	 You are now connected to database "employee" as user "postgres".

Step 4 : employee=> CREATE TABLE COMPANY(
   		    ID INT PRIMARY KEY     NOT NULL,
                    NAME           TEXT    NOT NULL,
                    AGE            INT     NOT NULL,
                    ADDRESS        CHAR(50),
                    SALARY         REAL
                    );
                    CREATE TABLE
                  
	 employee=> CREATE TABLE DEPARTMENT(
   		    ID INT PRIMARY KEY      NOT NULL,
   		    DEPT           CHAR(50) NOT NULL,
   		    EMP_ID         INT      NOT NULL
		    );
		   CREATE TABLE
Step 5 : employee=> INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY) VALUES (1, 'Paul', 32, 'California', 20000.00);
	 INSERT 0 1
	 employee=> INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY) VALUES (2, 'Allen', 25, 'Texas', 30000.00);
	 INSERT 0 1
	 employee=> INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY) VALUES (3, 'Teddy', 23, 'Norway', 20000.00);
	 INSERT 0 1
	 employee=> INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY) VALUES (4, 'Mark', 25, 'Rich-Mond ', 65000.00);
	 INSERT 0 1
	 employee=> INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY) VALUES (5, 'David', 27, 'Texas', 85000.00);
	 INSERT 0 1
	 
Step 6:  employee=> SELECT * FROM COMPANY;
 id | name  | age |                      address                       | salary
----+-------+-----+----------------------------------------------------+--------
  1 | Paul  |  32 | California                                         |  20000
  2 | Allen |  25 | Texas                                              |  30000
  3 | Teddy |  23 | Norway                                             |  20000
  4 | Mark  |  25 | Rich-Mond                                          |  65000
  5 | David |  27 | Texas                                              |  85000
(5 rows)

Step 7: employee=> SELECT ID, NAME, SALARY FROM COMPANY;
 id | name  | salary
----+-------+--------
  1 | Paul  |  20000
  2 | Allen |  30000
  3 | Teddy |  20000
  4 | Mark  |  65000
  5 | David |  85000
(5 rows)

Step 8 : employee=> UPDATE COMPANY SET SALARY = 15000 WHERE ID = 3;
UPDATE 1
employee=> SELECT * FROM COMPANY;
 id | name  | age |                      address                       | salary
----+-------+-----+----------------------------------------------------+--------
  1 | Paul  |  32 | California                                         |  20000
  2 | Allen |  25 | Texas                                              |  30000
  4 | Mark  |  25 | Rich-Mond                                          |  65000
  5 | David |  27 | Texas                                              |  85000
  3 | Teddy |  23 | Norway                                             |  15000
(5 rows)

Step 9: employee=> DELETE FROM COMPANY WHERE ID = 2;
DELETE 1
employee=> SELECT * FROM COMPANY;
 id | name  | age |                      address                       | salary
----+-------+-----+----------------------------------------------------+--------
  1 | Paul  |  32 | California                                         |  20000
  4 | Mark  |  25 | Rich-Mond                                          |  65000
  5 | David |  27 | Texas                                              |  85000
  3 | Teddy |  23 | Norway                                             |  15000
(4 rows)
