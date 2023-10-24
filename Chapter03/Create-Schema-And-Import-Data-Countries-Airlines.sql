CREATE TABLE [dbo].[Countries] 
([Name] varchar(50) NOT NULL, 
[iso_code] varchar(50) NULL) 
 
CREATE TABLE [dbo].[Airlines] 
([Airline_ID] varchar(50) NOT NULL, 
[Name] varchar(50) NULL, 
[IATA] varchar(10) NULL, 
[Country] varchar(50) NULL) 

COPY INTO dbo.[Countries] FROM 'https://adfcookbookv2.blob.core.windows.net/data/countries.csv' 
WITH 
( 
CREDENTIAL=(IDENTITY= 'Shared Access Signature', SECRET='?sv=2022-11-02&ss=bfqt&srt=sco&sp=rwdlacupyx&se=2023-04-30T17:31:49Z&st=2023-04-30T09:31:49Z&spr=https&sig=9gvX42ymia12CRJ4MOailXsR1aQECgI79KBqlOqgJwg%3D'), 
FIELDTERMINATOR=',' 
) 
COPY INTO dbo.[Airlines] FROM 'https://adfcookbookv2.blob.core.windows.net/data/airlines.csv' 
WITH 
( 
CREDENTIAL=(IDENTITY= 'Shared Access Signature', SECRET='?sv=2022-11-02&ss=bfqt&srt=sco&sp=rwdlacupyx&se=2023-04-30T17:31:49Z&st=2023-04-30T09:31:49Z&spr=https&sig=9gvX42ymia12CRJ4MOailXsR1aQECgI79KBqlOqgJwg%3D'), 
FIELDTERMINATOR=',' 
)
