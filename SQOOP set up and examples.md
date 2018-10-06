# SQOOP set up and examples 



### Installations

1. download tar from Internet

2. untar it `tar -xvf sqoop-x.y-z.tar.gz` 

3. ```shell
   #set sqoop variables in .bashrc
   export SQOOP_HOME=/usr/lib/sqoop 
   export PATH=$PATH:$SQOOP_HOME/bin
   
   #run bashrc
   source ~/.bashrc
   ```

4. Now set following variables in `$SQOOP_HOME/conf/sqoop-env.sh`

   ```shell
   export HADOOP_COMMON_HOME=/usr/local/hadoop 
   export HADOOP_MAPRED_HOME=/usr/local/hadoop
   ```

5. Download and Configure mysql-connector-java `mysql-connector-java-5.1.30.tar.gz`
6. verify sqoop version `sqoop-version`

----

### SQOOP import/Export

```shell
# List tables present in Mysql
sqoop list-tables \
--connect jdbc:mysql://localhost/hadoop \
--username root -P
```

```shell
# import data from movies table to HDFS directory
sqoop import \
--connect jdbc:mysql://localhost/hadoop \
--username root -P \
--table movies \
--m 1 \
--target-dir /user/maximus/movies
```

```shell
# import data and create table in hive automatically
sqoop import --connect jdbc:mysql://localhost/hadoop \
--username root -password hadoop \
--table movies \
--target-dir /user/maximus/movies2 \
--hive-import \
--create-hive-table \
--hive-table movie_data
```

Note : - if you encounter following issue. set hadoop class path in .bashrc and run in

```java
ERROR tool.ImportTool: Import failed: java.io.IOException: java.lang.ClassNotFoundException: org.apache.hadoop.hive.conf.HiveConf
```

solution:

```shell
export HADOOP_CLASSPATH=$HADOOP_CLASSPATH:/usr/lib/hive/lib/*
source ~/.bashrc
```

##### Export data from HDFS to mysql

```shell
CREATE TABLE movie_avg_rating (
movie_title VARCHAR(255),
avg_rating DECIMAL,
year INT(12));


sqoop export --connect jdbc:mysql://localhost/mindscript --table movies  \
--username root -P \
--input-fields-terminated-by '|' \
--export-dir /user/user/Input/movie_data.txt \
--validate
```

