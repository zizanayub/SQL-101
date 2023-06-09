/*
1. 
Inner Join:
*/

SELECT *
FROM EmployeeDemographics 
Inner Join EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID; 


/*
2. Full Outer Join: 
*/

SELECT *
FROM EmployeeDemographics
Full Outer Join EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID; 


/*
3. Left Outer Join: 
*/
Select *
FROM EmployeeDemographics
Left Outer Join EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID; 


/*
4. Right Outer Join:
*/

SELECT *
FROM EmployeeDemographics
RIght Outer Join EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID; 


/* 5. Specific Select with Joins (Not Gonna Work):
*/

Select EmployeeID, firstname, lastname, jobtitle, salary
FROM EmployeeDemographics
Inner Join EmployeeSalary
ON EmployeeDemographics.employeeid = EmployeeSalary.EmployeeID; 


/* 6. Right one for #5: 
*/

SELECT EmployeeDemographics.EmployeeID, firstname, lastname, jobtitle, salary
FROM EmployeeDemographics
Inner Join EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID; 


/* 7. Find all employee's salary except Michael Scott and the order should be largest to smallest: 
*/
SELECT EmployeeDemographics.EmployeeID, firstname, lastname, jobtitle, salary
FROM EmployeeDemographics
Inner Join EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE firstname <> 'Michael'
ORDER BY Salary DESC; 


/* 8. FInd all salesmen salary in average 
*/ 

SELECT jobtitle, avg(salary) AS AverageSalary
FROM EmployeeDemographics
Inner Join EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Where jobtitle = 'Salesman'
GROUP BY jobtitle; 


/* With Group By, Salary cannot be selected. Because GROUP BY is used only for operations. 
Invidual salary can't be shown. 
*/ 
