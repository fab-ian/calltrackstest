SELECT employee_id, MAX(amount)
FROM salaries
GROUP BY employee_id
ORDER BY employee_id 
;

SELECT organization_id, AVG(amount)
FROM salaries
GROUP BY organization_id 
ORDER BY organization_id 
;

