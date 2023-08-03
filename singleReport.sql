SELECT
    COUNT(username) AS `Count`
FROM
    User;

SELECT
    COUNT(User.username) AS `Count`,
    officeLocation AS `Office Location`,
    Intune.deviceName
FROM
    User
LEFT JOIN Intune ON User.username = Intune.username

-- GROUP BY officeLocation;