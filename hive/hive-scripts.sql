CREATE TABLE match_detail(
   match_SK     int  
  ,match_id     int  
  ,team1        STRING 
  ,team2        STRING 
  ,match_date   STRING  
  ,season_Year  int  
  ,venue_Name   STRING
  ,city_Name    STRING 
  ,country_Name STRING 
  ,toss_Winner  STRING
  ,match_winner STRING
  ,toss_Name    STRING
  ,win_Type     STRING
  ,uutcome_Type STRING
  ,manOfMach    STRING
  ,win_Margin   int 
  ,country_id   int  
) ROW FORMAT delimited
  FIELDS TERMINATED BY ','
  STORED AS TEXTFILE
  tblproperties("skip.header.line.count"="1");
  
--Load data into table  
LOAD data local inpath '/home/maximus/data/ipl-2017/DIM_MATCH.csv' into table match_detail;

