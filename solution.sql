SELECT * FROM admin.usersAddress;

SELECT state,
SUM(user_id)
FROM usersAddress
GROUP BY state
ORDER BY state ASC;

SELECT SUBSTR(phone1, 1, 3) AS Area_Code,
COUNT(*) AS Total
FROM usersContact
GROUP BY Area_Code
ORDER BY Total DESC;

SELECT MIN(users.first_name),
usersAddress.county,
COUNT(*) AS County_Users
FROM users
JOIN usersAddress ON users.id = usersAddress.user_id
GROUP BY county
HAVING County_Users>10