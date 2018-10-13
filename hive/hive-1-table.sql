SHOW DATABASES;
SHOW TABLES;

CREATE DATABASE IF NOT EXISTS experiment  
COMMENT 'These database is just for experimentation please DO NOT store critical data here'
LOCATION '/user/schemas/experiment'
WITH DBPROPERTIES ('creator' = 'Shubham Gupta', 'date' = '2018-09-02','Place' = 'GGN','Purpose'  = 'Hive Learning');

describe experiment;
describe extended experiment;
------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS movie_data (
movie_id BIGINT,
movie_title STRING,
release_date STRING,
tr_date      STRING COMMENT "this is trailor release date",
IMDb_URL STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
STORED AS TEXTFILE;

LOAD DATA INPATH '/user/shubham/Input_data_set/movie_data.txt' OVERWRITE INTO TABLE movie_data;

set hive.cli.print.header=true;
----------------------------------------------------------------------
CREATE EXTERNAL TABLE IF NOT EXISTS movie_ratings (
user_id BIGINT,
movie_id BIGINT,
rating TINYINT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
STORED AS TEXTFILE
LOCATION 'user/maximus/Input_data_set/data';
----------------------------------------------------------------------
basic queries --
select count(*) from table
select * from table limit 10

