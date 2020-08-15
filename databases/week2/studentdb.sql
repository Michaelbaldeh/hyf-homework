CREATE DATABASE schoolstudent_db;
USE schoolstudent_db;
-- class table content 
CREATE TABLE class(
id int unsigned primary key auto_increment,
classname varchar(255) not null,
begins datetime,
ends datetime
);
-- student table content
CREATE TABLE student(
id int unsigned primary key auto_increment,
studentname varchar(255) not null,
email varchar(255) not null unique,
phone int unique,
class_id int unsigned not null,
FOREIGN KEY (class_id) references class(id)
);
-- index content
CREATE INDEX index_studentname
on student(name);

ALTER TABLE class
ADD status enum('not-started','ongoing','finish') not null;

