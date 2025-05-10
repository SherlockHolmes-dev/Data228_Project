# BigData JSON Processing and Excel Export

## Why Analyze GitHub Data?

GitHub is a huge platform where developers work together and share open-source projects.  
By using big data tools, we can find useful patterns like:

- Who the most active or influential developers are  
- What tools and technologies are becoming popular  
- How different developer communities grow and change over time  

These insights are helpful for:
- Developers to learn and grow  
- Companies to spot trends and talent  
- Researchers to understand tech communities better

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

## Create Raw Table Queries

BIGDATA_GITHUB.RAW.FOLLOWERS

BIGDATA_GITHUB.RAW.COMMIT_LIST_TABLE

BIGDATA_GITHUB.RAW.FOLLOWER_LIST_TABLE

BIGDATA_GITHUB.RAW.FOLLOWING_LIST_TABLE

BIGDATA_GITHUB.RAW.NON_LIST_TABLE

BIGDATA_GITHUB.RAW.REPO_LIST_TABLE

## Analysis using Spark
Top_20_activities_by_companies : With this analysis we are listing Top 20 companies with most activities on GIT.

Key Insights from GitHub Commit Activity (2008–2018) :- Analyze the volumn of commit activities 

Top_Licences_By_RepoAccounts : Analysis of High-Impact Licenses with high total_stars (e.g., MIT) indicates the repositories with high user engagement.

Language_Analysis : Separates repo language for popularity trend analysis grouped by year and month.

Top_Licences_By_RepoAccounts : Analysis of High-Impact Licenses with high total_stars (e.g., MIT) indicates the repositories with high user engagement.

## Snowflake Analytics Table

BIGDATA_GITHUB.ANALYTICS.TOP_COMPANY_ACTIVITY_SUMMARY

BIGDATA_GITHUB.ANALYTICS.MONTHLY_COMMIT_SUMMARY

BIGDATA_GITHUB.ANALYTICS.YEARLY_COMMIT_SUMMARY

BIGDATA_GITHUB.ANALYTICS.

BIGDATA_GITHUB.ANALYTICS.

BIGDATA_GITHUB.ANALYTICS.

##  Workflow 

![BigData_Workflow](https://github.com/user-attachments/assets/3ca3c2ad-841a-4d65-a2e8-c7147eb7aefd)

##  Data Flow Explained in Easy Language

This data pipeline shows how raw GitHub data moves through different stages to generate meaningful insights.



###  Storage (Azure Blob)
- Raw GitHub data (in JSON format) is stored in **Microsoft Azure Blob Storage**, a secure cloud-based storage system.
- Think of it like uploading your files to an online folder.
- It handles large volumes of data (e.g., 53 GB from Kaggle GitHub dataset).



### Analysis (Spark + Python)
- Data is loaded and processed using **Apache Spark**, a big data engine that handles large datasets quickly.
- We use **Python** with libraries like:
  - **Pandas**: for data manipulation
  - **Seaborn & Matplotlib**: for data visualization
  - **PySpark**: to connect Python with Spark
- At this stage, we:
  - Flatten nested JSON structures (arrays, dictionaries)
  - Clean, filter, and transform the data
  - Extract useful features like user activity, commit trends, repo info



###  Data Warehouse (Snowflake)
- After processing, the clean data is stored in **Snowflake**, a scalable cloud data warehouse.
- This helps in:
  - Organizing data into tables (users, commits, repos)
  - Running fast SQL queries
  - Enabling secure access and integration with BI tools



### Visualization (Power BI)
- Finally, the insights are visualized using **Power BI**.
- Dashboards and interactive reports help:
  - Track top contributors and companies
  - Compare developer activity across years and locations
  - Highlight technology adoption trends
- These visuals are useful for developers, researchers, and decision-makers.

![image](https://github.com/user-attachments/assets/5fc11959-5762-40b3-ac3c-773414a65924)


 **End Goal**: Turn complex, unstructured GitHub data into clear, actionable insights through a robust, cloud-based analytics pipeline.

 ## Real-World Impact

### Recruiters
- Identify top talent by looking at actual code contributions and activity on GitHub.

### Organizations
- Spot emerging tools, languages, and active maintainers.
- Understand what technologies are gaining traction in the community.

### Developers
- Benchmark your own influence and contributions.
- Discover trending projects and areas to grow your skills.

### Researchers
- Study collaboration networks, innovation patterns, and how open-source communities evolve.

### Product Teams
- Gain insights into developer needs and usage trends.
- Prioritize features based on real-world coding behavior.
  
---

## Conclusion

##  Conclusion & Key Learnings

Analyzing GitHub data from **2008–2018** helped us uncover meaningful insights about developer activity, technology trends, and community dynamics.

- **Microsoft**, **Google**, and **freelancers** lead in contributions.
- **JavaScript** remained the most popular language throughout the decade.
- **Seasonal and yearly commit patterns** reflect real-world behavior and developer engagement trends.

We used a **modern big data pipeline** — from **Azure Blob Storage** to **Power BI** — to process and visualize this information effectively.

---

##  What We Learned About Apache Spark

- **Spark** is ideal for processing large-scale, nested datasets like GitHub JSON.
- It's **fast and scalable**, thanks to in-memory computing and parallel execution.
- **PySpark** allowed us to use Python alongside Spark's distributed data processing.

We used Spark for:

-  Flattening nested JSON arrays  
-  Grouping and aggregating data (e.g., commits, stars, forks)  
-  Calculating influence scores and developer rankings  

Spark integrated smoothly into our workflow and enabled a seamless transformation from raw data to actionable insights.

---

# Thank You !!





