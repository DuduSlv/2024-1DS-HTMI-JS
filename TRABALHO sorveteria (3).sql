create database sorveteria;
use sorveteria;

create table clientes (id_clientes bigint auto_increment primary key not null,
  nome_cliente varchar(50),
  email varchar(50) unique,
  telefone varchar(15) not null);
  
   INSERT INTO clientes (nome, gmail, numero) VALUES
('Ana Silva', 'ana.silva@gmail.com', '11987654321' ),
('Bruno Costa', 'bruno.costa@gmail.com', '21987654322'  ),
('Carla Lima', 'carla.lima@gmail.com', '31987654323' ),
('Daniel Souza', 'daniel.souza@gmail.com', '41987654324'  ),
('Eduarda Pereira', 'eduarda.pereira@gmail.com', '51987654325'),
('Felipe Almeida', 'felipe.almeida@gmail.com', '61987654326'),
('Gustavo Rocha', 'gustavo.rocha@gmail.com', '71987654327'),
('Helena Martins', 'helena.martins@gmail.com', '81987654328'),
('Igor Santos', 'igor.santos@gmail.com', '91987654329'),
('Juliana Dias', 'juliana.dias@gmail.com', '11987654330'),
('Karla Nunes', 'karla.nunes@gmail.com', '21987654331'),
('Lucas Pereira', 'lucas.pereira@gmail.com', '31987654332'),
('Maria Clara', 'maria.clara@gmail.com', '41987654333'),
('Nicolas Freitas', 'nicolas.freitas@gmail.com', '51987654334'),
('Olga Santos', 'olga.santos@gmail.com', '61987654335'),
('Pedro Henrique', 'pedro.henrique@gmail.com', '71987654336'),
('Quésia Oliveira', 'quesia.oliveira@gmail.com', '81987654337'),
('Rafael Lima', 'rafael.lima@gmail.com', '91987654338'),
('Sofia Almeida', 'sofia.almeida@gmail.com', '11987654339'),
('Tiago Costa', 'tiago.costa@gmail.com', '21987654340'),
('Eduardo Silva', 'eduardo.silva@gmail.com', '28428382732'); 

  create table produtos (id_produtos bigint auto_increment primary key,
  nome_produto varchar(50) not null,
  numero_produto varchar(50) not null,
  quantidade_estoque int not null,
  descricao_sabor varchar(50) not null,
  reposicao date not null,
  tamanho_casca enum('pequena', 'grande', 'media',
  freezer ENUM('cheio', 'vazio'));
   
    create table sorveteria (id_sorveteria bigint auto_increment primary key,
    area_da_loja int not null,
    nome_funcionarios int not null,
    cargo_funcionarios varchar(50) not null,
    endereco varchar(155));
    INSERT INTO sorveteria (nome_funcionario, cargo_funcionarios) VALUES ('Ana Silva', 'Atendente'),
      ('Bruno Costa', 'Gerente'),
      ('Carla Lima', 'Sorveteiro'),
      ('Daniel Souza', 'Atendente'),
      ('Eduarda Pereira', 'Gerente de Estoque'),
      ('Felipe Almeida', 'Sorveteiro'),
      ('Gabriela Santos', 'Atendente'),
      ('Henrique Oliveira', 'Gerente'),
      ('Isabela Rocha', 'Sorveteiro'),
      ('João Pedro', 'Atendente'),
      ('Larissa Martins', 'Sorveteiro'),
      ('Matheus Lima', 'Gerente de Operacoes'),
      ('Natalia Costa', 'Atendente'),
      ('Otavio Silva', 'Sorveteiro'),
      ('Priscila Fernandes', 'Atendente'),
      ('Quentin Souza', 'Gerente de Vendas'),
      ('Rafaela Gomes', 'Sorveteiro'),
      ('Samuel Pereira', 'Atendente'),
      ('Thais Barbosa', 'Gerente'),
      ('Vinicius Rocha', 'Sorveteiro');
    
    create table promocoes (id_promocao int auto_increment primary key,
    descricao text not null,
    data_inicio date not null,
    data_fim date not null,
    desconto decimal(5, 2) not null,
    produto_relacionado int);

    INSERT INTO promocoes (descricao, data_inicio, data_fim, desconto, produto_relacionado) VALUES
    ('Promocao "Verao Gelado": Desconto de 30% em todos os sorvetes de fruta', '2025-12-01', '2026-01-31', 30.00, 'Sorvetes de morango, manga, abacaxi e maracuja'),
('Compre 2, leve 3: Na compra de dois potes de sorvete, ganhe o terceiro de graça', '2025-06-10', '2025-06-20', 100.00, 'Potes de 1L de sorvete de creme e chocolate'),
('Promoção "Sobremesa Completa": Na compra de um sundae, leve uma cobertura de chocolate grátis', '2025-07-15', '2025-07-31', 0.00, 'Sundae de baunilha ou chocolate'),
('Happy Hour Gelado: Sorvetes a 50% de desconto das 15h às 17h', '2025-08-01', '2025-08-31', 50.00, 'Sorvetes de 500ml (qualquer sabor)'),
('Festa de Sorvete: Ao fazer qualquer festa de aniversário no local, ganhe um sorvete extra para todos os convidados', '2025-06-01', '2025-06-30', 0.00, 'Todos os sabores de sorvetes'),
('Sábado de Ofertas: Desconto de 20% em todos os sorvetes aos sábados', '2025-05-01', '2025-05-30', 20.00, 'Todos os sorvetes'),
('Combo Família: Compre 4 potes de sorvete e ganhe um pacote de wafer grátis', '2025-10-01', '2025-10-15', 0.00, 'Sorvetes de chocolate, baunilha, morango e limão'),
('Dia das Mães Especial: Na compra de dois sorvetes de 500ml, ganhe um mini sundae para sua mãe', '2025-05-01', '2025-05-10', 0.00, 'Sorvetes de 500ml (qualquer sabor)'),
('Promoção da Amizade: Traga um amigo e ganhe 20% de desconto no seu pedido', '2025-06-01', '2025-06-10', 20.00, 'Qualquer sorvete ou sundae'),
('Desconto Jovem: Desconto especial de 25% para jovens entre 18 e 25 anos', '2025-04-01', '2025-04-30', 25.00, 'Sorvetes de 500ml'),
('Carnaval Gelado: Ganhe 15% de desconto em todos os produtos ao se fantasiar de carnaval', '2025-02-10', '2025-02-20', 15.00, 'Todos os produtos'),
('Promoção do Dia das Crianças: As crianças até 12 anos ganham um sorvete grátis no dia 12 de outubro', '2025-10-12', '2025-10-12', 100.00, 'Mini sorvetes de creme e chocolate'),
('Sorvete na Taça: Ao pedir qualquer taça de sorvete, ganhe uma fatia de bolo de chocolate grátis', '2025-09-01', '2025-09-15', 0.00, 'Taças de sorvete'),
('Copo Especial: Ganhe um copo personalizado ao comprar 2 sorvetes de 500ml', '2025-07-01', '2025-07-31', 0.00, 'Sorvetes de 500ml (qualquer sabor)'),
('Promoção Café Gelado: Ganhe 10% de desconto no seu sorvete de café ao pedir uma bebida gelada no cardápio', '2025-08-01', '2025-08-31', 10.00, 'Sorvete de café'),
('Festival de Sorvetes: Desconto de 30% nos sorvetes de 1 litro durante o mês de julho', '2025-07-01', '2025-07-31', 30.00, 'Sorvetes de 1L (qualquer sabor)'),
('Combo Dia dos Namorados: Na compra de dois sorvetes de 500ml, ganhe uma taça de vidro exclusiva', '2025-06-01', '2025-06-12', 0.00, 'Sorvetes de 500ml (sabor à escolha)'),
('Promoção do Dia do Sorvete: Em comemoração ao Dia do Sorvete, todos os sorvetes terão 20% de desconto', '2025-09-23', '2025-09-23', 20.00, 'Todos os sorvetes'),
('Adoce seu Natal: Ganhe um mini panetone grátis ao comprar qualquer combo de sorvetes no mês de dezembro', '2025-12-01', '2025-12-25', 0.00, 'Combos de sorvete (qualquer sabor)'),
('Promoção de Inverno: Sorvetes de chocolate quente com 20% de desconto durante o inverno', '2025-06-01', '2025-08-31', 20.00, 'Sorvete de chocolate quente');

create table vendas (id_vendas bigint auto_increment primary key, 
data_pedidos date not null,
tempo_preparo time not null,
forma_pagamento varchar(50),
tempo_de_espera varchar(50),
id_cliente bigint,
id_produto bigint,
foreign key (id_produto) references produto (id_produto),
foreign key (id_cliente) references cliente (id_cliente));






