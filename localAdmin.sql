-- Selects users that are local admin
SELECT
    User.username AS `Name`, 
    User.officeLocation as `Office Location`
FROM
    LocalAdmin
    INNER JOIN User ON LocalAdmin.accountName = User.username
ORDER BY officeLocation ASC;