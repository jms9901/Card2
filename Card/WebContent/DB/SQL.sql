create database Portfolio;

create table Card(
	card_number int auto_increment,
	card_name varchar(100) not null,             
	card_company varchar(100) not null,          
	recommendation int,                         
	membership_fee int not null,                 
	images varchar(100),                         
	bank_link varchar(1000) not null,
	card_category varchar(100) not null,
	card_benefit varchar(20) not null,
    primary key (card_number, card_name)
);


create table Bulletin_board(
	board_num int not null primary key, 
	card_name varchar(100) not null,     
	review varchar(1000) not null,      
	star_score float,                   
	foreign key (card_name) references Card (card_name)
);

create table card.member(

	member_point int,
	member_id varchar(50) not null primary key, 
	member_password varchar(40) not null,
	member_name varchar(3000) not null,
	member_resdentnum int,
	member_sex varchar(40) not null,
	member_birth varchar(100),
	member_phone varchar(100) not null
    member_cardcompany varchar(600) not null,
	member_cardbenefit varchar(600) not null,
	member_cardtype varchar (600) not nulls



);


create table card.board(

	board_id int primary key  auto_increment ,
	board_title varchar(40) not null,
	board_cardname varchar(300) not null,
	board_userid varchar(100) not null,
	board_date varchar(40) not null,
	board_file varchar(100) ,
	board_count int 
);

