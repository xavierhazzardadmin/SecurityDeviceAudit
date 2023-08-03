-- Selects users that aren't on N-Central
SELECT
  username AS `Name`,
  officeLocation AS `Office Location`
FROM
  User
WHERE
  username NOT IN (
    SELECT
      assetOwner
    FROM
      `N-Central`
  )
ORDER BY officeLocation ASC;