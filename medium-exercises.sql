-- The PADS
SELECT CONCAT(Name, "(", LEFT(Occupation, 1), ")")
FROM OCCUPATIONS
ORDER BY Name;

SELECT CONCAT("There are a total of ", COUNT(Occupation), " ", LOWER(Occupation, "s.") AS Total
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY Total;

-- New Companies
SELECT x.company_code,
       x.founder,
       COUNT(DISTINCT y.lead_manager_code),
       COUNT(DISTINCT y.senior_manager_code),
       COUNT(DISTINCT y.manager_code),
       COUNT(DISTINCT y.employee_code)
FROM Company x
JOIN Employee y ON x.company_code = y.company_code
GROUP BY x.company_code, x.founder
ORDER BY x.company_code;

-- Weather Observation Station 18
SELECT ROUND(ABS(MIN(LAT_N) - MAX(LAT_N)) + ABS(MIN(LONG_W) - MAX(LONG_W)),4)
FROM STATION;

-- Weather Observation Station 19
SELECT ROUND(SQRT(POWER(MAX(LAT_N) - MIN(LAT_N),2) + POWER(MAX(LONG_W) - MIN(LONG_W),2)),4)
FROM STATION;

-- Weather Observation Station 20
SELECT ROUND(LAT_N,4)
FROM STATION
ORDER BY LAT_N ASC
LIMIT 249,1;

-- Top Competitors
SELECT h.hacker_id,
       h.name
FROM Submissions s
JOIN Challenges c ON s.challenge_id = c.challenge_id
JOIN Difficulty d ON c.difficulty_level = d.difficulty_level
JOIN Hackers h ON s.hacker_id = h.hacker_id
WHERE d.score = s.score
  AND c.difficulty_level = d.difficulty_level
GROUP BY h.hacker_id,
         h.name
HAVING COUNT(s.hacker_id) > 1
ORDER BY COUNT(s.hacker_id) DESC, s.hacker_id ASC;

-- The Report
SELECT IF(Grade < 8, NULL, Name), Grade, Marks
FROM Students s
JOIN Grades g
WHERE Marks BETWEEN Min_Mark AND Max_Mark
ORDER BY Grade DESC, Name;
