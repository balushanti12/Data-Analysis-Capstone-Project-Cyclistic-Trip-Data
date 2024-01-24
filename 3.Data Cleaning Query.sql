
--Creating a Cleaned table from the combined table by avoiding null records from the identified column through exploration query , also avoided rows where trip started at field is bigger than ended at field. Along with adding three more columns which will be used for data analysis purpose.

Create OR Replace Table `CycleTripData.CycleTripData2023_Cleaned` As (

SELECT *, 

DATETIME_DIFF(ended_at, started_at, second)/60 AS ride_length,  --Adding a separate column for Ride Length in minutes to the Cleaned table

  CASE EXTRACT(DAYOFWEEK FROM started_at) 
      WHEN 1 THEN 'SUN'
      WHEN 2 THEN 'MON'
      WHEN 3 THEN 'TUES'
      WHEN 4 THEN 'WED'
      WHEN 5 THEN 'THURS'
      WHEN 6 THEN 'FRI'
      WHEN 7 THEN 'SAT'  
      END AS DayofWeek,  -- Adding a Day of week column to the cleaned table

 CASE EXTRACT(MONTH FROM started_at)
      WHEN 1 THEN 'JAN'
      WHEN 2 THEN 'FEB'
      WHEN 3 THEN 'MAR'
      WHEN 4 THEN 'APR'
      WHEN 5 THEN 'MAY'
      WHEN 6 THEN 'JUN'
      WHEN 7 THEN 'JUL'
      WHEN 8 THEN 'AUG'
      WHEN 9 THEN 'SEP'
      WHEN 10 THEN 'OCT'
      WHEN 11 THEN 'NOV'
      WHEN 12 THEN 'DEC'
    END AS month, -- adding a column for the month of the trip based on the trip started date

 FROM `my-data-project-12345-408100.CycleTripData.CycleTripData2023` 
 WHERE
 ended_at > started_at and -- Filters out records where ended_at timestamp is bigger than started_at timestamp
 end_lat is not null and  -- filters out records where there are nulls in the start_lng column and the same follows for each column
 end_lng is not null and
 end_station_name is not null and
 end_station_id is not null and 
 start_station_name is not null and
 start_station_id is not null
 )

  