SELECT e.first_name, 
	   e.last_name, 
	   e.emp_no, 
	   ti.title, 
	   ti.to_date, 
	   ti.from_date
INTO retirement_titles
FROM employees as e
JOIN titles as ti 
ON e.emp_no = ti.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no
;

select * from retirement_titles

SELECT first_name, last_name, emp_no 
FROM retirement_titles


SELECT DISTINCT ON (emp_no) rt.emp_no, rt.first_name, rt.last_name, rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE rt.to_date = ('9999-01-01');

-- Retrieve the number of employees by their most recent
SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title 
ORDER BY ut.count DESC;

SELECT DISTINCT ON (e.emp_no) 
                    e.emp_no, 
                    e.first_name, 
                    e.last_name, 
                    e.birth_date, 
                    ti.from_date,
                    ti.to_date,
                    ti.title
INTO mentorship_eligibilty
FROM employees as e
JOIN dept_emp as de ON e.emp_no = de.emp_no
JOIN titles as ti ON e.emp_no = ti.emp_no
WHERE ti.to_date = '9999-01-01'
AND e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY e.emp_no;

