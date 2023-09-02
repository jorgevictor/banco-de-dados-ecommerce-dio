show tables;

select * from clients;
select * from mechanics;
select * from auto;
select * from mechanicservice;
select * from service;

-- Descobrir em quais carros e servicos cada mecanico esta trabalhando --

select m.Name, m.especialidade, a.plate, s.descricao
from auto as a
inner join service as s
on a.idAuto = s.idAuto
inner join mechanicservice as ms
on s.idService = ms.idMSService
inner join mechanics as m
on ms.idMSMechanic = m.idMechanic
order by m.Name;