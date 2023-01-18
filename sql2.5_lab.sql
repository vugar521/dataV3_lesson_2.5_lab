
use sakila;
-- 1.Select all the actors with the first name ‘Scarlett’.alter
SELECT * FROM actor
where first_name ='Scarlett' ;

-- 2. How many films (movies) are available for rent and how many films have been rented?

SELECT * FROM film;


-- 3.What are the shortest and longest movie duration? Name the values max_duration and min_duration.

SELECT  MAX(rental_duration) as max_duration , MIN(rental_duration) as min_duration FROM film
;

-- 4.What's the average movie duration expressed in format (hours, minutes)?
SELECT avg(length) FROM film;

-- 5.How many distinct (different) actors' last names are there?
SELECT count(distinct(last_name)) FROM actor
;

-- 6. Since how many days has the company been operating (check DATEDIFF() function)?

SELECT datediff() FROM film;

-- 7.Show rental info with additional columns month and weekday. Get 20 results.
SELECT rental_id, weekday(rental_date) as weekday, month(rental_date) as 'month'  FROM rental;

-- 8. Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.

SELECT*,
CASE 
WHEN weekday(rental_date) < 5 THEN 'workday'
ELSE 'weekend'
END AS day_type
FROM rental;


-- 9.Get release years.
SELECT release_year from Film;

-- 10. Get all films with ARMAGEDDON in the title.
SELECT * FROM film
where title='ARMAGEDDON'
;
-- 11. 
-- Get all films which title ends with APOLLO.

SELECT * FROM film
where right(title,6)='APOLLO'
;

-- 12. Get 10 the longest films.

SELECT max(length) FROM film
;

SELECT * FROM film
where length = 185
limit 10;

-- 13. How many films include Behind the Scenes content?

SELECT COUNT(film_id) 
FROM film
WHERE special_features LIKE '%Behind the Scenes%';



