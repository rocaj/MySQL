create database content;
use content;
create table urls
(
	url_id smallint unsigned not null auto_increment,
    url varchar(60) not null,
    url_title varchar(60) not null,
    url_description tinytext not null,
    primary key (url_id)
);
create table url_categories
(
	url_category_id tinyint unsigned not null auto_increment,
    category varchar(20) not null,
    primary key (url_category_id)
);
create table url_associations
(
	ua_id smallint unsigned not null auto_increment,
    url_id smallint unsigned not null,
    url_category_id tinyint unsigned not null,
    date_submitted timestamp,
    approved char(1) default 'N' not null,
    primary key (ua_id),
    foreign key (url_id)
		references urls (url_id)
        on delete cascade
        on update cascade,
	foreign key (url_category_id)
		references url_categories (url_category_id)
		on delete cascade
        on update cascade
);
