-- Selects devices that are running intune
SELECT
  Intune.username,
  Intune.deviceName as IntuneDevice
FROM
  Intune
  INNER JOIN User ON Intune.username = User.username
