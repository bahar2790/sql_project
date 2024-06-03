--Job title'i programmer olan kişiler kimlerdir? 
SELECT concat(first_name,' ',last_name) AS name,
phone_number,
email,
department_id
FROM employees
where job_id IN(
select job_id 
from jobs 
	where job_title = 'Programmer'
);

--Marketing departmanında çalışan kişilerin isim-soyisim, 
--telefon numarası, email ve departman id bilgilerini getirin.
SELECT concat(first_name,' ',last_name)as name,
phone_number,
email,
department_id
from employees
where department_id IN(select department_id from departments where department_name = 'Marketing'
);

--Toronto'da bulunan departmanlarda çalışan kişilerin isimleri nelerdir?
SELECT first_name,
last_name,
department_id
from employees
where department_id IN(select department_id from departments
where location_id IN(select location_id from locations where city = 'Toronto'
));

--1 ve 2 bölgelerinde olan şehirler hangileridir?
SELECT city from locations
where country_id IN(select country_id from countries where
region_id IN (1,2)
);

--Lokasyon ID'si 2400 olan departmanda çalışan kişiler kimlerdir?

SELECT
  CONCAT(first_name, ' ', last_name) AS full_name
FROM
  employees
WHERE
  department_id IN
  (SELECT department_id FROM departments WHERE location_id = 2400);


--Europe bölgesinde konumlanan departmanlarda çalışan kişiler kimlerdir?
select * from employees
where department_id IN(select department_id from departments 
where location_id IN(select location_id from locations where country_id
IN(select country_id from countries where region_id IN(
SELECT region_id from regions where region_name ='Europe'
)
  )
    )

	   )
;

--Region ismi Europe ve Asia olan ülkeler nelerdir?
select * from countries
where region_id IN
(select region_id from regions where region_name IN ('Europe','Asia')
);
--En düşük maaş ile en yüksek maaş farkı en fazla olan job title hangisidir?


SELECT *,
       max_salary - min_salary AS salary_diff
  FROM jobs
 ORDER BY salary_diff DESC
LIMIT 1;

--%15 zam oranı ile maaşı asgari ücretin altında kalan kişiler kimlerdir?
SELECT 
first_name,
last_name,
salary as current_salary,
salary*1.15 as increased_salary
FROM employees
WHERE (salary*1.15)<8500



