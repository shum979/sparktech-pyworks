# Hive Interview questions



1. What kind of data warehouse application is suitable for Hive? What are the types of tables in Hive?

2. How to change the column data type in Hive? 

3. What are the components used in Hive query processor?

4. What is Buckets in Hive?

5. How to skip header rows from a table in Hive?

6. How Hive can improve performance with ORC format tables?

7. Whenever we run hive query, new metastore_db is created. Why?

8. What are the uses of explode Hive?

9. What is available mechanism for connecting from applications, when we run hive as a server?

10. What are the types of tables in Hive?

11. How to print header on Hive query results?

12. Is it possible to create multiple table in hive for same data?

13. What is dynamic Partitioning in Hive?

14. What is schema on read?

15. What is strict mode in Hive?

16. **Explain the difference between partitioning and bucketing.**

17. **Where does the data of a Hive table gets stored?**

18. What is sort-Merge join in Hive 

19. What is SerDe in Hive 

20.  What does the following query do?

    ```
    INSERT OVERWRITE TABLE employees
    PARTITION (country, state)
    SELECT ..., se.cnty, se.st
    FROM staged_employees se;
    ```
