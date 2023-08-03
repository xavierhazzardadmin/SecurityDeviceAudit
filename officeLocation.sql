SELECT
  COUNT(User.username) as `User count`,
  User.officeLocation as `Office Location`
FROM
  User
GROUP BY
  User.officeLocation
ORDER BY
  COUNT(User.username) DESC;
