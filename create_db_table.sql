create database mywebsite;
use mywebsite;
create table users
(
	user_id mediumint unsigned not null auto_increment,
    first_name varchar(15) not null,
    last_name varchar(30) not null,
    email varchar(40) not null,
    user_password char(40) not null,
    registration_date datetime not null,
    primary key (user_id)
);
show tables;
show columns from users;
