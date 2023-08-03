SELECT
    User.username AS `User`, 
    User.officeLocation AS `Office Location`,
    `N-Central`.assetID,
    `N-Central`.status AS `N-Central Status`,
    Bitlocker.bitlockerStatus AS `Bitlocker Status`,
    Intune.compliance AS `Intune Compliance`
FROM
    User
LEFT JOIN Intune ON User.username = Intune.username
LEFT JOIN `N-Central` ON User.username = `N-Central`.assetOwner
LEFT JOIN Bitlocker ON `N-Central`.assetID = Bitlocker.deviceName
GROUP BY User.username
ORDER BY User.officeLocation DESC;