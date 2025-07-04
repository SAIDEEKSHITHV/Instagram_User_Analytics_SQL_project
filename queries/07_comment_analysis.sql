-- Query: Most commented posts

SELECT
    p.post_id,
    u.username,
    p.caption,
    COUNT(c.comment_id) AS total_comments
FROM posts p
JOIN comments c ON p.post_id = c.post_id
JOIN users u ON p.user_id = u.user_id
GROUP BY p.post_id, u.username, p.caption
ORDER BY total_comments DESC
LIMIT 10;
