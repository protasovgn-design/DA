SELECT
id,
scores,
RANK() OVER (ORDER BY scores DESC) AS rank_position
FROM examination;
