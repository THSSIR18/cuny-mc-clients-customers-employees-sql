/*****************************************
SELECT * FROM EMPLOYEES 
LIMIT 5 OR WHERE EMPLOYEEID IN (71,72)

SELECT * FROM DEPENDENTS
ORDER BY EMPLOYEEID

SELECT E.FIRSTNAME, E.LASTNAME, E.TITLE, E.GENDER, D.FIRTNAME, D.LASTNAME, D.GENDER, D.BIRTHDATE
FROM EMPLOYEES
INNER JOIN DEPENDENTS D ON E.EMPLOYEEID = D.EMPLOYEEID

SELECT E.FIRSTNAME, E.LASTNAME, E.TITLE, E.GENDER, D.FIRTNAME, D.LASTNAME, D.GENDER, D.BIRTHDATE
FROM EMPLOYEES E
LEFT OUTER JOIN DEPENDENTS D ON E.EMPLOYEEID = D.EMPLOYEEID

SELECT E.FIRSTNAME, E.LASTNAME, E.TITLE, E.GENDER, D.EMPLOYEEID DEP_EMPID, D.FIRTNAME, D.LASTNAME, D.GENDER, D.BIRTHDATE
FROM DEPENDENTS D
RIGHT OUTER JOIN EMPLOYEES E ON E.EMPLOYEEID = D.EMPLOYEEID

SELECT E.FIRSTNAME, E.LASTNAME, E.TITLE, E.GENDER, D.EMPLOYEEID DEP_EMPID, D.FIRTNAME, D.LASTNAME, D.GENDER, D.BIRTHDATE
FROM DEPENDENTS D
FULL OUTER JOIN EMPLOYEES E ON E.EMPLOYEEID = D.EMPLOYEEID

SELECT E.FIRSTNAME, E.LASTNAME, E.TITLE, E.GENDER, D.EMPLOYEEID DEP_EMPID, D.FIRSTNAME, D.LASTNAME, D.GENDER,
		EXTRACT(YEAR FROM AGE(CAST(D.BIRTHDATE AS DATE))) AGE
FROM EMPLOYEES E
LEFT OUTER JOIN DEPENDENTS D ON E.EMPLOYEEID = D.EMPLOYEEID

EXTRACT(YEAR FROM age(cast(dob as date)))

FIX THIS WHEN I GET THE CHANCE
EVERYTHING BELOW WORKS
**********************/

SELECT * FROM EMPLOYEES
WHERE EMPLOYEEID IN (71,72)

SELECT * FROM DEPENDENTS
ORDER BY EMPLOYEEID

SELECT E.FIRSTNAME, E.LASTNAME, E.TITLE, E.GENDER, D.FIRSTNAME, D.LASTNAME, D.GENDER, D.BIRTHDATE
FROM EMPLOYEES E
INNER JOIN DEPENDENTS D ON E.EMPLOYEEID = D.EMPLOYEEID

SELECT E.FIRSTNAME, E.LASTNAME, E.TITLE, E.GENDER, D.FIRSTNAME, D.LASTNAME, D.GENDER, D.BIRTHDATE
FROM EMPLOYEES E
LEFT OUTER JOIN DEPENDENTS D ON E.EMPLOYEEID = D.EMPLOYEEID

SELECT E.FIRSTNAME, E.LASTNAME, E.TITLE, E.GENDER, D.EMPLOYEEID DEP_EMPID, D.FIRSTNAME, D.LASTNAME, D.GENDER, D.BIRTHDATE
FROM DEPENDENTS D
FULL OUTER JOIN EMPLOYEES E ON E.EMPLOYEEID = D.EMPLOYEEID

SELECT E.FIRSTNAME, E.LASTNAME, E.TITLE, E.GENDER, D.FIRSTNAME, D.LASTNAME, D.GENDER, 
       EXTRACT(YEAR FROM AGE(CAST(D.BIRTHDATE AS DATE))) AGE
FROM EMPLOYEES E
LEFT OUTER JOIN DEPENDENTS D ON E.EMPLOYEEID = D.EMPLOYEEID

EXTRACT(YEAR FROM age(cast(dob as date))) 

SELECT TRIM(FIRSTNAME), LASTNAME FROM EMPLOYEES
WHERE EMPLOYEEID = '34'

SELECT TITLE, COUNT(*) TOTAL 
FROM EMPLOYEES
GROUP BY TITLE

SELECT COUNT(*) TOTAL_EMPLOYEES
FROM EMPLOYEES

SELECT TITLE, MAX(SALARY)
FROM EMPLOYEES
WHERE GENDER = 'M'
GROUP BY TITLE 
HAVING MAX(SALARY) > '60000'

SELECT TITLE
FROM EMPLOYEES
WHERE GENDER = 'M'
GROUP BY TITLE 
HAVING MAX(SALARY) > '60000'

SELECT TITLE, COUNT(*)
FROM EMPLOYEES
WHERE GENDER = 'M'
GROUP BY TITLE
HAVING COUNT(*) > 3


SELECT * FROM dependents
COPY dependents FROM '\Users\Sahil Rajapkar\Desktop\Dependents.csv' WITH (FORMAT csv);

SELECT * FROM dependents