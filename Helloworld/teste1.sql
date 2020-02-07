create database Hello_World;

use Hello_World;


create table Mundo (
	IdPais Int primary key identity,
	Nome varchar(100)
);

insert into Mundo (Nome)
values ('Japão'),('Brasil'),('Estados Unidos');


select * from Mundo;