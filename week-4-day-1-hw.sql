--1. How many actors are there with the last name ‘Wahlberg’?
-- Ans: 2
select last_name
from actor
where last_name = 'Wahlberg';

--2. How many payments were made between $3.99 and $5.99?
-- Ans: 5,563
select count(amount)
from payment
where amount between 3.99 and 5.99;

--3. What film does the store have the most of? (search in inventory)
-- Ans: film_id 200, "Curtain Videotape"
select film_id, count(film_id)
from inventory
group by film_id 
order by count desc;

--4. How many customers have the last name ‘William’?
-- Ans: None, however, there is 1 Williams
select last_name
from customer
where last_name = 'William';

--5. What store employee (get the id) sold the most rentals?
-- Ans: employee 2
select staff_id, count(amount)
from payment p 
group by staff_id;

--6. How many different district names are there?
-- Ans: 378
select count(distinct(district))
from address;

--7. What film has the most actors in it? (use film_actor table and get film_id)
-- Ans: film_id 508, Lambs Cincinatti
select film_id, count(film_id)
from film_actor
group by film_id
order by count desc;

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- Ans: 21
select count(last_name)
from customer
where last_name like '%es';

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
--Ans: 11
select count(distinct amount)
from payment
where customer_id between 380 and 430 and rental_id > 250;

--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?
-- Ans: 5 rating categories. 
select count(distinct rating),
from film;
--
select *
from film
group by rating;
