CREATE TABLE [dbo].[Customer] 
( 
[CustomerKey] [int]  NOT NULL, 
[CustomerID] [int]  NOT NULL, 
[Customer] [nvarchar](100)  NOT NULL, 
[BillToCustomer] [nvarchar](100)  NOT NULL, 
[Category] [nvarchar](50)  NOT NULL, 
[BuyingGroup] [nvarchar](50)  NOT NULL, 
[PrimaryContact] [nvarchar](50)  NOT NULL, 
[PostalCode] [nvarchar](10)  NOT NULL, 
[ValidFrom] [datetime2](7)  NOT NULL, 
[ValidTo] [datetime2](7)  NOT NULL, 
[LineageKey] [int]  NOT NULL) 
WITH 
( 
    	DISTRIBUTION = ROUND_ROBIN, 
CLUSTERED COLUMNSTORE INDEX) 
GO 
