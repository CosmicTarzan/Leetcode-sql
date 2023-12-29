SELECT MAX(a.Salary) as SecondHighestSalary
FROM Employee a
RIGHT JOIN Employee b
ON a.Salary < b.Salary
