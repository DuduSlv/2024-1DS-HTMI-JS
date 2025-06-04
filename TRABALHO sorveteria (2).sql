create database sorveteria;
use sorveteria;

create table clientes (id_clientes bigint auto_increment primary key not null,
  nome varchar(50) not null,
  email varchar(50) unique,
  telefone varchar(15) not null,
  forma_pagamento varchar(50) not null,
  pedido varchar(50) not null);
   INSERT INTO cliente (nome, gmail, numero, forma_pagamento) VALUES
('Ana Silva', 'ana.silva@gmail.com', '11987654321', 'Cartão de Crédito'),
('Bruno Costa', 'bruno.costa@gmail.com', '21987654322', 'Pix'),
('Carla Lima', 'carla.lima@gmail.com', '31987654323', 'Boleto'),
('Daniel Souza', 'daniel.souza@gmail.com', '41987654324', 'Cartão de Débito'),
('Eduarda Pereira', 'eduarda.pereira@gmail.com', '51987654325', 'Pix'),
('Felipe Almeida', 'felipe.almeida@gmail.com', '61987654326', 'Cartão de Crédito'),
('Gustavo Rocha', 'gustavo.rocha@gmail.com', '71987654327', 'Boleto'),
('Helena Martins', 'helena.martins@gmail.com', '81987654328', 'Pix'),
('Igor Santos', 'igor.santos@gmail.com', '91987654329', 'Cartão de Débito'),
('Juliana Dias', 'juliana.dias@gmail.com', '11987654330', 'Cartão de Crédito'),
('Karla Nunes', 'karla.nunes@gmail.com', '21987654331', 'Pix'),
('Lucas Pereira', 'lucas.pereira@gmail.com', '31987654332', 'Boleto'),
('Maria Clara', 'maria.clara@gmail.com', '41987654333', 'Cartão de Débito'),
('Nicolas Freitas', 'nicolas.freitas@gmail.com', '51987654334', 'Pix'),
('Olga Santos', 'olga.santos@gmail.com', '61987654335', 'Cartão de Crédito'),
('Pedro Henrique', 'pedro.henrique@gmail.com', '71987654336', 'Boleto'),
('Quésia Oliveira', 'quesia.oliveira@gmail.com', '81987654337', 'Pix'),
('Rafael Lima', 'rafael.lima@gmail.com', '91987654338', 'Cartão de Débito'),
('Sofia Almeida', 'sofia.almeida@gmail.com', '11987654339', 'Cartão de Crédito'),
('Tiago Costa', 'tiago.costa@gmail.com', '21987654340', 'Pix');
  
  create table produtos (id_produtos bigint auto_increment primary key,
  nome_produto varchar(50) not null,
  numero_produto varchar(50) not null,
  quantidade_estoque int not null,
  descricao_sabor varchar(50) not null,
  reposicao date not null,
  freezer ENUM('cheio', 'vazio'));
  INSERT INTO tipo (tamanho_casca, tamanho_pote, sabor_pote, tamanho_milk_shake, sabor_milk_shake, sabor_gelinho) VALUES
('Pequena', 'Pequeno', 'Chocolate', 'Pequeno', 'Baunilha', 'Morango'),
('Média', 'Médio', 'Baunilha', 'Médio', 'Chocolate', 'Limão'),
('Grande', 'Grande', 'Morango', 'Grande', 'Morango', 'Laranja'),
('Pequena', 'Médio', 'Laranja', 'Pequeno', 'Baunilha', 'Uva'),
('Média', 'Grande', 'Limão', 'Médio', 'Laranja', 'Abacaxi'),
('Grande', 'Pequeno', 'Uva', 'Grande', 'Baunilha', 'Coco'),
('Pequena', 'Grande', 'Coco', 'Pequeno', 'Morango', 'Maracujá'),
('Média', 'Pequeno', 'Maracujá', 'Médio', 'Limão', 'Goiaba'),
('Grande', 'Médio', 'Goiaba', 'Grande', 'Uva', 'Caju'),
('Pequena', 'Pequeno', 'Caju', 'Pequeno', 'Coco', 'Pitanga'),
('Média', 'Grande', 'Pitanga', 'Média', 'Maracujá', 'Açaí'),
('Grande', 'Grande', 'Açaí', 'Grande', 'Goiaba', 'Graviola'),
('Pequena', 'Médio', 'Graviola', 'Pequeno', 'Caju', 'Cupuaçu'),
('Média', 'Pequeno', 'Cupuaçu', 'Médio', 'Pitanga', 'Bacaba'),
('Grande', 'Médio', 'Bacaba', 'Grande', 'Açaí', 'Jabuticaba'),
('Pequena', 'Grande', 'Jabuticaba', 'Pequeno', 'Goiaba', 'Cacau'),
('Média', 'Grande', 'Cacau', 'Médio', 'Coco', 'Marula'),
('Grande', 'Pequeno', 'Marula', 'Grande', 'Limão', 'Tamarindo'),
('Pequena', 'Pequeno', 'Tamarindo', 'Pequeno', 'Baunilha', 'Gengibre'),
('Média', 'Médio', 'Gengibre', 'Médio', 'Cacau', 'Canela');
   
    
    create table sorveteria (id_sorveteria bigint auto_increment primary key,
    area_da_loja int not null,
    nome_funcionarios int not null,
    cargo_funcionarios varchar(50) not null,
    endereco varchar(155));
    INSERT INTO sorveteria (nome_funcionario, cargo) VALUES ('Ana Silva', 'Atendente'), ('Bruno Costa', 'Gerente'), ('Carla Lima', 'Sorveteiro'), ('Daniel Souza', 'Atendente'), ('Eduarda Pereira', 'Gerente de Estoque'), ('Felipe Almeida', 'Sorveteiro'), ('Gabriela Santos', 'Atendente'), ('Henrique Oliveira', 'Gerente'), ('Isabela Rocha', 'Sorveteiro'), ('João Pedro', 'Atendente'), ('Larissa Martins', 'Sorveteiro'), ('Matheus Lima', 'Gerente de Operações'), ('Natália Costa', 'Atendente'), ('Otávio Silva', 'Sorveteiro'), ('Priscila Fernandes', 'Atendente'), ('Quentin Souza', 'Gerente de Vendas'), ('Rafaela Gomes', 'Sorveteiro'), ('Samuel Pereira', 'Atendente'), ('Thais Barbosa', 'Gerente'), ('Vinícius Rocha', 'Sorveteiro');
    
    create table promocoes (id_promocao int auto_increment primary key,
    descricao text not null,
    data_inicio date not null,
    data_fim date not null,
    desconto decimal(5, 2) not null,
    produto_relacionado int
    );

create table vendas (id_vendas bigint auto_increment primary key, 
id_cliente INT,
data_pedidos date,



