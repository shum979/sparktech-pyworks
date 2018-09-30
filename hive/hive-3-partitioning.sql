CREATE  TABLE IF NOT EXISTS user_stg (
user_id bigint,
age int,
gender string,
job string, 
zip int)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
STORED AS TEXTFILE;


LOCATION '/user/user/Downloads/ml-100k/u.user';
drop table user_stg;
-- LOAD DATA LOCAL INPATH '/home/user/Downloads/ml-100k/u.user' -- INTO TABLE user_stg;

------------------------------------------------------------
CREATE TABLE IF NOT EXISTS users (
user_id bigint,
age int,
job string COMMENT 'this is occupation of the user and partition key', 
zip int)
comment 'this table holds users information'
PARTITIONED BY (gender string)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
STORED AS TEXTFILE;

INSERT OVERWRITE TABLE users PARTITION(gender)
SELECT user_id,age,job,zip,gender from user_stg;