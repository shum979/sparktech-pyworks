----find movie released in each year
select SUBSTR(release_date,8,11) as year,COUNT(movie_id) from movie_data
GROUP BY SUBSTR(release_date,8,11);

----find average rating of each movie
select movie_id, round(avg(rating),2) from movie_Rating group by movie_id;

----find movie_name,release_year and it's average rating
select tab.year,movie_title,round(avg(rating),2) as avgRating
from(
select movie_title,rating,SUBSTR(release_date,8,11) as year 
from    movie_data m JOIN movie_rating r
ON m.movie_id = r.movie_id) tab
GROUP BY tab.year,tab.movie_title;


---- Find top rated movies of each year------
CREATE VIEW movie_view AS
select * from (
select tab.year,movie_title,round(avg(rating),2) as avgRating
from(
select movie_title,rating,SUBSTR(release_date,8,11) as year 
from    movie_data m JOIN movie_rating r
ON m.movie_id = r.movie_id) tab
GROUP BY tab.year,tab.movie_title
) pab;

select tab.year,movie_title,tab.topr from
(select year,Max(avgrating) as topR from movie_view group by year) tab 
JOIN movie_view v on tab.year = v.year AND tab.topR = v.avgrating;


---- Save output to directory-----
INSERT OVERWRITE  DIRECTORY 'hiveOut/movieCount'
select SUBSTR(release_date,8,11) as year,COUNT(movie_id) from movie_data
GROUP BY SUBSTR(release_date,8,11);