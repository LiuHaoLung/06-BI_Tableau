USE employees_mod;

SELECT 
    YEAR(tdm.from_date) AS calender_year,
    te.gender,
    COUNT(te.emp_no) AS num_of_employees
FROM 
    t_employees te
        JOIN
    t_dept_emp tdm ON te.emp_no = tdm.emp_no
GROUP BY calender_year, te.gender
Having calender_year >= 1990
ORDER BY calender_year;