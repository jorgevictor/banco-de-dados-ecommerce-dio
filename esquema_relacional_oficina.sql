-- criacao do banco de dados para o cenario de uma oficina
-- drop database oficina;
create database oficina;
use oficina;

-- criar tabela cliente

create table clients(
	idClient int auto_increment primary key,
    Name varchar(40),
    CPF char(11) not null,
    DataNasc date,
    contato varchar (15) not null unique,
    constraint unique_cpf_client unique (CPF)
);



alter table clients auto_increment=1;

-- criar tabela mecanico --

create table mechanics (
	idMechanic int auto_increment primary key,
	Name varchar(25),
    CPF char(11) not null,
	especialidade varchar (15) not null,
	contato varchar (15) not null unique,
	constraint unique_cpf_mechanic unique (CPF)
);

alter table mechanics auto_increment=1;

-- criar tabela automovel--

create table auto (
	idAuto int auto_increment primary key,
	plate varchar (8) not null unique,
	idClient int,
    isReadyToGo bool default false,
	constraint fk_idClient foreign key (idClient) references clients(idClient)
);

alter table auto auto_increment=1;

-- criar tabela servico--

create table service (
	idService int auto_increment,
	descricao varchar(50),
	idAuto int,
    primary key (idService, idAuto),
    constraint fk_idAuto foreign key (idAuto) references auto(idAuto)
);

alter table service auto_increment=1;

-- criar tabela mecanico servico--

create table mechanicService(
	idMSService int,
    idMSMechanic int,
    primary key (idMSService, idMSMechanic),
    constraint fk_mechanic_service foreign key (idMSService) references service(idService),
    constraint fk_service_mechanic foreign key (idMSMechanic) references mechanics(idMechanic)
);


