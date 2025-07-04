-- Query: Identify top influencers based on total engagement

SELECT
    u.username,
    u.followers,
    COUNT(p.post_id) AS total_posts,
    SUM(p.likes_count + p.comments_count) AS total_engagement
FROM users u
JOIN posts p ON u.user_id = p.user_id
GROUP BY u.user_id, u.username, u.followers
ORDER BY total_engagement DESC
LIMIT 10;
