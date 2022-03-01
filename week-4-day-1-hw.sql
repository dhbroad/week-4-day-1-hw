--1. How many actors are there with the last name ‘Wahlberg’?
-- Ans: 2
select last_name
from actor
where last_name = 'Wahlberg'

--2. How many payments were made between $3.99 and $5.99?
-- Ans: 5,563
select count(amount)
from payment
where amount between 3.99 and 5.99

--3. What film does the store have the most of? (search in inventory)


--4. How many customers have the last name ‘William’?
-- Ans: None
select last_name
from customer
where last_name = 'William'

--5. What store employee (get the id) sold the most rentals?
-- Ans: employee 1
select sum(amount)
from payment
where staff_id = 1;
--
select sum(amount)
from payment
where staff_id = 2;

--6. How many different district names are there?


--7. What film has the most actors in it? (use film_actor table and get film_id)
-- Ans: 993, 958, 945, 912, 879, 714, 544, 538, 537, 474, 465, 462, 419, 346, 149, 121, 116, 80, 49, 5
select *
from film_actor
order by actor_id desc;

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- Ans: 21
select store_id, last_name
from customer
where last_name like '%es'

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
select *
from payment
where amount = 4.99;
where customer_id between 380 and 430;

--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?
