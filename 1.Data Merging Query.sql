
-- Merging all months of data into one single table named CycleTrip2023

Create Table `CycleTripData.CycleTripData2023` AS 

(select * from `CycleTripData.202301`
UNION ALL
select * from `CycleTripData.202302`
UNION ALL
select * from `CycleTripData.202303`
UNION ALL
select * from `CycleTripData.202304`
UNION ALL
select * from `CycleTripData.202305` --Removed some rows from CSV data file to bring it below 100MB size for importing purpose
UNION ALL
select * from `CycleTripData.202306`--Removed some rows from CSV data file to bring it below 100MB size for importing purpose
UNION ALL
select * from `CycleTripData.202307`--Removed some rows from CSV data file to bring it below 100MB size for importing purpose
UNION ALL
select * from `CycleTripData.202308`--Removed some rows from CSV data file to bring it below 100MB size for importing purpose
UNION ALL
select * from `CycleTripData.202309`--Removed some rows from CSV data file to bring it below 100MB size for importing purpose
UNION ALL
select * from `CycleTripData.202310`--Removed some rows from CSV data file to bring it below 100MB size for importing purpose
UNION ALL
select * from `CycleTripData.202311`
UNION ALL
select * from `CycleTripData.202312`

);

