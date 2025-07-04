-- Query: Count most used hashtags (assuming a hashtags table or column)

SELECT
    hashtag,
    COUNT(*) AS usage_count
FROM post_hashtags
GROUP BY hashtag
ORDER BY usage_count DESC
LIMIT 10;
