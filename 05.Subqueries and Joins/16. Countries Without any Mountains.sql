SELECT
COUNT(*) AS [Count]
FROM Countries c   
	LEFT JOIN MountainsCountries mc ON mc.CountryCode = c.CountryCode
WHERE mc.MountainId IS NULL