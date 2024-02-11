
*Google Data Analytics Capstone: Complete a Case Study*

**Data Source**: [divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html)

**Introduction:**  In this case study, I will apply the skills of a junior data analyst to a real-world scenario. I will work for a fictional company called Cyclistic, a bike-share program offering different bike types and pricing plans. My goal is to answer the key business question: How do annual members and casual riders use Cyclistic bikes differently? To do this, I will follow the six steps of the data analysis process: [Ask](#Ask), [Prepare](#Prepare), [Process](#Process), [Analyze and Share](#Analyze-and-Share), and [Act](#Act).
SQL Queries Used in perform the above steps:
1.	[Data Merging](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/1.Data%20Merging%20Query.sql)
2.	[Data Exploration](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/2.Data%20Exploration%20Query.sql)
3.	[Data Cleaning](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/3.Data%20Cleaning%20Query.sql)
4.	[Data Analysis](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/4.Data%20Analysis%20Query.sql)
   
**Background**: Cyclistic is a bike-share program that operates in Chicago, Illinois. It has more than 5,800 bicycles and 600 docking stations across the city. Cyclistic is unique in that it also provides reclining bikes, hand tricycles, and cargo bikes, making bike-sharing more accessible and inclusive for people with different needs and preferences. Most of the riders choose the traditional bikes, but about 8% of them use the assistive options. Cyclistic users have various purposes for riding, such as leisure, exercise, or commuting. About 30% of the riders use the bikes to go to work each day.
Cyclistic has different pricing plans to attract more customers: single-ride passes, full-day passes, and annual memberships. The customers who buy single-ride or full-day passes are called casual riders, while the customers who buy annual memberships are called Cyclistic members.
Cyclistic’s financial analysts have found that annual members are much more profitable than casual riders. Therefore, Cyclistic’s marketing strategy is to focus on converting casual riders into annual members. To achieve this, the marketing team needs to understand how the two groups of riders differ from each other and what factors influence their decision to become annual members. This is where I, as a data analyst, can provide valuable insights and recommendations.
Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends.


**Scenario**:
I am assuming to be a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, my team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, my team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve our recommendations, so they must be backed up with compelling data insights and professional data visualizations.


# Ask

Business Task : Create marketing strategies to convince casual riders to become members.

Analysis Questions : Three questions will guide the future marketing program:

1.	How do annual members and casual riders use Cyclistic bikes differently?
2.	Why would casual riders buy Cyclistic annual memberships?
3.	How can Cyclistic use digital media to influence casual riders to become members?
   
Moreno has assigned me the first question to answer: How do annual members and casual riders use Cyclistic bikes differently?

# Prepare

Data Source: [Divvy Trip Data](https://divvy-tripdata.s3.amazonaws.com/index.html)

I will use Cyclistic’s historical trip data to analyze and identify trends from Jan 2023 to Dec 2023 which can be downloaded from divvy_tripdata. The data has been made available by Motivate International Inc. under this license.
This is public data that can be used to explore how different customer types are using Cyclistic bikes. But note that data-privacy issues prohibit from using riders’ personally identifiable information. This means that we won’t be able to connect pass purchases to credit card numbers to determine if casual riders live in the Cyclistic service area or if they have purchased multiple single passes.

**Data Organization:**

There are 12 files with naming convention of YYYYMM-divvy-tripdata and each file includes information for one month. Each file has information provided with columns ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng and member_casual.

# Process

I have used BigQuery to merge the various datasets into one dataset and perform the cleaning process.

Excel is cumbersome in handling large amounts of data and it hangs at times making it hard to process and analyze data. Hence I chose Big query for this data set
Merging Data

[Link to Data Merging Query here](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/1.Data%20Merging%20Query.sql)

I have created 12 tables, one table for each csv file. The csv files contain data for each month, so the each table has data for one month: The table names are titled as yyyymm.
I have Created one table merging all 12 tables data to further process with the cleaning and analysis steps. The table is titles as: CycleTripData2023

**Data Exploration:**

[Link to Data Exploration Query here](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/2.Data%20Exploration%20Query.sql)

Before cleaning the data, I am familiarizing myself with the data to find the inconsistencies.

**Observations:**

1.	The table below shows the all column names and their data types. The ride_id column is our primary key.
   
       ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/Picture1.png)
 
2.	The null values are found in the below columns
   
       ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/Picture2.png)
   
       ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/Picture3.png)
   
       ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/Picture4.png)
   
       ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/Picture5.png)
   
       ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/Picture6.png)
   
       ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/Picture7.png)
  	
3.	Checking for Duplicates in the ride_id column: Found 35 duplicates values

       ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/Picture8.png)

       ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/Picture9.png)
 
    As observed below the data in the rows is different apart from the ride_ids 
 
      ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/Picture10.png) 

      ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/Picture11.png) 

4.	Confirmed there are no other type of riders apart from members and casual riders

      ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/Picture12.png)
 
5.	Found there are three unique bike types

      ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/Picture13.png)

6.	Checked for rides that are having started_at field greater than or equal to ended_at field , which is not possible. Found 36773 records.

      ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/Picture14.png)

7.	Checked for the number of start stations

      ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/Picture15.png)
 
8.	Checked for the number of end stations

      ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/Picture16.png)
 
**Data Cleaning** 

  [Link to Data Cleaning Query file here](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/3.Data%20Cleaning%20Query.sql)
  1. I have created another table named: CycleTripData2023_Cleaned from the combined table CycleTripData2023 by avoiding null values from all the columns observed in the exploration query. The duplicate ride_ids found in the data exploration are genuine records as explained, so considering them for the analysis and not removing them.
  2. I have added three more columns ride_length (in minutes) for duration of the trip, day_of_week (based on the started_at field) and month (Based on the started_at field)
  3. The rides which have started_at timestamp greater than or equal to ended_at are excluded as it cannot be possible.
  4. Total no of rows considered for analysis are : 3775498
    
 ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/Picture17.png)

# Analyze and Share

  [Link to Data Analysis Query here](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/4.Data%20Analysis%20Query.sql)

The data is cleansed and kept in the CycleTripData2023_Cleaned table and is ready for the analysis. The analysis continued mainly by targeting the question asked to me which is :How do annual members and casual riders use Cyclistic bikes differently?

First of all, member and casual riders are compared by the type of bikes they are using.

 ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/Member%20type.png)

The members make 65.6% of the total while remaining 34.4% constitutes casual riders. Each bike type chart shows percentage from the total. 
The below bar chart shows bike type preference used by Casual riders:

  ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/Rideable%20Type.png)

This indicates that casual riders favor classic bikes and electric bikes as their top choices. They are less interested in docked bikes, which is their last option.

Next the number of trips by the month, days of the week and hours of the day are examined for Members and Casual riders

  ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/No.%20of%20Trips%20by%20Member%20Casual.png)
  
 **Months:** When it comes to monthly trips, both casual and members exhibit comparable behavior, with more trips in the spring and summer and fewer in the winter. 

 ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/No.%20of%20Trips%20Per%20Month.png)
 
**Days of Week:** When the days of the week are compared, it is discovered that casual riders make more journeys on the weekends while members show a decline over the weekend in contrast to the other days of the week.

 ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/Per%20week%20No.%20of%20Trips%20(1).png)
 
**Hour of the Day:** The members shows 2 peaks throughout the day in terms of number of trips. One is early in the morning at around 6 am to 8 am and other is in the evening at around 4 pm to 6 pm while number of trips for casual riders increase consistently over the day till evening and then decrease afterwards.

 ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/No.of%20Trips%20Per%20Hour.png)
 
We can infer from the previous observations that member may be using bikes for commuting to and from the work in the week days while casual riders are using bikes throughout the day, more frequently over the weekends for leisure purposes. Both are most active in summer and spring which indirectly infers that weather will affect both the riders.

Ride duration of the trips are compared to find the differences in the behavior of casual and member riders.
Average Ride Length appears to be more for Casual riders than Members: So they prefer the long trips and the same can be considered for market strategy.

  ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/Avg%20Ride%20Length%20by%20Member%20Casual.png)

Here is the Per Month, Per Day of the Week, Per Hour charts:

  ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/Avg%20Ride%20Length%20Per%20Month.png)
  
  ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/Avg%20Ride%20Length%20Per%20Day%20of%20Week.png)
  
  ![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/Avg%20Ride%20Length%20Per%20Hour.png)
 
Take note that casual riders tend to cycle longer than members do on average. The length of the average journey for members doesn't change throughout the year, week, or day. However, there are variations in how long casual riders cycle. In the spring and summer, on weekends, and from 10 am to 2 pm during the day, they travel greater distances. Between 5 and 8 am in the morning, they have brief trips.

![](https://github.com/balushanti12/Data-Analysis-Capstone-Project-Cyclistic-Trip-Data/blob/main/Dashboard%205%20(1).png)


These findings lead to the conclusion that casual commuters travel longer (approximately 2x more) but less frequently than members. They make longer journeys on weekends and during the day outside of commuting hours and in spring and summer seasons, so they might be doing so for recreation purposes.

|Casual	|Member|
|-------|------|
|Prefer using bikes throughout the day, more frequently over the weekends in summer and spring for leisure activities.|	Prefer riding bikes on week days during commute hours (8 am / 5pm) in summer and spring.|
|Travel 2 times longer but less frequently than members.|Travel more frequently but shorter rides (approximately half of casual riders' trip duration).|
|Prefer Classic bikes and their next interest is electric bike	|The same pattern is observed in Members as well. Also Members haven’t used docked bike|

# Act

After identifying the differences between casual and member riders, marketing strategies to target casual riders can be developed to persuade them to become members.

**Recommendations:**
1.	Marketing campaigns might be conducted in spring and summer at tourist/recreational locations popular among casual riders.
2.	Casual riders are most active on weekends and during the summer and spring, thus they may be offered seasonal or weekend-only memberships.
3.	Casual riders use their bikes for longer durations than members. Offering discounts for longer rides may incentivize casual riders and entice members to ride for longer periods of time.





