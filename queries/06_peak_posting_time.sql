-- Query: Find the most active posting hour

SELECT
    HOUR(posted_at) AS posting_hour,
    COUNT(*) AS post_count
FROM posts
GROUP BY posting_hour
ORDER BY post_count DESC
LIMIT 5;
