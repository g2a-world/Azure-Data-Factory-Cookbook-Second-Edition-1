--Uncomment the 4 lines below to create a stored procedure for data pipeline orchestration​
--CREATE PROC bulk_load_Customer
--AS
--BEGIN
COPY INTO wwi.Customer
(CustomerKey 1, CustomerID 2, Customer 3, BillToCustomer 4, Category 5, BuyingGroup 6, PrimaryContact 7, PostalCode 8, ValidFrom 9, ValidTo 10, LineageKey 11)
FROM 'https://adfcookbookv2ch3dl.dfs.core.windows.net/worldwideimporters/Customers.csv'
WITH
(
	FILE_TYPE = 'CSV'
	,MAXERRORS = 0
	,ERRORFILE = 'https://adfcookbookv2ch3dl.dfs.core.windows.net/worldwideimporters/'
)
--END
GO

SELECT TOP 100 * FROM wwi.Customer
GO