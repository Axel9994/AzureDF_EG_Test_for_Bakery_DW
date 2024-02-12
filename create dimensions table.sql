if not exists (select * from sysobjects where name='DimCustomer' and xtype='U')
    create table DimCustomer (
        Customer_ID int,
		customer_name varchar(50)
    );
if not exists (select * from sysobjects where name='DimProduct' and xtype='U')
    create table DimProduct (
        Product_ID int,
		product_name varchar(50),
		product_category varchar(50)
    );
if not exists (select * from sysobjects where name='DimPaymentMethod' and xtype='U')
    create table DimPaymentMethod (
        PaymentMethod_ID int,
		payment_method varchar(50)
    );
if not exists (select * from sysobjects where name='DimLocation' and xtype='U')
    create table DimLocation (
        Location_ID int,
		delivery_address varchar(50),
		city varchar(50),
		country varchar(50)
    );
insert into DimCustomer
select ROW_NUMBER() OVER (ORDER BY c.customer_name) as Customer_ID,
	  c.customer_name
from (
 select distinct customer_name
 from dbo.stage_bakery
) c;
insert into DimProduct
select ROW_NUMBER() OVER (ORDER BY p.product_name,
	  p.product_category) as Product_ID,
	  p.product_name,
	  p.product_category
from (
 select distinct product_name, product_category
 from dbo.stage_bakery
) p;
insert into DimPaymentMethod
select ROW_NUMBER() OVER (order by pp.payment_method) as PaymentMethod_ID,
pp.payment_method
from (
select distinct payment_method
from dbo.stage_bakery
) pp;
insert into DimLocation
select ROW_NUMBER() OVER (ORDER BY delivery_address, city, country) as Location_ID,
delivery_address,
city,
country
from
(select distinct delivery_address, city, country
from dbo.stage_bakery) l;