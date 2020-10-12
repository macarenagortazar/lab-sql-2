#Instructions

use sakila;

#Select all the actors with the first name ‘Scarlett’.
select*from sakila.actor
where first_name="Scarlett";

#Select all the actors with the last name ‘Johansson’.
select*from sakila.actor
where last_name="Johansson";

#How many films (movies) are available for rent?
select count(*) film_id from sakila.film;

#How many films have been rented?
select count(*) film_id from sakila.film;
select 1000*avg(rental_rate) from sakila.film;

#What is the shortest and longest rental period?
select min(rental_duration),max(rental_duration) from sakila.film;

#What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select min(length),max(length) from sakila.film;

#What's the average movie duration?
select avg(length) from sakila.film;

#What's the average movie duration expressed in format (hours, minutes)?
SELECT concat(floor(round(avg(length))/60),"h",mod(round(avg(length)),60),"m") as average_duration_hs_ms from sakila.film;

#How many movies longer than 3 hours?
select*from sakila.film
where length>180;

#Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT CONCAT(left(first_name,1),lower(mid(first_name,2,80)), " ", last_name," ","-"," ",email) AS info FROM sakila.customer;

#What's the length of the longest film title?


select max(length(title)) from sakila.film;