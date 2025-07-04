-- Query: Track monthly user registration growth

SELECT
    DATE_FORMAT(created_at, '%Y-%m') AS month,
    COUNT(user_id) AS new_users
FROM users
GROUP BY month
ORDER BY month;
