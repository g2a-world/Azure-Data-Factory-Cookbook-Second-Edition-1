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
