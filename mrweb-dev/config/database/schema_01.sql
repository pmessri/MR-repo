
create table projects (
	id int unsigned not null auto_increment,
	mm_id varchar(32),
	internal_id varchar(32),
	title varchar(255),
	sex varchar(32),
	dob_DD varchar(32),
	dob_MM varchar(32),
	dob_YY varchar(32),
	diet varchar(32),
	price varchar(32),
	timestamp timestamp not null default now(),
	primary key (id)
);

create table project_traits (
	id int unsigned not null auto_increment,
	project_id int unsigned not null default 0,
	trait_id int unsigned not null default 0,
	timestamp timestamp not null default now(),
	primary key (id)
);


create table traits (
	id int unsigned not null auto_increment,
	name varchar(255) not null,
	timestamp timestamp not null default now(),
	primary key (id)
);


create table images (
	id int unsigned not null auto_increment,
	project_id int unsigned not null default 0,
	filename varchar(255) not null,
	timestamp timestamp not null default now(),
	primary key (id)
);

