select s.student_id,s.student_name,sb.subject_name , ifnull(count(e.student_id),0) as attended_exams
from students s
cross join subjects sb
left join examinations e
on s.student_id=e.student_id and
sb.subject_name= e.subject_name 
group by  s.student_id ,s.student_name,sb.subject_name
order by s.student_id , sb.subject_name ;