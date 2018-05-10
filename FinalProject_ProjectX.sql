/* 

	PURPOSE: THIS DOCUMENT CONTAINS ALL THE SQL STATEMENTS TO CREATE AND POPULATE THE ONLINE MOVIE STORE DATABASE
	DATE: 08/17/2017

	AUTHOR: TEAM PROJECTX

	CSS 475 DATABASE SYSTEMS FINAL PROJECT
*/	
	

/* Create Statements to create the ProjectXDB Database */	
	
	CREATE TABLE Customer (
	Customer_id INTEGER PRIMARY KEY NOT NULL UNIQUE,
	Customer_fname VARCHAR(20) NOT NULL,
	Customer_minit CHAR(1),
	Customer_lname VARCHAR(15) NOT NULL,
	Customer_phone VARCHAR(10) NOT NULL,
	Customer_email VARCHAR(20),
	Address VARCHAR(20) NOT NULL,
	City VARCHAR(10) NOT NULL,
	State CHAR(2) NOT NULL,
	Zip INTEGER NOT NULL,
	DOB DATE NOT NULL,
	Subscription_date DATE NOT NULL 
	);

	CREATE TABLE sub_type (
	sub_id INTEGER PRIMARY KEY,
	type CHAR (8),
	price INTEGER
	);

	CREATE TABLE Genre (
	Genre_ID INTEGER PRIMARY KEY UNIQUE NOT NULL,
	Genre_type VARCHAR(15) NOT NULL
	);

	CREATE TABLE Subscription (
	Subscription_id  INTEGER  PRIMARY KEY not null,
	Customer_id INTEGER REFERENCES Customer (Customer_id),
	Sub_plan DECIMAL(5,2) REFERENCES sub_type (sub_id)
	);

	CREATE TABLE Movie (
	Movie_id INTEGER PRIMARY KEY UNIQUE,
	Movie_title VARCHAR (20) NOT NULL,
	Movie_year DATE,
	Movie_genre INTEGER REFERENCES Genre (Genre_ID),
	Moive_director VARCHAR (20) NOT NULL,
	Movie_actor VARCHAR (20) NOT NULL,
	Movie_copy INTEGER,
	Movie_type INTEGER REFERENCES sub_type (sub_id)
	);


	CREATE TABLE Payment (
	Payment_id INTEGER PRIMARY KEY UNIQUE,
	Payment_method CHAR (5) NOT NULL,
	Payment_date DATE,
	Customer_id INTEGER REFERENCES CUSTOMER (Customer_id),
	Subscription_id INTEGER REFERENCES Subscription (Subscription_id)
	);

/* Inserting into Customer Table */

	INSERT INTO CUSTOMER(Customer_id,Customer_fname,Customer_minit,Customer_lname,Customer_phone,Customer_email,Address,City,State,Zip,DOB,Subscription_date) 
	VALUES (11110,'Helen',NULL,'James','206-122-3221','helen@gmail.com','145th Pine St','Seattle','WA',98012,'2/13/1978','2/1/2017');
	INSERT INTO CUSTOMER(Customer_id,Customer_fname,Customer_minit,Customer_lname,Customer_phone,Customer_email,Address,City,State,Zip,DOB,Subscription_date) 
	VALUES (11111,'Erik','M','Flint','323-646-6334','ErikBNolen@armyspy.com','1111 Evergreen Lane','San Francisco','CA',90040,'12/6/1964','5/25/2017');
	INSERT INTO CUSTOMER(Customer_id,Customer_fname,Customer_minit,Customer_lname,Customer_phone,Customer_email,Address,City,State,Zip,DOB,Subscription_date)
	VALUES (11112,'Gary','A','Freeman','910-236-7112','GaryAMcCarthy@superrito.com','3803 Clarence Court','Appleton','WI',28540,'6/26/1943','3/29/2016');
	INSERT INTO CUSTOMER(Customer_id,Customer_fname,Customer_minit,Customer_lname,Customer_phone,Customer_email,Address,City,State,Zip,DOB,Subscription_date)
	VALUES (11113,'Jack','C','Hahn','618-921-4848','JackCFlint@teleworm.us','3770 Davis Court','Appleton','WI',62901,'4/18/1995','11/14/2016');
	INSERT INTO CUSTOMER(Customer_id,Customer_fname,Customer_minit,Customer_lname,Customer_phone,Customer_email,Address,City,State,Zip,DOB,Subscription_date)
	VALUES (11114,'Thomas',NULL,'Parker','908-526-5025','ThomasMFreeman@armyspy.com','1357 Caynor Circle','San Francisco','CA',8876,'1/24/1974','2/5/2017');
	INSERT INTO CUSTOMER(Customer_id,Customer_fname,Customer_minit,Customer_lname,Customer_phone,Customer_email,Address,City,State,Zip,DOB,Subscription_date) 
	VALUES (11115,'Rita','R','Foy','321-396-0863','RitaMHahn@superrito.com','3870 Terry Lane','San Francisco','CA',32789,'12/10/1966','2/6/2017');
	INSERT INTO CUSTOMER(Customer_id,Customer_fname,Customer_minit,Customer_lname,Customer_phone,Customer_email,Address,City,State,Zip,DOB,Subscription_date) 
	VALUES (11116,'Jeffery','J','Yeates','703-506-5714','JefferyAParker@gustr.com','1671 Daffodil Lane','Mclean','VA',22101,'12/15/1945','2/7/2017');
	INSERT INTO CUSTOMER(Customer_id,Customer_fname,Customer_minit,Customer_lname,Customer_phone,Customer_email,Address,City,State,Zip,DOB,Subscription_date) 
	VALUES (11117,'Delores',NULL,'Ely','815-844-4254','DeloresCFoy@teleworm.us','287 Arthur Avenue','Seattle','WA',61764,'8/14/1975','5/12/2017');
	INSERT INTO CUSTOMER(Customer_id,Customer_fname,Customer_minit,Customer_lname,Customer_phone,Customer_email,Address,City,State,Zip,DOB,Subscription_date) 
	VALUES (11118,'Georgina','T','Hughes','920-616-3528','GeorginaMYeates@superrito.com','4837 Tail Ends Road','Appleton','WI',54911,'4/27/1945','2/24/2017');
	INSERT INTO CUSTOMER(Customer_id,Customer_fname,Customer_minit,Customer_lname,Customer_phone,Customer_email,Address,City,State,Zip,DOB,Subscription_date) 
	VALUES (11119,'Karen','C','Hicks','517-443-2209','KarenREly@jourrapide.com','1927 Elk Avenue','Blissfield','MI',49228,'2/3/1959','2/28/2017');
	INSERT INTO CUSTOMER(Customer_id,Customer_fname,Customer_minit,Customer_lname,Customer_phone,Customer_email,Address,City,State,Zip,DOB,Subscription_date) 
	VALUES (11120,'Janice','M','Toothaker','956-948-4861','JaniceJHughes@fleckens.hu','2812 Carolina Avenue','Seattle','WA',78019,'3/10/1967','2/15/2016');
	INSERT INTO CUSTOMER(Customer_id,Customer_fname,Customer_minit,Customer_lname,Customer_phone,Customer_email,Address,City,State,Zip,DOB,Subscription_date) 
	VALUES (11121,'Shannon','A','Wexler','773-213-8530','ShannonKHicks@dayrep.com','4290 Oakmound Road','Seattle','WA',60605,'1/16/1998','6/20/2016');
	INSERT INTO CUSTOMER(Customer_id,Customer_fname,Customer_minit,Customer_lname,Customer_phone,Customer_email,Address,City,State,Zip,DOB,Subscription_date) 
	VALUES (11122,'Roland','F','Miles','407-814-3440','RolandTToothaker@dayrep.com','1441 Grand Avenue','San Francisco','CA',32703,'5/5/1966','2/23/2016');
	INSERT INTO CUSTOMER(Customer_id,Customer_fname,Customer_minit,Customer_lname,Customer_phone,Customer_email,Address,City,State,Zip,DOB,Subscription_date) 
	VALUES (11123,'Mary','R','Goodwin','702-327-2609','MaryCWexler@jourrapide.com','1366 Mesa Drive','Las Vegas','NV',89101,'1/13/1962','7/13/2017');
	INSERT INTO CUSTOMER(Customer_id,Customer_fname,Customer_minit,Customer_lname,Customer_phone,Customer_email,Address,City,State,Zip,DOB,Subscription_date) 
	VALUES (11124,'Clarence','L','Bryan','203-346-0464','ClarenceMMiles@superrito.com','432 Cheshire Road','Las Vegas','NV',6702,'7/21/1984','5/25/2017');
	INSERT INTO CUSTOMER(Customer_id,Customer_fname,Customer_minit,Customer_lname,Customer_phone,Customer_email,Address,City,State,Zip,DOB,Subscription_date) 
	VALUES (11125,'Paul','W','Hunt','585-624-3907','PaulAGoodwin@armyspy.com','903 James Street','Honeoye Falls','NY',14472,'1/30/1972','6/14/2016');
	INSERT INTO CUSTOMER(Customer_id,Customer_fname,Customer_minit,Customer_lname,Customer_phone,Customer_email,Address,City,State,Zip,DOB,Subscription_date) 
	VALUES (11126,'Kelli',NULL,'Bryant','920-409-1034','KelliFBryan@rhyta.com','1662 Sycamore Lake Road','San Francisco','CA',53186,'12/9/1962','9/20/2016');
	INSERT INTO CUSTOMER(Customer_id,Customer_fname,Customer_minit,Customer_lname,Customer_phone,Customer_email,Address,City,State,Zip,DOB,Subscription_date) 
	VALUES (11127,'John','R','Wilson','845-791-9665','JohnRHunt@armyspy.com','1985 Old Dear Lane','Las Vegas','NV',12701,'10/11/1955','11/22/2016');
	INSERT INTO CUSTOMER(Customer_id,Customer_fname,Customer_minit,Customer_lname,Customer_phone,Customer_email,Address,City,State,Zip,DOB,Subscription_date) 
	VALUES (11128,'Jerry',NULL,'Phillips','562-843-5169','JerryLBryant@teleworm.us','3929 Kerry Way','Seattle','WA',92614,'2/4/1932','2/19/2017');

	
/* Inserting into Sub_type Table */

	insert into Sub_type values (3455, 'Non-HD', 20);
	insert into Sub_type values (3456, ‘HD’, 40);
	insert into Sub_type values (3457, ‘TV-Shows’, 10);
		

/* Inserting into  Subscription table */
	
	insert into Subscription values (45300, 11110, ‘2/1/17’, 3455);		
	insert into Subscription values (45301, 11111, ‘5/25/17’, 3455);		
	insert into Subscription values (45302, 11112, ‘3/29/16’, 3456);	
	insert into Subscription values (45303, 11113, ‘11/14/16’, 3456);		
	insert into Subscription values (45304, 11114, ‘2/5/17’, 3457);		
	insert into Subscription values (45305, 11115, ‘2/6/17’, 3457);		
	insert into Subscription values (45306, 11116, ‘2/7/17’, 3457);		
	insert into Subscription values (45307, 11117, ‘5/12/17’, 3457);
	insert into Subscription values (45308, 11118, ‘2/24/17’, 3455);		
	insert into Subscription values (45309, 11119, ‘2/28/17’, 3455);		
	insert into Subscription values (45310, 11120, ‘2/15/16’ 3455);		
	insert into Subscription values (45311, 11121, ‘6/20/16’, 3455);		
	insert into Subscription values (45312, 11122, ‘2/23/16’, 3456);		
	insert into Subscription values (45313, 11123, ‘7/13/17’, 3457);		
	insert into Subscription values (45314, 11124, ‘5/25/17’, 3457);
	insert into Subscription values (45315,  11125, ‘6/14/16’, 3457);	
	insert into Subscription values (45316, 11126, ‘9/20/16’, 3456);	
	insert into Subscription values (45317, 11127, ‘11/22/16’, 3455);
	insert into Subscription values (45318, 11128, ‘2/19/17’, 3456);
		

/* Inserting into Payment table */
		
	insert into Payment values (21200, 11110, 45300);
		
	insert into Payment values (21201, 11111, 45301);
		
	insert into Payment values (21202, 11112, 45302);
		
	insert into Payment values (21203, 11113, 45303);
		
	insert into Payment values (21204, 11114, 45304);
		
	insert into Payment values (21205, 11115, 45305);
		
	insert into Payment values (21206, 11116, 45306);
		
	insert into Payment values (21207, 11117, 45307);
		
	insert into Payment values (21208, 11118, 45308);
		
	insert into Payment values (21209, 11119, 45309);
		
	insert into Payment values (21210, 11120, 45310);
		
	insert into Payment values (21211, 11121, 45311);
		
	insert into Payment values (21212, 11122, 45312);
		
	insert into Payment values (21213, 11123, 45313);
		
	insert into Payment values (21214, 11124, 45314);
		
	insert into Payment values (21215, 11125, 45315);
		
	insert into Payment values (21216, 11126, 45316);
		
	insert into Payment values (21217, 11127, 45317);
		
	insert into Payment values (21218, 11128, 45318);
		
/* Inserting into Movie table */
		
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES 
(1001,'James Bond Story',1999,'James Bond','Chris Hunt','Daniel Craig',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES 
(1002,'World Is Not Enough',1999,'James Bond','Michael Apted','Roger Moore',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES 
(1003,'Die Another Day',2002,'James Bond','Lee Tamahori','Roger Moore',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES 
(1004,'Casino Royale',2006,'James Bond','Martin Campbell','Roger Moore',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES 
(1005,'Quantum of Solace',2008,'James Bond','Marc Forster','Roger Moore',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES 
(1006,'Skyfall',2012,'James Bond','Sam Mendes','Roger Moore',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES 
(1007,'Spectre',2015,'James Bond','Sam Mendes','Daniel Craig',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES 
(1008,'10.000 BC',2008,'Action','Roland Emmerich','Guy Hamilton',10,3455);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES 
(1009,'2012',2009,'Action','Roland Emmerich','John Glen',10,3455);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES 
(1010,'Born2Die (Cradle 2 the Grave)',2003,'Action','Andrzej Bartkowiak','Guy Hamilton',10,3455);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES 
(1011,'Bourne Identity: The',2002,'Action','Doug Liman','Lewis Gilbert',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES 
(1012,'Bourne Supremacy: The',2004,'Action','Paul Greengrass','Peter Hunt',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES 
(1013,'Bourne Ultimatum: The',2007,'Action','Paul Greengrass','Guy Hamilton',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
(1014,'Butterfly Effect 1: The',2004,'Horror','Eric Bress','Terence Young',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES 
(1015,'Butterfly Effect 2: The',2006,'Horror','John R. Leonetti','Terence Young',10,3455);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES 
(1016,'Cube',1998,'Horror','Vincenzo Natali','Lewis Gilbert',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
(1017,'Cloverfield',2008,'Sci-Fi','Matt Reeves','Guy Hamilton',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES 
(1018,'Cowboys and Aliens',2011,'Sci-Fi','Jon Favreau','Guy Hamilton',10,3455);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES 
(1019,'District 9',2009,'Sci-Fi','Neill Blomkamp','Peter Hunt',10,3455);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES 
(1020,'Fifth Element',1997,'Sci-Fi','Luc Besson','Terence Young',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES 
(1021,'Extreme Rage (Man Apart)',2003,'Action','F. Gary Gray','John Glen',10,3455);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1022,'Fast and the Furious',2001,'Action','Rob Cohen','Chris Hunt',10,3455);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1023,'Fight Club',1999,'Action','David Fincher','Guy Hamilton',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1024,'Final Call: The',2004,'Action','David R. Ellis','Terence Young',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1025,'Ghetto Gangz',2006,'Action','Luc Besson','Peter Hunt',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1026,'Babel',2006,'Drama','Alejandro González Iñárritu','Lewis Gilbert',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1027,'Beautiful Mind',2001,'Drama','Ron Howard','Terence Young',10,3455);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1028,'Black Swan',2010,'Drama','Darren Aronofsky','Guy Hamilton',10,3455);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1029,'Blood Diamond',2006,'Drama','Edward Zwick','Guy Hamilton',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1030,'Blow',2001,'Crime','Ted Demme','Lewis Gilbert',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1031,'Bone Collector',1999,'Crime','Phillip Noyce','John Glen',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1032,'Charlie Wilson''s War',2007,'Crime','Mike Nichols','John Glen',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1033,'Hostage',2005,'Crime','Florent Siri','Guy Hamilton',10,3455);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1034,'Ice Age 1',2002,'Animation','Chris Wedge','John Glen',10,3455);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1035,'Ice Age 2: The Meltdown',2006,'Animation','Carlos Saldanha','John Glen',10,3455);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1036,'Ice Age 3: Dawn of the Dinosaurs',2009,'Animation','Carlos Saldanha','John Glen',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1037,'Ice Age 4: Continental Drift',2012,'Animation','Steve Martino: Mike Thurmeier','Chris Hunt',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1038,'Illusionist: The',2006,'Fantasy','Neil Burger','Guy Hamilton',10,3455);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1039,'Lady in the Water',2006,'Fantasy','M. Night Shyamalan','John Glen',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1040,'League of Extraordinary Gentlemen: The',2003,'Fantasy','Stephen Norrington','Terence Young',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1041,'Lord of the Rings I - The Fellowship',2001,'Fantasy','Peter Jackson','John Glen',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1042,'Lord of the Rings II - The Two Towers',2002,'Fantasy','Peter Jackson','Chris Hunt',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1043,'Greys Anatomy',2004,'TV-Series','US-TV-Series','John Glen',10,3457);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1044,'Breaking Bad',2005,'TV-Series','US-TV-Series','Chris Hunt',10,3457);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1045,'Black Mirror',2006,'TV-Series','US-TV-Series','Irvin Kershner',10,3457);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1046,'13 Reasons Why',2006,'TV-Series','ARD-TV-Produktion','Terence Young',10,3457);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1047,'Riverdale',2008,'TV-Series','ARD-TV-Produktion','Terence Young',10,3457);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1048,'Orange Is the New Black',2012,'TV-Series','ARD-TV-Produktion','Guy Hamilton',10,3457);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1049,'Walking Dead',2004,'TV-Series','US-TV-Series','John Glen',10,3457);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1050,'Alexander',2004,'Historical','Oliver Stone','Chris Hunt',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1051,'Captain Corelli''s Mandolin',2001,'Historical','John Madden','Guy Hamilton',10,3456);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1052,'Casanova',1976,'Historical','Federico Fellini','Guy Hamilton',10,3455);
INSERT INTO Movie(Movie_id,Movie_title,Movie_year,Movie_genre,Moive_director,Movie_actor,Movie_copy,Movie_type) VALUES
 (1053,'Gladiator',2000,'Historical','Ridley Scott','Chris Hunt',10,3456);
	

/* Inserting into Genre table */

	insert into Genre values (400, ‘James Bond’);
		
	insert into Genre values (401, ‘Sci-Fi’);
		
	insert into Genre values (402, ‘Drama’);
		
	insert into Genre values (403, ‘Crime’);
		
	insert into Genre values (404, ‘TV-serie’);
		
	insert into Genre values (405, ‘Animation’);
			
	insert into Genre values (406, ‘Fantasy’);
		
		
/* Inserting into Checkout table */
		
	insert into Checkout values (11110,1001,0,CURRENT_TIME); 
	

