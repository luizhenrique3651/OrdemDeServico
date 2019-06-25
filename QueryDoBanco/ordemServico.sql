-- criando banco de dados
create database dbOrdemServico;
use dbOrdemServico;



-- criando tabela pra usuario

create table usuarios(

idUsuario int primary key,
usuario varchar(55) not null,
teleUsuario varchar(15),
login varchar(20) not null unique,
senha varchar(20) not null

);


insert into usuarios(idUsuario, usuario, teleUsuario, login, senha)
 values(1, 'Luiz Henrique', '92061441', 'luiz.albuquerque', 'luiz123');
 
 
 insert into usuarios(usuario, teleUsuario, login, senha)
 values('Luiz Henrique', '92061441', 'luiz.admin', 'luiz123');
 
 
 create table clientes(
 idcliente int primary key auto_increment,
 nomeCliente varchar(55) not null,
 enderecoCliente varchar(100),
 foneCliente varchar(15),
 emailCiente varchar(55)
 );
 
 
 insert into clientes (nomeCliente, enderecoCliente, foneCliente, emailCiente) values ('Tosvaldo Linuquis', 'rua Tux', '1234567', 'linuquis@tosvaldo');
 
 select * from clientes;
 
 
 create table TbOs(
 ordemServ int primary key auto_increment,
 dataOs timestamp default current_timestamp,
 
 
 );
 
