CREATE SCHEMA `messageDatabase` ;

CREATE TABLE `messageDatabase`.`USER` (
 `USER_ID` INT NOT NULL,
 `USER_NAME` VARCHAR(45) NULL,
 `USER_DISPLAY_NAME` VARCHAR(45) NULL,
 `PASSWORD` VARCHAR(45) NOT NULL,
 `CREATION_DATE` DATE NULL,
 `PHONE_RakshaNUMBER` INT NULL,
 `ONLINE_STATUS` VARCHAR(15) NULL,
 PRIMARY KEY (`USER_ID`),
 UNIQUE INDEX `USER_NAME_UNIQUE` (`USER_NAME` ASC));

CREATE TABLE `messageDatabase`.`CIRCLE` (
 `CIRCLE_ID` INT NOT NULL,
 `CIRCLE_NAME` VARCHAR(45) NULL,
 `CIRCLE_CREATION_DATE` DATE NULL,
 `CIRCLE_CREATED_BY` VARCHAR(45) NOT NULL,
 PRIMARY KEY (`CIRCLE_ID`));
 


/* 3. Fetch the row from User table based on Id and Password.*/
select * from USER where (USER_ID =1 and PASSWORD='cc');

/*4 Fetch all the rows from Circle table based on the field created_by.*/
Select * from CIRCLE where  CIRCLE_CREATED_BY='';

/*5 Fetch all the Circles created after the particular Date.*/
Select CIRCLE_NAME from CIRCLE where  CIRCLE_CREATION_DATE='';

/*6 Fetch all the User Ids from UserCircle table subscribed to particular Circle.*/

/*7 Write upDate query to unsubscribe to particular Circle for the given User Id.*/

/* 8 Fetch all the Messages from the Messages table sent by a particular User.*/

/* 9 Fetch all the Messages from the Messages table received by a particular User.*/
/*  10Fetch all the Messages from the Messages table sent/received by a particular User. (both the Messages)*/
/* 11 Write a query to send Message from particular User to another User(Use Message table - insert statement).*/
/* 12 Write a query to send Message from particular User to particular Circle(Use Message table - insert statement)*/
/* 13Writ e a query to delete particular Message which you received from User(User Inbox table - delete statement)*/
/* 14 Write a query to delete particular Message which you received from particular Circle(User Inbox table - delete statement) */