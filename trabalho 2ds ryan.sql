create database sorveteria;
use sorveteria;



 
 

CREATE TABLE IF NOT EXISTS produto (
  id_produto BIGINT PRIMARY KEY AUTO_INCREMENT,
  nome_produto VARCHAR(100) NOT NULL,
  descricao_produto VARCHAR(150) NOT NULL,
  preco DECIMAL(10,2) NOT NULL 
);


CREATE TABLE IF NOT EXISTS cliente (
  id_cliente BIGINT PRIMARY KEY AUTO_INCREMENT,
  nome_cliente VARCHAR(100) NOT NULL,
  telefone_cliente VARCHAR(20) NOT NULL,
  email_cliente VARCHAR(100) NOT NULL,
  data_cadastro DATE NOT NULL
);


CREATE TABLE IF NOT EXISTS pedido (
  id_pedido BIGINT PRIMARY KEY AUTO_INCREMENT,  
  id_cliente BIGINT NOT NULL,                    
  data_hora DATETIME NOT NULL,
  valor_total DECIMAL(10,2) NOT NULL,         
  status_pedido ENUM('em preparo', 'pronto', 'entregue', 'cancelado') NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);
