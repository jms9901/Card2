create database Portfolio;

create table Card_company(
	card_company varchar(100) not null primary key,  
	card_name varchar(100) not null,                
	card_category varchar(100) not null,             
);


create table Card(
	card_number int auto_increment primary key,
	card_name varchar(100) not null,             
	card_company varchar(100) not null,          
	recommendation int,                         
	membership_fee int not null,                 
	images varchar(100),                         
	bank_link varchar(1000) not null,           
);


create table Bulletin_board(
	board_num int not null primary key, 
	card_name varchar(100) not null,     
	review varchar(1000) not null,      
	star_score float,                   
	foreign key (card_name) references Card (card_name)
);

create table card.member(

	member_point int not null,
	member_id varchar(50) not null , 
	member_password varchar(40) not null,
	member_name varchar(3000) not null,
	member_resdentnum int primary key AUTO_INCREMENT,
	member_sex varchar(40) not null,
	member_birth varchar(100) not null,
	member_phone varchar(100) not null
    member_cardcompany varchar(600) not null,
	member_cardbenefit varchar(600) not null,
	member_cardtype varchar (600) not null



);

create table card.interest(

	interest_num int primary key AUTO_INCREMENT,
	member_name varchar(50) not null , 
	card_card varchar(50) not null 

)