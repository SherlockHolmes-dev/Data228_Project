
-- Query: Top 500 Developers by Follower Count
CREATE OR REPLACE TABLE BIGDATA_GITHUB.ANALYTICS.top_influential_developers AS
SELECT 
    user_login AS developer,
    COUNT(follower_login) AS follower_count
FROM 
    BIGDATA_GITHUB.RAW.follower_list_data
GROUP BY 
    user_login
ORDER BY 
    follower_count DESC
LIMIT 500;
