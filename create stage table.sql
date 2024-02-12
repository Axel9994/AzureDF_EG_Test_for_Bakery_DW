CREATE TABLE [dbo].[stage_bakery](
	[customer_name] [varchar](50) NULL,
	[purchase_date] [date] NULL,
	[product_name] [varchar](50) NULL,
	[product_category] [varchar](50) NULL,
	[quantity] [int] NULL,
	[unit_price] [decimal](10, 2) NULL,
	[discount] [decimal](10, 2) NULL,
	[total_price] [decimal](10, 2) NULL,
	[payment_method] [varchar](50) NULL,
	[delivery_address] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[postal_code] [varchar](50) NULL
);