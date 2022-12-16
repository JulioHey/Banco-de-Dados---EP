# Buscar o supervisor de cada funcionário

SELECT 
	employee.f_name AS employee_name, 
    employee.office AS office, 
    supervisor.f_name AS supervisor_name, 
    supervisor.office AS office FROM employee
LEFT JOIN supervision s ON s.employee_cpf = employee.cpf 
LEFT JOIN employee supervisor ON s.supervisor_cpf = supervisor.cpf 