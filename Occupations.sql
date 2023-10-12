/*
Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.
Note: Print NULL when there are no more names corresponding to an occupation.

Input Format
The OCCUPATIONS table is described as follows:
+-----------+---------+
|   Column  |   Type  |
+-----------+---------+
|   Name    |  String |
| Occupation|  String |
+-----------+---------+
Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.
*/

SELECT MAX(CASE WHEN OCCUPATION = 'Doctor' THEN NAME END),
       MAX(CASE WHEN OCCUPATION = 'Professor' THEN NAME END),
       MAX(CASE WHEN OCCUPATION = 'Singer' THEN NAME END),
       MAX(CASE WHEN OCCUPATION = 'Actor' THEN NAME END)
FROM (SELECT ROW_NUMBER() OVER 
     (PARTITION BY OCCUPATION ORDER BY NAME) 
      AS R, NAME, OCCUPATION
      FROM OCCUPATIONS) AS O
GROUP BY R;
