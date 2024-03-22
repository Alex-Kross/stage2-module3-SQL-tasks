select p.id, amount, payment_date, type_id, student_id from Payment p
join paymentType pt
on p.type_id = pt.id
where pt.name = "MONTHly";

select mark from Mark m
join subject s
on s.id = m.subject_id
where s.name = "Art";

select s.id, s.name, birthday, groupnumber  from Student s
inner join payment p
on s.id = p.id
join paymentType pt
on pt.id = p.type_id
where pt.name = "weekly";

select s.id, s.name, s. birthday, s.groupnumber from student s
join mark m
on m.student_id = s.id
join subject sub
on m.subject_id = sub.id
where sub.name = "Math";