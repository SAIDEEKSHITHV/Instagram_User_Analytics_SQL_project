-- Query: Average engagement per post type (image, video, etc.)

SELECT
    post_type,
    ROUND(AVG(likes_count + comments_count), 2) AS avg_engagement
FROM posts
GROUP BY post_type
ORDER BY avg_engagement DESC;
