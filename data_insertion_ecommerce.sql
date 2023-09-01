-- show tables;

INSERT INTO clients (Fname, Minit, Lname, CPF, DataNasc, category)
 VALUES ('Maria', 'M', 'Silva', '12345678910', '1977-01-19', 'PF' ),
		('Matheus', 'T', 'Guimaraes', '12345678911', '1970-11-13', 'PF' ),
		('Ricardo', 'V', 'Carvalho', '12345678912', '1988-05-29', 'PF' ),
		('Julia', 'C', 'Reisemberg', '12345678913', '1997-05-06', 'PF' ),
		('Roberta', 'C', 'Souza', '12345678914', '1980-07-17', 'PF' ),
		('Isabela', 'S', 'Santos', '12345678915', '1969-12-01', 'PF' ),
		('Jorge', 'V', 'Franca', '12345678916', '2002-05-21', 'PF' ),
		('Guilherme', 'M', 'Dias', '12345678917', '1987-08-06', 'PF' ),
		('Marcelo', 'G', 'Souza', '12345678918', '1950-01-05', 'PF' );


INSERT INTO products (Pname, classification_kids, category, avaliacao, size )
	VALUES ('Fone de Ouvido', false, 'Eletronicos','4', null),
		   ('Barbie Elsa', true, 'Brinquedos','3', null),
		   ('Body Carters', true, 'Roupas','5', null),
		   ('Microfone', true, 'Eletronicos','4', null),
		   ('Sofá Retretíl', false, 'Moveis','3', '3x57x80'),
		   ('Poltrona', false, 'Moveis','4', '1x11x13'),
           ('Farinha de arroz', false, 'Alimentos','2', 'null');

-- select * from clients;
-- select * from products;

INSERT INTO orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash)
	VALUES (1, default, 'compra via aplicativo', null, 1),
		   (1, default, 'compra via aplicativo', null, 1),
		   (2, default, 'compra via aplicativo', 50, 0),
           (3, 'Confirmado', null, null, 1),
           (4, default, 'compra via web site', 150, 0);

-- select * from orders;

INSERT INTO productOrder (idPOorder, idPOproduct, poQuantity, poStatus)
			VALUES (6,2,2,default),
			 (7,6,1,default),
			 (2,7,10,default),
			 (4,5,1,default);

-- select * from productOrder;

INSERT INTO productStorage (storageLocation, quantity)
			VALUES ('Rio de Janeiro', 1000),
             ('Rio de Janeiro', 5000),
			 ('São Paulo', 500),
			 ('Belo Horizonte', 100),
			 ('Salvador', 50),
			 ('Cuiabá', 110);

-- select * from productStorage;

INSERT INTO storageLocation (idLproduct, idLstorage, location)
				VALUES (5, 1, 'RJ'),
				 (2, 2, 'RJ'),
				 (4, 3, 'SP'),
				 (7, 4, 'MG');

INSERT INTO supplier (SocialName, cnpj, contact)
			VALUES ('Razer', 123456789123456,'21989897934'),
				('Distribuidora DS', 123456789123457,'21120200622'),
				('Almeida e Filhos', 123456789123458,'21980796433'),
				('Eletronicos Silva', 123456789123459,'21997551232'),
				('Fazenda Balinesa', 123456789123410,'3295079556');

-- select * from supplier;

INSERT INTO productSupplier (idPsSupplier, idPsProduct, quantity )
			VALUES (1, 1, 1000),
			 (4, 4, 200),
			 (5, 7, 150),
			 (3, 2, 20);

INSERT INTO seller (SocialName, CNPJ, CPF, location, contact)
			VALUES ('Tech Eletronicos', 123789456123789, null, 'Rio de Janeiro', 21976541312),
			 ('Botequim do Zeca', null, 123789456, 'Sao Paulo', 11985161309),
			 ('Briquedos LS', null, 123789457, 'Sao Paulo', 11998675431),
			 ('Loja do Ricardo', 123789456123710,null, 'Rio de Janeiro',  21980161223),
             ('Almeida e Filhos', 123456789123458, null, 'Rio de Janeiro','21980796433');

-- select * from seller;

INSERT INTO productSeller (idPSeller, idPproduct, prodQuantity)
			VALUES (1,1,80),
			 (2,7,50),
			 (4,5,7);

INSERT INTO orderDelivery (idDOrder, isDelivered)
			VALUES (1, true),
			 (2, true),
			 (4, true);


