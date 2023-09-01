-- criacao do banco de dados para o cenario de E-commerce
-- drop database ecommerce;
create database ecommerce;
use ecommerce;

-- criar tabela cliente

create table clients(
	idClient int auto_increment primary key,
    Fname varchar(10),
    Minit char(3), 
    Lname varchar(20),
    CPF char(11) not null,
    DataNasc date,
    category enum ('PF', 'PJ') default 'PF',
    constraint unique_cpf_client unique (CPF)
);

alter table clients auto_increment=1;

-- criar tabela produto

create table products(
	idProduct int auto_increment primary key,
    Pname varchar(20) not null,
    classification_kids bool default false, 
    category enum ('Eletronicos','Roupas','Brinquedos','Alimentos','Moveis') default 'Eletronicos' not null,
    avaliacao float default 0,
    size varchar(10) default 0
);

alter table products auto_increment =1;

-- criar tabela pagamento

create table payments(
	idClient int,
    idPayment int,
    typePayment enum('Boleto','Cartao','Dois cartoes'),
    limitAvailable float,
    primary key(idClient, idPayment)
);

-- criar tabela pedido

create table orders(
	idOrder int auto_increment primary key,
    idOrderClient int,
    orderStatus enum('Cancelado','Confirmado','Em processamento') default 'Em processamento', 
    orderDescription varchar(255),
    sendValue float default 10,
    paymentCash bool default false,
    constraint fk_orders_client foreign key(idOrderClient) references clients(idClient)
);

-- criar tabela estoque

create table productStorage(
	idProdStorage int auto_increment primary key,
    storageLocation varchar(255),
    quantity int default 0
);

alter table productStorage auto_increment =1;

-- criar tabela fornecedor

create table supplier(
	idSupplier int auto_increment primary key,
    SocialName varchar(255) not null,
    CNPJ char(15) not null,
    contact char(20) not null,
    constraint unique_supplier unique (CNPJ)
);

alter table supplier auto_increment =1;

-- criar tabela vendedor

create table seller(
	idSeller int auto_increment primary key,
    SocialName varchar(255) not null,
    AbstName varchar(255),
    CNPJ char(15),
    CPF char(9),
    location varchar(255),
    contact char(20) not null,
    constraint unique_cnpj_seller unique (CNPJ),
    constraint unique_cpf_seller unique (CPF)
);

alter table seller auto_increment =1;

-- criar tabela produto vendedor

create table productSeller(
	idPseller int,
    idPproduct int,
    prodQuantity int default 1,
    primary key (idPseller, idPproduct),
    constraint fk_product_seller foreign key (idPseller) references seller(idSeller),
    constraint fk_product_product foreign key (idPproduct) references products(idProduct)
);

-- criar tabela produto pedido

create table productOrder(
	idPOorder int,
    idPOproduct int,
    poQuantity int default 1,
    poStatus enum('Disponivel', 'Sem estoque') default 'Disponivel',
    primary key (idPOorder, idPOproduct),
    constraint fk_product_order foreign key (idPOorder) references orders(idOrder),
    constraint fk_product_product foreign key (idPOproduct) references products(idProduct)
);

-- criar tabela produto estoque

CREATE TABLE storageLocation (
    idLproduct INT,
    idLstorage INT,
    location VARCHAR(255) NOT NULL,
    PRIMARY KEY (idLproduct , idLstorage),
    CONSTRAINT fk_product_storage FOREIGN KEY (idLstorage)
        REFERENCES productStorage (idProdStorage),
    CONSTRAINT fk_storage_product FOREIGN KEY (idLproduct)
        REFERENCES products (idProduct)
);

-- criar tabela produto fornecedor

create table productSupplier(
	idPsSupplier int,
    idPsProduct int,
    quantity int not null,
    primary key (idPsSupplier, idPsProduct),
    constraint fk_product_supplier foreign key (idPsSupplier) references supplier(idSupplier),
    constraint fk_supplier_product foreign key (idPsProduct) references products(idProduct)
);

-- criar tabela pedido entrega

create table orderDelivery(
	idDelivery int auto_increment,
    idDOrder int,
    isDelivered bool default false,
    primary key (idDelivery, idDOrder),
    constraint fk_product_order foreign key (idDOrder) references orders(idOrder)
);

alter table orderDelivery auto_increment =1;