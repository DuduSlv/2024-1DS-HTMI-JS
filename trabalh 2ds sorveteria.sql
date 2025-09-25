create database sorveteria;
use sorveteria;


create table produto(
id_produto BIGINT primary KEY NOT NULL auto_increment,
nome_produto varchar(100) not null,
descricao_produto varchar(150) not null,
preco float not null,
id_tipo_produto bigint not null
 );
 
 
 create table cliente(
 id_cliente INT primary key not null auto_increment,
 nome_cliente varchar(100) not null,
 telefone_cliente varchar(20) not null,
 email_cliente varchar(100) not null,
 data_cadastro date not null);
 
 create table pedido(
 id_pedido INT primary key not null auto_increment,
 data_hora datetime not null,
 valor_total float(10, 1) not null,
 status_pedido enum('em preparo', 'pronto', 'entregue', 'cancelado') not null,
 foreign key(id_tipo) references tipos_produto(id_tipo));





