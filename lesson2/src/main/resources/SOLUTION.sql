INSERT INTO Student(name, birthday, groupnumber) VALUES('John','2001-8-30', 1), ('Chris','2002-3-29', 1), ('Carl','2001-10-29', 1), ('Oliver','2002-12-25', 2), ('James','2001-11-25', 2), ('Lucas','2001-10-22', 2), ('Henry','2002-1-17', 2), ('Jacob','2003-10-11', 3), ('Logan','2003-3-13', 3), ('Artyom','2003-2-14', 4), ('Kiril','2001-1-11', 5), ('Maksim','2003-1-21', 5);

INSERT INTO Subject(name, grade, description) VALUES ('Art', 1, 'something'), ('Music', 1, 'something'), ('Geography', 2, 'something'), ('History', 2, 'something'), ('PE', 3, 'something'), ('Math', 3, 'something'), ('Science', 4, 'something'), ('IT', 4, 'something'), ('Economics', 5, 'something'), ('Biology', 5, 'something');

INSERT INTO paymenttype(name) values('DAILY'), ('WEEKLY'), ('MONTHLY');

INSERT INTO Mark(mark, student_id, subject_id)
values (8, (select id from student where name='Chris'), (select id from subject where name='Art')),
(5, (select id from student where name='Oliver'), (select id from subject where name='History')),
(9, (select id from student where name='James'), (select id from subject where name='Geography')),
(4, (select id from student where name='Jacob'), (select id from subject where name='Math')),
(9, (select id from student where name='Logan'), (select id from subject where name='PE')),
(4, (select id from student where name='John'), (select id from subject where name='Music')),
(7, (select id from student where name='Carl'), (select id from subject where name='Science')),
(7, (select id from student where name='Lucas'), (select id from subject where name='IT')),
(6, (select id from student where name='Henry'), (select id from subject where name='Economics')),
(2, (select id from student where name='Artyom'), (select id from subject where name='Biology')),
(10, (select id from student where name='Kiril'), (select id from subject where name='IT')),
(10, (select id from student where name='Maksim'), (select id from subject where name='IT'));

INSERT INTO Payment(amount, payment_date, student_id, type_id)
values
(4000, '2024-03-10', (SELECT id FROM Student where name='John'), (SELECT id FROM paymenttype WHERE name='WEEKLY')),
(14000, '2024-03-11', (SELECT id FROM Student where name='Oliver'), (SELECT id FROM paymenttype WHERE name='MONTHLY')),
(4200, '2024-03-11', (SELECT id FROM Student where name='Henry'), (SELECT id FROM paymenttype WHERE name='WEEKLY')),
(1000, '2024-03-11', (SELECT id FROM Student where name='James'), (SELECT id FROM paymenttype WHERE name='DAILY')),
(4500, '2024-03-4', (SELECT id FROM Student where name='Maksim'), (SELECT id FROM paymenttype WHERE name='WEEKLY')),
(30000, '2024-03-2', (SELECT id FROM Student where name='Kiril'), (SELECT id FROM paymenttype WHERE name='MONTHLY')),
(3000, '2024-03-2', (SELECT id FROM Student where name='Artyom'), (SELECT id FROM paymenttype WHERE name='WEEKLY')),
(200, '2024-03-2', (SELECT id FROM Student where name='Lucas'), (SELECT id FROM paymenttype WHERE name='DAILY')),
(10000, '2024-03-2', (SELECT id FROM Student where name='Carl'), (SELECT id FROM paymenttype WHERE name='MONTHLY')),
(3900, '2024-03-2', (SELECT id FROM Student where name='Logan'), (SELECT id FROM paymenttype WHERE name='WEEKLY')),
(300, '2024-03-2', (SELECT id FROM Student where name='Jacob'), (SELECT id FROM paymenttype WHERE name='DAILY')),
(90000, '2024-03-2', (SELECT id FROM Student where name='Chris'), (SELECT id FROM paymenttype WHERE name='MONTHLY'));