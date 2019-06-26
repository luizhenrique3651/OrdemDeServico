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
 
 
 insert into usuarios(idUsuario, usuario, teleUsuario, login, senha)
 values(2, 'Luiz Henrique', '92061441', 'luiz.admin', 'luiz123');
 
 
 create table clientes(
 idcliente int primary key auto_increment,
 nomeCliente varchar(55) not null,
 enderecoCliente varchar(100),
 foneCliente varchar(15),
 emailCliente varchar(55)
 );
 
 
 insert into clientes (nomeCliente, enderecoCliente, foneCliente, emailCliente) values ('Tosvaldo Linuquis', 'rua Tux', '1234567', 'linuquis@tosvaldo');
 
 select * from clientes;
 
 
 create table TbOs(
 ordemServ int primary key auto_increment,
 dataOs timestamp default current_timestamp,
 equipamento varchar(150) not null,
 defeito varchar(150) not null,
 servico varchar(150),
 tecnico varchar(55),
 precoServico decimal(10,2),
 idClienteOs int not null,
 foreign key(idClienteOs) references clientes(idCliente)
 
 );
 
insert into TbOs(equipamento, defeito, servico, tecnico, precoServico, idClienteOs) values ("Notebook bolado", "GPU fdd", "rebailing", "zéza1", 200, 1);
select * from TbOs;

-- o codigo abaixo traz info de duas tabelas

select
O.ordemServ, equipamento, 
defeito, servico, precoServico,
C.nomeCliente, foneCliente
from TbOs as O
inner join clientes as C
on (O.idClienteOs = C.idcliente);