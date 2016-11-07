SELECT MediaType.Name AS "Media Type", COUNT(Track.MediaTypeId) AS "Occurance of this type"
FROM MediaType
JOIN Track ON MediaType.MediaTypeId = Track.MediaTypeId
GROUP BY (MediaType.MediaTypeId)