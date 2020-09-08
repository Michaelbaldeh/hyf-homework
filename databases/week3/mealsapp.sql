

USE master
GO

IF NOT EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = N'mealsapp_db'
)
CREATE DATABASE mealsapp_db
GO

--Reservation Table
CREATE TABLE `Reservation`{
 `id` int
 `number_of_guests` int
 `meal_id` int
 `created_date` date
 `contact_phonenumber` varchar(45)
 `contact_name` varchar(45)
 `contact_email` varchar(45)
}
--Meal Table
CREATE TABLE `Meal`{
 `id` int
 `title` varchar(45)
 `description` text
 `location` varchar(45)
 `when` datetime
 `max_reservations` int
 `price` decimal
 `created_date` date
}
--Review Table
CREATE TABLE `Review`{
 `id` int
 `title` varchar(225)
` description` text
 `meal_id` int
 `stars` int
 `created_date` date
}

ALTER TABLE `Reservation` ADD FOREIGN KEY `meal_id` REFERENCES `Meal`.(`id`)
ALTER TABLE `Review`. ADD FOREIGN KEY `meal_id` REFERENCES `Meal`.(`id`) 

--Get all meals
SELECT* FROM Meal;
--Add a new meal
INSERT INTO `Meal`VALUES (1,'Pasta','kebab','fish & chips','stew','volparken 13','2020-05-22', 8, 20.32, '2020-05-20');
INSERT INTO `Meal`VALUES (2,'chicken','fried rice','lamb chops','pizza''Husum','2020-04-22', 8, 70.21, '2020-04-20');
INSERT INTO `Meal`VALUES (3,'beans','jollof rice','pourage','grilled fish''freederiksundvej 21','2020-03-22', 8, 80.00, '2020-03-20');
INSERT INTO `Meal`VALUES (4,'rice','burger','hot wings','nuggets','Lamajun''copenhagen','2020-02-22', 8, 44.35, '2020-02-20');


--Get a meal with any id, fx 1
SELECT *
FROM Meal
WHERE meal_id = 2;
--Update a meal with any id, fx 1. Update any attribute fx the title or multiple attributes
UPDATE Meal
SET Title = 'vegan', Description = 'Veggies'
WHERE id = 3;

--Delete a meal with any id, fx 1
DELETE
FROM Meal
WHERE id = 4;


--Get all reservations
SELECT *
FROM Reservation;
--Add a new reservation
INSERT INTO `Reservation` VALUE (75,55, '2020-9-01', '25252525', 'Mike','mb@ymail.com');
INSERT INTO `Reservation` VALUE (22,33, '2020-8-19', '15151515', 'John','johny@ymail.com');
--Get a reservation with any id, fx 1
SELECT *
FROM Reservation
WHERE id = 55
--Update a reservation with any id, fx 1. Update any attribute fx the title or multiple attributes
UPDATE Reservation
SET Email = hm@gyahoo.com
WHERE id = 33;
--Delete a reservation with any id, fx 1
DELETE
FROM Reservation
WHERE id = 75;

--Get all reviews
SELECT *
FROM Review
--Add a new review
INSERT INTO `Review` (Remarks,Rating,review_date)
VALUE (20,5, 'Food was delicious', 2, 6,''2020-9-5',' );
INSERT INTO `Review` (Remarks,Rating,review_date)
VALUE (10,22, 'Customer satisfaction not valued', 4,8, ''2020-9-15',' );

--Get a review with any id, fx 1
SELECT *
FROM id = 10
--Update a review with any id, fx 1. Update any attribute fx the title or multiple attributes
UPDATE Reviev
SET Remarks = 'The food was better'
review_date = '2020-9-20'
Rating = 6;
--Delete a review with any id, fx 1
DELETE
FROM Review
WHERE id = 22;


--Get meals that has a price smaller than a specific price fx 90
SELECT
FROM Meal
WHERE Price<30;
--Get meals that still has available reservations
SELECT Meal.id,number_of_guests, Reservations.id, max_reservations
FROM Reservation,Meal
WHERE Resevations.number_of_guests < Meal.max_reservations;
--Get meals that partially match a title. Rød grød med will match the meal with the title Rød grød med fløde
SELECT *
FROM Meal

--Get meals that has been created between two dates
SELECT *
FROM Meals
WHERE Created_date BETWEEN '2020-4-20' AND '2020-2-20'
--Get only specific number of meals fx return only 5 meals
SELECT *
FROM Meal
LIMIT 3;
--Get the meals that have good reviews
SELECT Meals.*, Review,Stars
FROM Meals, Review
WHERE Review.stars > 10
