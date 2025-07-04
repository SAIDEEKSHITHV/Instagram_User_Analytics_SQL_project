-- Query: Engagement rate = (likes + comments) / followers

SELECT
    p.user_id,
    u.username,
    ROUND((SUM(p.likes_count) + SUM(p.comments_count)) / NULLIF(u.followers, 0), 3) AS engagement_rate
FROM posts p
JOIN users u ON p.user_id = u.user_id
GROUP BY p.user_id, u.username
ORDER BY engagement_rate DESC
LIMIT 10;
