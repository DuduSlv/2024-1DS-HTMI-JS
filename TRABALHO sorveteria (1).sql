create database sorveteria;
use sorveteria;

create table clientes (id bigint auto_increment primary key not null,
  nome varchar(50) not null,
  email varchar(50) unique,
  telefone varchar(15) not null,
  forma_pagamento varchar(50) not null,
  pedido varchar(50) not null);
  
  create table produtos (id bigint auto_increment primary key,
  nome_produto varchar(50) not null,
  numero_produto varchar(50) not null,
  quantidade_estoque int not null,
  descricao_sabor varchar(50) not null,
  reposicao date not null,
  estoque ENUM('cheio', 'vazio'));
  
  create table tipos (id bigint auto_increment primary key,
	tamanho_casca varchar(50) not null,
    tipo_pote varchar(50) not null,
    sundae varchar (50) not null,
    picole varchar (50) not null,
    milk_shake varchar(50) not null,
    gelinho varchar(50) not null);
    
    create table sorveteria (id bigint auto_increment primary key,
    area_da_loja int not null,
    funcionarios int not null,
    cargo_funcionarios varchar(50) not null,
    endereco varchar(155));
    
    create table promocoes (
    id_promocao int auto_increment primary key,
    descricao text not null,
    data_inicio date not null,
    data_fim date not null,
    desconto decimal(5, 2) not null,
    produto_relacionado int
    );
