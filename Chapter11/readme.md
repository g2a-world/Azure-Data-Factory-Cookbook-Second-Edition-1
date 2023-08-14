# Chapter 11: Working with Azure Data Explorer

This folder will include the files for recipies and queries examples.


## Creating ADX table from ADF Activity
```
.set-or-replace DeadlyStorms <|
StormEvents
| where DeathsDirect > 5
| order by StartTime desc
| project StartTime, EndTime, State, EventType, DeathsDirect, BeginLocation, EndLocation
```

## Create table for JSON file in ADX:
```
.create table Orders (
    [Row ID] long,
    [Order ID] string,
    [Order Date] datetime,
    [Ship Date] datetime,
    [Ship Mode] string,
    [Customer ID] string,
    [Customer Name] string,
    Segment string,
    [Country/Region] string,
    City string,
    State string,
    [Postal Code] long,
    Region string,
    [Product ID] string,
    Category string,
    [Sub-Category] string,
    Sales real,
    Quantity int,
    Discount real,
    Profit real
)
```
