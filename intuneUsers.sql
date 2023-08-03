-- Selects users that aren't on Intune
SELECT
  username AS `Name`,
  officeLocation AS `Office Location`
FROM
  User
WHERE
  username NOT IN (
    SELECT
      username
    FROM
      Intune
  )
ORDER BY officeLocation ASC;

