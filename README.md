# BigData JSON Processing and Excel Export

## Sample Data
##  Overview
This project reads a large `data.json` file containing user data, and splits important array fields into separate Excel files.  
It extracts information from:
- `repo_list`
- `commit_list`
- `follower_list`
- `following_list`

Each array is flattened and saved as a separate Excel file for easier analysis.

---

##  How It Works
- Open and read the `data.json` line-by-line.
- Extract `login` and `id` for each user.
- Expand each array (`repo_list`, `commit_list`, etc.) into flat tables.
- Save each table separately as:
  - `repo_list.xlsx`
  - `commit_list.xlsx`
  - `follower_list.xlsx`
  - `following_list.xlsx`

The Python script handles errors safely and ensures clean data extraction.

---

##  Files Generated
| File | Description |
|:---|:---|
| `repo_list.xlsx` | Repository information linked to users |
| `commit_list.xlsx` | Commit history linked to users |
| `follower_list.xlsx` | List of followers for each user |
| `following_list.xlsx` | List of users each person is following |
| `data_processing_script.py` | Python script to generate the Excel files |

---

##  How to Run
1. Make sure you have **Python 3.x** installed.
2. Install necessary libraries:
   ```bash
   pip install pandas openpyxl

## Create Table Queries

BIGDATA_GITHUB.RAW.FOLLOWERS

## Analysis using Spark
Top_20_activities_by_companies : With this analysis we are listing Top 20 companies with most activities on GIT.
Top_Licences_By_RepoAccounts : Analysis of High-Impact Licenses with high total_stars (e.g., MIT) indicates the repositories with high user engagement.

Language_Analysis : Separates repo language for popularity trend analysis grouped by year and month.

Top_Licences_By_RepoAccounts : Analysis of High-Impact Licenses with high total_stars (e.g., MIT) indicates the repositories with high user engagement.

## Snowflake Analytics Table

BIGDATA_GITHUB.ANALYTICS.TOP_COMPANY_ACTIVITY_SUMMARY

##  Workflow 

![BigData_Workflow](https://github.com/user-attachments/assets/3ca3c2ad-841a-4d65-a2e8-c7147eb7aefd)


