--Tüm çalışanlarin isim, soyisim, telefon, departman adi ve deparmanın ülke bilgisini getirin.
select first_name,
last_name,
phone_number,
department_name,
country_name
from employees as e
left join departments as d
on e.department_id=d.department_id
left join locations as l
on d.location_id=l.location_id
left join countries as c
on l.country_id=c.country_id;


--Her bölgenin kapsadığı ülke isimlerini getirin.
select region_name,
country_name
from countries as c
left join regions as r
on c.region_id=r.region_id
order by 1;

--Her çalışanın kişi bilgileri ile birlikte çalıştığı departmanı ve tüm 
--lokasyon bilgilerini getirin.
select * from employees as e
left join departments as d
on e.department_id=d.department_id
left join locations as l
on d.location_id=l.location_id
--cevap anahtarı
SELECT 
       first_name,
       last_name,
       phone_number,
       email,
       d.department_name,
       l.*
FROM employees as e 
LEFT JOIN departments as d ON e.department_id=d.department_id
LEFT JOIN locations as l ON d.location_id=l.location_id

--Departman ismi bazlı ortalama maaşları ve çalışan sayısını getirin.
select 
d.department_name,
d.department_id
round(avg(e.salary),2)as avg_salary,
count(e.empoleyee_id)as employee_count
from departments as
left join employees as e on
e.department_id=d.departmet-id
group by 1,2
order by department_name
;
--cevap anahtarı
SELECT 
    d.department_name,
    d.department_id,
    round( AVG(e.salary), 2)  as avg_salary,
    COUNT(e.employee_id) as employee_count
FROM departments as d
LEFT JOIN employees as e ON e.department_id=d.department_id
GROUP BY 1,2
ORDER BY department_name;



--Her şehirde çalışan kişi sayısını getirin.
select
count(DISTINCT e.employee_id)as employee_count
from locations as l
left join departments as d
on l.location_id=d.location_id
left join employees as e
on e.department_id=d.department_id
group by city;

--Her çalışanın maaşı ilgili ünvandaki maksimum maaştan % kaç eksik? Hesaplayın.

select
employee_id,
first_name,
last_name,
salary,
max_salary,
((j.max_salary-e.salary)*1.0/e.salary*1.0)*100
as diff_percentage
from employees as e
left join jobs as j on e.job_id=j.job_id

--Manager id bazlı ünvan sayısını getirin
--En fazla ünvana sahip managerın ekibinde çalışan kişileri getirin.
SELECT 
    e.manager_id,
    COUNT(DISTINCT j.job_title) as title_count
FROM employees as e 
LEFT JOIN jobs as j ON e.job_id=j.job_id
GROUP BY 1
ORDER BY 1;





