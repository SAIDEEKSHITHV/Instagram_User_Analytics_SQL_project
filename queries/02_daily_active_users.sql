-- Query: Count unique daily active users (who posted, liked, or commented)

SELECT
    activity_date,
    COUNT(DISTINCT user_id) AS active_users
FROM (
    SELECT user_id, DATE(posted_at) AS activity_date FROM posts
    UNION ALL
    SELECT user_id, DATE(liked_at) FROM likes
    UNION ALL
    SELECT user_id, DATE(commented_at) FROM comments
) AS combined_activity
GROUP BY activity_date
ORDER BY activity_date;
