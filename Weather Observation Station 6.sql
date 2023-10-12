/*
Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

Input Format
The STATION table is described as follows:
+--------+--------------+
| Field  | Type         |
+--------+--------------+
| ID     | NUMBER       |
| CITY   | VARCHAR2(21) |
| STATE  | VARCHAR2(2)  |
| LAT_N  | NUMBER       |
| LONG_W | NUMBER       |
+--------+--------------+
where LAT_N is the northern latitude and LONG_W is the western longitude.
*/


/*
select distinct city from station where city like 'a%';
select distinct city from station where city like 'e%';
select distinct city from station where city like 'i%';
select distinct city from station where city like 'o%';
select distinct city from station where city like 'u%';
*/

/*
SELECT DISTINCT city
FROM station
WHERE LOWER(SUBSTRING(city, 1, 1)) IN ('a', 'e', 'i', 'o', 'u');
*/

select distinct city from station where left (city, 1) in ('a', 'e', 'i', 'o', 'u');

