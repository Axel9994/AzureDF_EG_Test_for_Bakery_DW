if not exists (select * from sysobjects where name='FactSales' and xtype='U')
	create table FactSales(
	 SalesID int identity(1,1),
	 Customer_ID int,
	 Product_ID int,
	 PaymentMethod_ID int,
	 Location_ID int,
	 quantity int,
	 unit_price decimal(10,2),
	 discount decimal(10,2),
	 total_price decimal(10,2)
	 );
 insert into FactSales
 select c.Customer_ID,
        p.Product_ID,
		pp.PaymentMethod_ID,
		l.Location_ID,
		s.quantity,
		s.unit_price,
		s.discount,
		s.total_price
from dbo.stage_bakery s
left join dbo.DimCustomer c
on s.customer_name = c.customer_name
left join dbo.DimProduct p
on s.product_name = p.product_name and s.product_category = p.product_category
left join dbo.DimPaymentMethod pp
on s.payment_method = pp.payment_method
left join dbo.DimLocation l
on s.delivery_address = l.delivery_address and s.city = l.city and s.country = l.country;