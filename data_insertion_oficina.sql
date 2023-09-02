INSERT INTO clients (Name, CPF, DataNasc, contato)
 VALUES ('Maria Clara', '12345678910', '1977-02-20', '21965667213'),
		('Matheus Gomes', '12345678911', '1980-02-05', '21965667214'),
		('Ricardo Souza', '12345678912', '1994-03-18', '21965667215'),
		('Julia Rodrigues', '12345678913', '1965-12-19', '21965667216'),
		('Roberta Muzi', '12345678914', '1977-11-07', '21965667217'),
		('Isabela Franca', '12345678915', '1993-06-03', '21965667218'),
		('Jorge Andrade', '12345678916', '1980-06-09', '21965667219'),
		('Guilherme Silva', '12345678917', '1983-07-14', '21965667220'),
		('Marcelo Menezes', '12345678918', '1985-05-16', '21965667221');


INSERT INTO mechanics (Name, CPF, especialidade, contato)
 VALUES ('Joel Santana', '22345678910', 'rodas', '21965667213'),
		('Seu Roberto', '23345678911', 'motor', '21965667214'),
		('Eduardo Edy', '24345678912', 'portas', '21965667215'),
		('Junior Baiano', '25345678913', 'motor', '21965667216'),
		('Marcelinho Carioca', '26345678914', 'motor', '21965667217'),
		('Adriano', '27345678915', 'rodas', '21965667218'),
		('Mestre Ronaldo', '28345678916', 'limpeza', '21965667219'),
		('Nelson', '29345678917', 'motor', '21965667220'),
		('Nelsinho Gomes', '30345678918', 'amassado', '21965667221');

INSERT INTO auto (plate, idClient)
 VALUES ('ABC1234', '1'),
		('ADE2402', '1'),
		('RJO1010', '7'),
		('UYT7000', '6'),
		('TGU9090', '6'),
		('WFE5900', '3'),
		('FER1893', '2'),
		('GHT5465', '8'),
        ('OKR8932', '9'),
		('JOI7892', '5'),
		('CSV5564', '5'),
		('BHI1484', '5'),
        ('JHN0893', '4'),
		('NMF2130', '5'),
        ('OAI3952', '3'),
		('BDF0928', '1'),
		('FSR5430', '5');

INSERT INTO service (descricao, idAuto)
 VALUES ('pneu furado, parachoque quebrado', '1'),
		('porta emperrada, motor picotando', '5'),
		('pneu furado, lataria amassada. janela quebrada', '15'),
		('motor quebrado', '6'),
		('parabrisa quebrado', '8'),
		('lataria amassada, retrovisor quebrado', '7'),
		('motor quebrado', '4'),
		('tanque furado', '14');

INSERT INTO mechanicService (idMSService, idMSMechanic)
 VALUES ('1', '1'),
		('1', '9'),
		('2', '9'),
		('2', '7'),
		('3', '1'),
		('3', '6'),
		('3', '2'),
		('4', '3'),
        ('5', '4'),
		('6', '6'),
		('6', '5'),
		('7', '5'),
        ('7', '1'),
		('8', '9'),
		('8', '3');





