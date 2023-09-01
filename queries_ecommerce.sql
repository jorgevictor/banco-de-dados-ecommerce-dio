select * from orders;

-- Quantos pedidos foram feitos por cada cliente?

select count(idOrder), Fname
from clients 
left join orders 
on idOrderClient=idClient
group by Fname;

-- Algum vendedor também é fornecedor?

select seller.SocialName, seller.CNPJ
from seller, supplier
where seller.CNPJ = supplier.CNPJ;

-- Relação de nomes dos fornecedores e nomes dos produtos

select supplier.SocialName, products.Pname
from products
inner join productSupplier
on products.idProduct = productSupplier.idPsProduct
inner join supplier
on productSupplier.idPsSupplier = supplier.idSupplier;