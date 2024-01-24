
--select * from `CycleTripData.CycleTripData2023` limit 5

--Checking for null record count in each column to take further action for those records

select count(*) from `CycleTripData.CycleTripData2023`  where ride_id is null ;

select count(*) from `CycleTripData.CycleTripData2023`  where rideable_type is null ;

select count(*) from `CycleTripData.CycleTripData2023`  where started_at is null ;

select count(*) from `CycleTripData.CycleTripData2023`  where ended_at is null ;

select count(*) from `CycleTripData.CycleTripData2023`  where start_station_name is null ; --found 531332 rows

select count(*) from `CycleTripData.CycleTripData2023`  where start_station_id is null ; --found 531464 rows

select count(*) from `CycleTripData.CycleTripData2023`  where end_station_name is null ; --found 440272 rows

select count(*) from `CycleTripData.CycleTripData2023`  where end_station_id is null ; -- found 440413 rows

select count(*) from `CycleTripData.CycleTripData2023`  where start_lat is null ;

select count(*) from `CycleTripData.CycleTripData2023`  where start_lng is null ;

select count(*) from `CycleTripData.CycleTripData2023`  where end_lat is null ; --found 3543 rows

select count(*) from `CycleTripData.CycleTripData2023`  where end_lng is null ; --found 3543 rows

select count(*) from `CycleTripData.CycleTripData2023`  where member_casual is null ;

-- checking for duplicate ride_ids

SELECT COUNT(ride_id) - COUNT(DISTINCT ride_id) AS `No of Duplicate Ride IDs`
FROM `CycleTripData.CycleTripData2023`; -- found 35 duplicate ride ids

--Checked few samples and found that the rows are different. Also the ride_ids are in the long integer form so they are downloaded in the short from from the source file.

select cast(ride_id as string), Count(*) from `my-data-project-12345-408100.CycleTripData.CycleTripData2023`  group by ride_id having count(*) >1

select * from `CycleTripData.CycleTripData2023` where ride_id = '5.49E+15'

select * from `CycleTripData.CycleTripData2023` where ride_id = '9.39E+15'

-- checking for unique Member_Casual values

SELECT member_casual, COUNT( member_casual) AS `Count of each member_casual Values`
FROM `CycleTripData.CycleTripData2023`
GROUP BY member_casual; -- found two values : member (3050525 rides), casual(1575359 rides)

--checking for unique bike types

SELECT rideable_type, COUNT(rideable_type) AS `Count of each bike type`
FROM `CycleTripData.CycleTripData2023`
GROUP BY rideable_type; -- found three bike types: electric_bike, classic_bike, docked_bike

--checking for rides where start date is greater than or equal to end date 

SELECT COUNT(*) AS `No of Errored records`
FROM `CycleTripData.CycleTripData2023` where  started_at >= ended_at;  --found 36773 rows

-- checking count of unique start stations
SELECT count (DISTINCT start_station_id)
FROM `CycleTripData.CycleTripData2023` -- found 1640 unique start stations


-- checking count of unique end  stations
SELECT count (DISTINCT end_station_id)
FROM `CycleTripData.CycleTripData2023` --found 1650 unique end stations





