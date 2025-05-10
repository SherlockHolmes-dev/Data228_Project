
-- Query: Top 500 Repositories by Commit Volume
CREATE OR REPLACE TABLE BIGDATA_GITHUB.ANALYTICS.most_active_repos AS
SELECT 
    repo_name,
    COUNT(*) AS total_commits
FROM 
    BIGDATA_GITHUB.RAW.commit_list_data
GROUP BY 
    repo_name
ORDER BY 
    total_commits DESC
LIMIT 500;
