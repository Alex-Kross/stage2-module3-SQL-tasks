SELECT * FROM Payment
WHERE amount >= 500;

SELECT * FROM Student
WHERE DATE_ADD(birthday, INTERVAL 20 YEAR) <= curdate();

SELECT * FROM Student
WHERE groupnumber  = 10 AND DATE_ADD(birthday, INTERVAL 20 YEAR) >= curdate();

select * from Student
where name = "Mike" OR group IN(4, 5, 6);

select * from payment
where DATE_ADD(payment_date, INTERVAL 8 month) >= curdate();

select * from Student
where name LIKE "A%";

select * from Student
where name = "Roxi" AND group = 4 OR name = "Tallie" and group = 9;