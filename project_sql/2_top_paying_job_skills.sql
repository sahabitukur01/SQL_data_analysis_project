/*
Question: What are the top-paying data analyst jobs ?
- Identify the top 10 highest paying data analyst roles that are available remotely
- Focuses on job postings with specified salaries (remove nulls).
- Why ? Highlught the top-paying oppurtunities for Data Analysts, Offereing insights into 
*/

WITH top_paying_jobs AS (
    SELECT 
        job_id,
        job_title,
        salary_year_avg,
        name AS company_name
    FROM 
        job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
    WHERE 
        job_title = 'Data Analyst' AND
        job_location = 'Anywhere' AND
        salary_year_avg IS NOT NULL
    ORDER BY
        salary_year_avg DESC

)
SELECT 
    top_paying_jobs.*,
    skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC

/*
Most in-demand skills:
SQL (121 mentions) is by far the most requested skill → essential for querying and managing data.
Python (76) follows strongly → used for automation, analysis, and machine learning.
Visualization & reporting tools:
Tableau (71), Excel (65), and Power BI (36) are highly valued → showing how critical storytelling and dashboards are.
Statistical & analytical tools:
R (49) and SAS (44) highlight demand in companies requiring deeper statistical or legacy analytics tools.
Cloud & data platforms:
Azure (12), AWS (9), and Snowflake (9) appear → indicating growing importance of cloud-based analytics.
Other tools & extras:
Looker (20) and PowerPoint (14) reinforce the need to not just analyze, but also present insights clearly.
Smaller mentions of JavaScript (11), Sheets (9), Oracle (9) show niche but relevant roles requiring database and scripting knowledge.

[
  {
    "job_id": 1246069,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Plexus Resource Solutions",
    "skills": "python"
  },
  {
    "job_id": 1246069,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Plexus Resource Solutions",
    "skills": "mysql"
  },
  {
    "job_id": 1246069,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Plexus Resource Solutions",
    "skills": "aws"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "matlab"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "pandas"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 456042,
    "job_title": "Data Analyst",
    "salary_year_avg": "151500.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sql"
  },
  {
    "job_id": 456042,
    "job_title": "Data Analyst",
    "salary_year_avg": "151500.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "python"
  },
  {
    "job_id": 456042,
    "job_title": "Data Analyst",
    "salary_year_avg": "151500.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "r"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "sql"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "python"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "r"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "golang"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "elasticsearch"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "aws"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "bigquery"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "gcp"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "pandas"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "scikit-learn"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "looker"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "kubernetes"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "python"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "java"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "r"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "javascript"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "c++"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "tableau"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "power bi"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "qlik"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "sql"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "python"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "r"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "swift"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "excel"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "tableau"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "looker"
  },
  {
    "job_id": 1482852,
    "job_title": "Data Analyst",
    "salary_year_avg": "138500.0",
    "company_name": "Overmind",
    "skills": "sql"
  },
  {
    "job_id": 1482852,
    "job_title": "Data Analyst",
    "salary_year_avg": "138500.0",
    "company_name": "Overmind",
    "skills": "python"
  },
  {
    "job_id": 479965,
    "job_title": "Data Analyst",
    "salary_year_avg": "135000.0",
    "company_name": "InvestM Technology LLC",
    "skills": "sql"
  },
  {
    "job_id": 479965,
    "job_title": "Data Analyst",
    "salary_year_avg": "135000.0",
    "company_name": "InvestM Technology LLC",
    "skills": "excel"
  },
  {
    "job_id": 479965,
    "job_title": "Data Analyst",
    "salary_year_avg": "135000.0",
    "company_name": "InvestM Technology LLC",
    "skills": "power bi"
  },
  {
    "job_id": 1326467,
    "job_title": "Data Analyst",
    "salary_year_avg": "135000.0",
    "company_name": "EPIC Brokers",
    "skills": "excel"
  },
  {
    "job_id": 1209798,
    "job_title": "Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Doximity",
    "skills": "sql"
  },
  {
    "job_id": 1209798,
    "job_title": "Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Doximity",
    "skills": "python"
  },
  {
    "job_id": 1209798,
    "job_title": "Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Doximity",
    "skills": "spark"
  },
  {
    "job_id": 1209798,
    "job_title": "Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Doximity",
    "skills": "pandas"
  },
  {
    "job_id": 1209798,
    "job_title": "Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Doximity",
    "skills": "numpy"
  },
  {
    "job_id": 1209798,
    "job_title": "Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Doximity",
    "skills": "unix"
  },
  {
    "job_id": 1209798,
    "job_title": "Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Doximity",
    "skills": "git"
  },
  {
    "job_id": 1209798,
    "job_title": "Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Doximity",
    "skills": "github"
  },
  {
    "job_id": 1148444,
    "job_title": "Data Analyst",
    "salary_year_avg": "127000.0",
    "company_name": "Acorns",
    "skills": "outlook"
  },
  {
    "job_id": 285447,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "Robert Half",
    "skills": "flow"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "The Walt Disney Company",
    "skills": "sql"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "The Walt Disney Company",
    "skills": "python"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "The Walt Disney Company",
    "skills": "r"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "The Walt Disney Company",
    "skills": "sas"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "The Walt Disney Company",
    "skills": "databricks"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "The Walt Disney Company",
    "skills": "snowflake"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "The Walt Disney Company",
    "skills": "sas"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "The Walt Disney Company",
    "skills": "spss"
  },
  {
    "job_id": 876656,
    "job_title": "Data Analyst",
    "salary_year_avg": "119200.0",
    "company_name": "CVS Health",
    "skills": "sql"
  },
  {
    "job_id": 876656,
    "job_title": "Data Analyst",
    "salary_year_avg": "119200.0",
    "company_name": "CVS Health",
    "skills": "python"
  },
  {
    "job_id": 876656,
    "job_title": "Data Analyst",
    "salary_year_avg": "119200.0",
    "company_name": "CVS Health",
    "skills": "hadoop"
  },
  {
    "job_id": 876656,
    "job_title": "Data Analyst",
    "salary_year_avg": "119200.0",
    "company_name": "CVS Health",
    "skills": "tableau"
  },
  {
    "job_id": 945180,
    "job_title": "Data Analyst",
    "salary_year_avg": "117713.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "excel"
  },
  {
    "job_id": 945180,
    "job_title": "Data Analyst",
    "salary_year_avg": "117713.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "tableau"
  },
  {
    "job_id": 945180,
    "job_title": "Data Analyst",
    "salary_year_avg": "117713.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "word"
  },
  {
    "job_id": 945180,
    "job_title": "Data Analyst",
    "salary_year_avg": "117713.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "powerpoint"
  },
  {
    "job_id": 945180,
    "job_title": "Data Analyst",
    "salary_year_avg": "117713.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "ms access"
  },
  {
    "job_id": 685438,
    "job_title": "Data Analyst",
    "salary_year_avg": "117500.0",
    "company_name": "Jobot",
    "skills": "sql"
  },
  {
    "job_id": 685438,
    "job_title": "Data Analyst",
    "salary_year_avg": "117500.0",
    "company_name": "Jobot",
    "skills": "python"
  },
  {
    "job_id": 685438,
    "job_title": "Data Analyst",
    "salary_year_avg": "117500.0",
    "company_name": "Jobot",
    "skills": "tableau"
  },
  {
    "job_id": 131427,
    "job_title": "Data Analyst",
    "salary_year_avg": "117000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 131427,
    "job_title": "Data Analyst",
    "salary_year_avg": "117000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 131427,
    "job_title": "Data Analyst",
    "salary_year_avg": "117000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 131427,
    "job_title": "Data Analyst",
    "salary_year_avg": "117000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 1788827,
    "job_title": "Data Analyst",
    "salary_year_avg": "115791.5",
    "company_name": "Kern Health Systems",
    "skills": "sql"
  },
  {
    "job_id": 1788827,
    "job_title": "Data Analyst",
    "salary_year_avg": "115791.5",
    "company_name": "Kern Health Systems",
    "skills": "sas"
  },
  {
    "job_id": 1788827,
    "job_title": "Data Analyst",
    "salary_year_avg": "115791.5",
    "company_name": "Kern Health Systems",
    "skills": "excel"
  },
  {
    "job_id": 1788827,
    "job_title": "Data Analyst",
    "salary_year_avg": "115791.5",
    "company_name": "Kern Health Systems",
    "skills": "sas"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "sql"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "sql server"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "azure"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "databricks"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "oracle"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "tableau"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "power bi"
  },
  {
    "job_id": 1403108,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1403108,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "sql"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "python"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "r"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "vba"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "snowflake"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "tableau"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "power bi"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "dax"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "powerpoint"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "alteryx"
  },
  {
    "job_id": 24351,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "ManyPets",
    "skills": "sql"
  },
  {
    "job_id": 24351,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "ManyPets",
    "skills": "excel"
  },
  {
    "job_id": 24351,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "ManyPets",
    "skills": "tableau"
  },
  {
    "job_id": 236397,
    "job_title": "Data Analyst",
    "salary_year_avg": "112661.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sql"
  },
  {
    "job_id": 236397,
    "job_title": "Data Analyst",
    "salary_year_avg": "112661.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "python"
  },
  {
    "job_id": 236397,
    "job_title": "Data Analyst",
    "salary_year_avg": "112661.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "tableau"
  },
  {
    "job_id": 185960,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 185960,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 185960,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 185960,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 185960,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 1006256,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "InvestM Technology LLC",
    "skills": "sql"
  },
  {
    "job_id": 1006256,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "InvestM Technology LLC",
    "skills": "python"
  },
  {
    "job_id": 1006256,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "InvestM Technology LLC",
    "skills": "r"
  },
  {
    "job_id": 1006256,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "InvestM Technology LLC",
    "skills": "tableau"
  },
  {
    "job_id": 1006256,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "InvestM Technology LLC",
    "skills": "power bi"
  },
  {
    "job_id": 958872,
    "job_title": "Data Analyst",
    "salary_year_avg": "111500.0",
    "company_name": "IBM",
    "skills": "sql"
  },
  {
    "job_id": 958872,
    "job_title": "Data Analyst",
    "salary_year_avg": "111500.0",
    "company_name": "IBM",
    "skills": "python"
  },
  {
    "job_id": 958872,
    "job_title": "Data Analyst",
    "salary_year_avg": "111500.0",
    "company_name": "IBM",
    "skills": "azure"
  },
  {
    "job_id": 958872,
    "job_title": "Data Analyst",
    "salary_year_avg": "111500.0",
    "company_name": "IBM",
    "skills": "ibm cloud"
  },
  {
    "job_id": 958872,
    "job_title": "Data Analyst",
    "salary_year_avg": "111500.0",
    "company_name": "IBM",
    "skills": "tableau"
  },
  {
    "job_id": 958872,
    "job_title": "Data Analyst",
    "salary_year_avg": "111500.0",
    "company_name": "IBM",
    "skills": "jira"
  },
  {
    "job_id": 1210470,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Convergenz",
    "skills": "sql"
  },
  {
    "job_id": 1210470,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Convergenz",
    "skills": "r"
  },
  {
    "job_id": 1210470,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Convergenz",
    "skills": "sas"
  },
  {
    "job_id": 1210470,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Convergenz",
    "skills": "tableau"
  },
  {
    "job_id": 1210470,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Convergenz",
    "skills": "power bi"
  },
  {
    "job_id": 1210470,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Convergenz",
    "skills": "sas"
  },
  {
    "job_id": 1814437,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "sql"
  },
  {
    "job_id": 1814437,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "python"
  },
  {
    "job_id": 1814437,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "r"
  },
  {
    "job_id": 1814437,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "tableau"
  },
  {
    "job_id": 1814437,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "power bi"
  },
  {
    "job_id": 1574686,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Insight Global",
    "skills": "sql"
  },
  {
    "job_id": 1574686,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Insight Global",
    "skills": "t-sql"
  },
  {
    "job_id": 1574686,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Insight Global",
    "skills": "sql server"
  },
  {
    "job_id": 1574686,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Insight Global",
    "skills": "azure"
  },
  {
    "job_id": 1574686,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Insight Global",
    "skills": "aws"
  },
  {
    "job_id": 1574686,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Insight Global",
    "skills": "power bi"
  },
  {
    "job_id": 1574686,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Insight Global",
    "skills": "ssis"
  },
  {
    "job_id": 1574686,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Insight Global",
    "skills": "ssrs"
  },
  {
    "job_id": 991817,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "excel"
  },
  {
    "job_id": 1047698,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Insight Global",
    "skills": "sql"
  },
  {
    "job_id": 1047698,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Insight Global",
    "skills": "aws"
  },
  {
    "job_id": 894317,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "sql"
  },
  {
    "job_id": 894317,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "python"
  },
  {
    "job_id": 446319,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "javascript"
  },
  {
    "job_id": 446319,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "looker"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Trinity Solar Careers",
    "skills": "sql"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Trinity Solar Careers",
    "skills": "t-sql"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Trinity Solar Careers",
    "skills": "sql server"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Trinity Solar Careers",
    "skills": "excel"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Trinity Solar Careers",
    "skills": "power bi"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Trinity Solar Careers",
    "skills": "dax"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Trinity Solar Careers",
    "skills": "ssis"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "sql"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "python"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "r"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "sas"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "hadoop"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "excel"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "tableau"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "power bi"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "sas"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "word"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "powerpoint"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "outlook"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "sql"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "python"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "r"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "pandas"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "numpy"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "scikit-learn"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "tableau"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "power bi"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "alteryx"
  },
  {
    "job_id": 800017,
    "job_title": "Data Analyst",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 800017,
    "job_title": "Data Analyst",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 800017,
    "job_title": "Data Analyst",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "snowflake"
  },
  {
    "job_id": 800017,
    "job_title": "Data Analyst",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 800017,
    "job_title": "Data Analyst",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 800017,
    "job_title": "Data Analyst",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "git"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "sql"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "python"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "r"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "aws"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "redshift"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "excel"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "tableau"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "qlik"
  },
  {
    "job_id": 1069248,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Starr And Associates LLC",
    "skills": "sql"
  },
  {
    "job_id": 1069248,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Starr And Associates LLC",
    "skills": "python"
  },
  {
    "job_id": 1069248,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Starr And Associates LLC",
    "skills": "r"
  },
  {
    "job_id": 1069248,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Starr And Associates LLC",
    "skills": "excel"
  },
  {
    "job_id": 1069248,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Starr And Associates LLC",
    "skills": "tableau"
  },
  {
    "job_id": 1069248,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Starr And Associates LLC",
    "skills": "qlik"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "javascript"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "c++"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "snowflake"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "qlik"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "powerpoint"
  },
  {
    "job_id": 949643,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 949643,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 949643,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 523374,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Insight Global",
    "skills": "sql"
  },
  {
    "job_id": 523374,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Insight Global",
    "skills": "javascript"
  },
  {
    "job_id": 523374,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Insight Global",
    "skills": "tableau"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "python"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "bash"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "gcp"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "spark"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "hadoop"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "jenkins"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "flow"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "github"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "jira"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "confluence"
  },
  {
    "job_id": 1277458,
    "job_title": "Data Analyst",
    "salary_year_avg": "102250.0",
    "company_name": "ZipRecruiter",
    "skills": "sql"
  },
  {
    "job_id": 1277458,
    "job_title": "Data Analyst",
    "salary_year_avg": "102250.0",
    "company_name": "ZipRecruiter",
    "skills": "python"
  },
  {
    "job_id": 686507,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 686507,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 686507,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 686507,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "azure"
  },
  {
    "job_id": 1234973,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1234973,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "hadoop"
  },
  {
    "job_id": 1234973,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1234973,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "jira"
  },
  {
    "job_id": 1234973,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "confluence"
  },
  {
    "job_id": 734020,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Govcio LLC",
    "skills": "sql"
  },
  {
    "job_id": 734020,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Govcio LLC",
    "skills": "oracle"
  },
  {
    "job_id": 734020,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Govcio LLC",
    "skills": "atlassian"
  },
  {
    "job_id": 524146,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Hearth",
    "skills": "sql"
  },
  {
    "job_id": 524146,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Hearth",
    "skills": "python"
  },
  {
    "job_id": 524146,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Hearth",
    "skills": "r"
  },
  {
    "job_id": 524146,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Hearth",
    "skills": "tableau"
  },
  {
    "job_id": 524146,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Hearth",
    "skills": "looker"
  },
  {
    "job_id": 736533,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "LHH",
    "skills": "sql"
  },
  {
    "job_id": 736533,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "LHH",
    "skills": "oracle"
  },
  {
    "job_id": 736533,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "LHH",
    "skills": "excel"
  },
  {
    "job_id": 736533,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "LHH",
    "skills": "tableau"
  },
  {
    "job_id": 736533,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "LHH",
    "skills": "sap"
  },
  {
    "job_id": 284410,
    "job_title": "Data Analyst",
    "salary_year_avg": "98750.0",
    "company_name": "Goldbelt, Inc.",
    "skills": "sas"
  },
  {
    "job_id": 284410,
    "job_title": "Data Analyst",
    "salary_year_avg": "98750.0",
    "company_name": "Goldbelt, Inc.",
    "skills": "sas"
  },
  {
    "job_id": 284410,
    "job_title": "Data Analyst",
    "salary_year_avg": "98750.0",
    "company_name": "Goldbelt, Inc.",
    "skills": "flow"
  },
  {
    "job_id": 1791218,
    "job_title": "Data Analyst",
    "salary_year_avg": "95700.0",
    "company_name": "Booz Allen Hamilton",
    "skills": "sql"
  },
  {
    "job_id": 1791218,
    "job_title": "Data Analyst",
    "salary_year_avg": "95700.0",
    "company_name": "Booz Allen Hamilton",
    "skills": "python"
  },
  {
    "job_id": 1791218,
    "job_title": "Data Analyst",
    "salary_year_avg": "95700.0",
    "company_name": "Booz Allen Hamilton",
    "skills": "r"
  },
  {
    "job_id": 1791218,
    "job_title": "Data Analyst",
    "salary_year_avg": "95700.0",
    "company_name": "Booz Allen Hamilton",
    "skills": "tableau"
  },
  {
    "job_id": 1791218,
    "job_title": "Data Analyst",
    "salary_year_avg": "95700.0",
    "company_name": "Booz Allen Hamilton",
    "skills": "power bi"
  },
  {
    "job_id": 1791218,
    "job_title": "Data Analyst",
    "salary_year_avg": "95700.0",
    "company_name": "Booz Allen Hamilton",
    "skills": "qlik"
  },
  {
    "job_id": 1791218,
    "job_title": "Data Analyst",
    "salary_year_avg": "95700.0",
    "company_name": "Booz Allen Hamilton",
    "skills": "powerpoint"
  },
  {
    "job_id": 354407,
    "job_title": "Data Analyst",
    "salary_year_avg": "95329.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "sql"
  },
  {
    "job_id": 354407,
    "job_title": "Data Analyst",
    "salary_year_avg": "95329.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "oracle"
  },
  {
    "job_id": 354407,
    "job_title": "Data Analyst",
    "salary_year_avg": "95329.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "tableau"
  },
  {
    "job_id": 354407,
    "job_title": "Data Analyst",
    "salary_year_avg": "95329.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "power bi"
  },
  {
    "job_id": 1240374,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Insight Global",
    "skills": "sas"
  },
  {
    "job_id": 1240374,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Insight Global",
    "skills": "crystal"
  },
  {
    "job_id": 1240374,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Insight Global",
    "skills": "excel"
  },
  {
    "job_id": 1240374,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Insight Global",
    "skills": "tableau"
  },
  {
    "job_id": 1240374,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Insight Global",
    "skills": "sas"
  },
  {
    "job_id": 1240374,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Insight Global",
    "skills": "qlik"
  },
  {
    "job_id": 78069,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "sql"
  },
  {
    "job_id": 78069,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "python"
  },
  {
    "job_id": 78069,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "r"
  },
  {
    "job_id": 78069,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "excel"
  },
  {
    "job_id": 78069,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "tableau"
  },
  {
    "job_id": 78069,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "looker"
  },
  {
    "job_id": 78069,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "sheets"
  },
  {
    "job_id": 1467775,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Insight Global",
    "skills": "tableau"
  },
  {
    "job_id": 796604,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "sql"
  },
  {
    "job_id": 796604,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "python"
  },
  {
    "job_id": 796604,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "r"
  },
  {
    "job_id": 796604,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "excel"
  },
  {
    "job_id": 796604,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "tableau"
  },
  {
    "job_id": 796604,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "looker"
  },
  {
    "job_id": 796604,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "sheets"
  },
  {
    "job_id": 204667,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "sql"
  },
  {
    "job_id": 204667,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "oracle"
  },
  {
    "job_id": 204667,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "tableau"
  },
  {
    "job_id": 204667,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "power bi"
  },
  {
    "job_id": 542425,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Jobot",
    "skills": "power bi"
  },
  {
    "job_id": 542425,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Jobot",
    "skills": "dax"
  },
  {
    "job_id": 542425,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Jobot",
    "skills": "microstrategy"
  },
  {
    "job_id": 1127339,
    "job_title": "Data Analyst",
    "salary_year_avg": "94871.5",
    "company_name": "Protect Democracy",
    "skills": "python"
  },
  {
    "job_id": 1127339,
    "job_title": "Data Analyst",
    "salary_year_avg": "94871.5",
    "company_name": "Protect Democracy",
    "skills": "r"
  },
  {
    "job_id": 1178655,
    "job_title": "Data Analyst",
    "salary_year_avg": "91000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1178655,
    "job_title": "Data Analyst",
    "salary_year_avg": "91000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1178655,
    "job_title": "Data Analyst",
    "salary_year_avg": "91000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1178655,
    "job_title": "Data Analyst",
    "salary_year_avg": "91000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "powerpoint"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "hackajob",
    "skills": "sql"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "hackajob",
    "skills": "python"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "hackajob",
    "skills": "java"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "hackajob",
    "skills": "r"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "hackajob",
    "skills": "c++"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "hackajob",
    "skills": "c#"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "hackajob",
    "skills": "matlab"
  },
  {
    "job_id": 419649,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "sql"
  },
  {
    "job_id": 419649,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "python"
  },
  {
    "job_id": 258262,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "sql"
  },
  {
    "job_id": 258262,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "bigquery"
  },
  {
    "job_id": 258262,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "tableau"
  },
  {
    "job_id": 258262,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "ssrs"
  },
  {
    "job_id": 1244897,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "sql"
  },
  {
    "job_id": 1244897,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "bigquery"
  },
  {
    "job_id": 1244897,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "tableau"
  },
  {
    "job_id": 1244897,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "ssrs"
  },
  {
    "job_id": 714930,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Motion Recruitment",
    "skills": "sql"
  },
  {
    "job_id": 714930,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Motion Recruitment",
    "skills": "python"
  },
  {
    "job_id": 714930,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Motion Recruitment",
    "skills": "r"
  },
  {
    "job_id": 714930,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Motion Recruitment",
    "skills": "tableau"
  },
  {
    "job_id": 714930,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Motion Recruitment",
    "skills": "looker"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "sql"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "python"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "java"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "shell"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "javascript"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "html"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "t-sql"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "oracle"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "unix"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "excel"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "tableau"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "power bi"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "visio"
  },
  {
    "job_id": 293077,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "excel"
  },
  {
    "job_id": 293077,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "powerpoint"
  },
  {
    "job_id": 293077,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "microsoft teams"
  },
  {
    "job_id": 354417,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "EcoCart",
    "skills": "sql"
  },
  {
    "job_id": 354417,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "EcoCart",
    "skills": "python"
  },
  {
    "job_id": 354417,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "EcoCart",
    "skills": "aws"
  },
  {
    "job_id": 354417,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "EcoCart",
    "skills": "redshift"
  },
  {
    "job_id": 354417,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "EcoCart",
    "skills": "tableau"
  },
  {
    "job_id": 354417,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "EcoCart",
    "skills": "power bi"
  },
  {
    "job_id": 354417,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "EcoCart",
    "skills": "clickup"
  },
  {
    "job_id": 1647550,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "sql"
  },
  {
    "job_id": 1647550,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "sas"
  },
  {
    "job_id": 1647550,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "vb.net"
  },
  {
    "job_id": 1647550,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "oracle"
  },
  {
    "job_id": 1647550,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "sas"
  },
  {
    "job_id": 196796,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Angi",
    "skills": "sql"
  },
  {
    "job_id": 196796,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Angi",
    "skills": "python"
  },
  {
    "job_id": 196796,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Angi",
    "skills": "r"
  },
  {
    "job_id": 196796,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Angi",
    "skills": "excel"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "javascript"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "word"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "sharepoint"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "powerpoint"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "jira"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "confluence"
  },
  {
    "job_id": 680315,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Gotely",
    "skills": "sql"
  },
  {
    "job_id": 680315,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Gotely",
    "skills": "python"
  },
  {
    "job_id": 680315,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Gotely",
    "skills": "r"
  },
  {
    "job_id": 680315,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Gotely",
    "skills": "tableau"
  },
  {
    "job_id": 680315,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Gotely",
    "skills": "power bi"
  },
  {
    "job_id": 915649,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 915649,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 915649,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 1489901,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Predictive Data Lab",
    "skills": "sql"
  },
  {
    "job_id": 1489901,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Predictive Data Lab",
    "skills": "azure"
  },
  {
    "job_id": 30317,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Insight Global",
    "skills": "sql"
  },
  {
    "job_id": 30317,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Insight Global",
    "skills": "c#"
  },
  {
    "job_id": 30317,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Insight Global",
    "skills": "sql server"
  },
  {
    "job_id": 30317,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Insight Global",
    "skills": "excel"
  },
  {
    "job_id": 30317,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Insight Global",
    "skills": "flow"
  },
  {
    "job_id": 1640252,
    "job_title": "Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 1640252,
    "job_title": "Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 384007,
    "job_title": "Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Motion Recruitment",
    "skills": "sql"
  },
  {
    "job_id": 384007,
    "job_title": "Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Motion Recruitment",
    "skills": "mysql"
  },
  {
    "job_id": 384007,
    "job_title": "Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Motion Recruitment",
    "skills": "sql server"
  },
  {
    "job_id": 384007,
    "job_title": "Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Motion Recruitment",
    "skills": "azure"
  },
  {
    "job_id": 384007,
    "job_title": "Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Motion Recruitment",
    "skills": "jira"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "javascript"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "spss"
  },
  {
    "job_id": 547661,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 547661,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "jenkins"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "javascript"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "spss"
  },
  {
    "job_id": 496663,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "windows"
  },
  {
    "job_id": 496663,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sharepoint"
  },
  {
    "job_id": 496663,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "webex"
  },
  {
    "job_id": 1551217,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1551217,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 1551217,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "javascript"
  },
  {
    "job_id": 1551217,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1551217,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1551217,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 1551217,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 1551217,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "spss"
  },
  {
    "job_id": 1558833,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1558833,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1558833,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 894665,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 894665,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 894665,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 894665,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "flow"
  },
  {
    "job_id": 23358,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 23358,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "azure"
  },
  {
    "job_id": 23358,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 23358,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "dax"
  },
  {
    "job_id": 1683817,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "arch"
  },
  {
    "job_id": 1683817,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "word"
  },
  {
    "job_id": 1632454,
    "job_title": "Data Analyst",
    "salary_year_avg": "83500.0",
    "company_name": "Insight Global",
    "skills": "sql"
  },
  {
    "job_id": 1632454,
    "job_title": "Data Analyst",
    "salary_year_avg": "83500.0",
    "company_name": "Insight Global",
    "skills": "excel"
  },
  {
    "job_id": 1366794,
    "job_title": "Data Analyst",
    "salary_year_avg": "83500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 1366794,
    "job_title": "Data Analyst",
    "salary_year_avg": "83500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 309335,
    "job_title": "Data Analyst",
    "salary_year_avg": "83500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 1153109,
    "job_title": "Data Analyst",
    "salary_year_avg": "83500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "javascript"
  },
  {
    "job_id": 1153109,
    "job_title": "Data Analyst",
    "salary_year_avg": "83500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "node.js"
  },
  {
    "job_id": 604141,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Alameda Health Consortium/Community Health Center Network",
    "skills": "sql"
  },
  {
    "job_id": 604141,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Alameda Health Consortium/Community Health Center Network",
    "skills": "sas"
  },
  {
    "job_id": 604141,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Alameda Health Consortium/Community Health Center Network",
    "skills": "excel"
  },
  {
    "job_id": 604141,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Alameda Health Consortium/Community Health Center Network",
    "skills": "tableau"
  },
  {
    "job_id": 604141,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Alameda Health Consortium/Community Health Center Network",
    "skills": "sas"
  },
  {
    "job_id": 1656466,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1656466,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1656466,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "redshift"
  },
  {
    "job_id": 1656466,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "snowflake"
  },
  {
    "job_id": 1656466,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "pandas"
  },
  {
    "job_id": 1656466,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "matplotlib"
  },
  {
    "job_id": 1656466,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "qlik"
  },
  {
    "job_id": 1715658,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 1715658,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1715658,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 1715658,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "spss"
  },
  {
    "job_id": 103900,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 103900,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 103900,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 103900,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 95123,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 95123,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 95123,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sheets"
  },
  {
    "job_id": 672574,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Emotive",
    "skills": "sql"
  },
  {
    "job_id": 672574,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Emotive",
    "skills": "python"
  },
  {
    "job_id": 672574,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Emotive",
    "skills": "tableau"
  },
  {
    "job_id": 672574,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Emotive",
    "skills": "looker"
  },
  {
    "job_id": 1115037,
    "job_title": "Data Analyst",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1115037,
    "job_title": "Data Analyst",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1115037,
    "job_title": "Data Analyst",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 1296038,
    "job_title": "Data Analyst",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1296038,
    "job_title": "Data Analyst",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1296038,
    "job_title": "Data Analyst",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 1296038,
    "job_title": "Data Analyst",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1296038,
    "job_title": "Data Analyst",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 980665,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 980665,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 980665,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 413083,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 413083,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 413083,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 143947,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 143947,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 143947,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "scala"
  },
  {
    "job_id": 143947,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 143947,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "matlab"
  },
  {
    "job_id": 143947,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 670376,
    "job_title": "Data Analyst",
    "salary_year_avg": "80500.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "sql"
  },
  {
    "job_id": 670376,
    "job_title": "Data Analyst",
    "salary_year_avg": "80500.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "excel"
  },
  {
    "job_id": 690454,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Gravy Analytics",
    "skills": "sql"
  },
  {
    "job_id": 690454,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Gravy Analytics",
    "skills": "python"
  },
  {
    "job_id": 690454,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Gravy Analytics",
    "skills": "r"
  },
  {
    "job_id": 690454,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Gravy Analytics",
    "skills": "javascript"
  },
  {
    "job_id": 690454,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Gravy Analytics",
    "skills": "aws"
  },
  {
    "job_id": 690454,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Gravy Analytics",
    "skills": "snowflake"
  },
  {
    "job_id": 690454,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Gravy Analytics",
    "skills": "excel"
  },
  {
    "job_id": 690454,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Gravy Analytics",
    "skills": "tableau"
  },
  {
    "job_id": 319413,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "excel"
  },
  {
    "job_id": 319413,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "word"
  },
  {
    "job_id": 319413,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "powerpoint"
  },
  {
    "job_id": 319413,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "outlook"
  },
  {
    "job_id": 319413,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "ms access"
  },
  {
    "job_id": 6083,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "EUCON AMERICAS LLC",
    "skills": "sql"
  },
  {
    "job_id": 6083,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "EUCON AMERICAS LLC",
    "skills": "sas"
  },
  {
    "job_id": 6083,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "EUCON AMERICAS LLC",
    "skills": "excel"
  },
  {
    "job_id": 6083,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "EUCON AMERICAS LLC",
    "skills": "sas"
  },
  {
    "job_id": 6083,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "EUCON AMERICAS LLC",
    "skills": "powerpoint"
  },
  {
    "job_id": 6083,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "EUCON AMERICAS LLC",
    "skills": "spss"
  },
  {
    "job_id": 483152,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "New World Now LLC",
    "skills": "sql"
  },
  {
    "job_id": 940759,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 940759,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 940759,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sheets"
  },
  {
    "job_id": 1354750,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "sql"
  },
  {
    "job_id": 1354750,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "python"
  },
  {
    "job_id": 1354750,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "r"
  },
  {
    "job_id": 1354750,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "excel"
  },
  {
    "job_id": 1354750,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "tableau"
  },
  {
    "job_id": 1354750,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "power bi"
  },
  {
    "job_id": 1354750,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "sharepoint"
  },
  {
    "job_id": 1354750,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "jira"
  },
  {
    "job_id": 1354750,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "confluence"
  },
  {
    "job_id": 1236616,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Peraton",
    "skills": "sql"
  },
  {
    "job_id": 1236616,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Peraton",
    "skills": "python"
  },
  {
    "job_id": 1236616,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Peraton",
    "skills": "sas"
  },
  {
    "job_id": 1236616,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Peraton",
    "skills": "aws"
  },
  {
    "job_id": 1236616,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Peraton",
    "skills": "sas"
  },
  {
    "job_id": 1236616,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Peraton",
    "skills": "qlik"
  },
  {
    "job_id": 1333002,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1333002,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1333002,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "company_name": "Visual Connections, LLC",
    "skills": "sql"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "company_name": "Visual Connections, LLC",
    "skills": "python"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "company_name": "Visual Connections, LLC",
    "skills": "r"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "company_name": "Visual Connections, LLC",
    "skills": "sas"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "company_name": "Visual Connections, LLC",
    "skills": "excel"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "company_name": "Visual Connections, LLC",
    "skills": "sas"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "company_name": "Visual Connections, LLC",
    "skills": "word"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "company_name": "Visual Connections, LLC",
    "skills": "powerpoint"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "company_name": "Visual Connections, LLC",
    "skills": "cognos"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "company_name": "Visual Connections, LLC",
    "skills": "webex"
  },
  {
    "job_id": 1745486,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1745486,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 502625,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Simplex.",
    "skills": "sql"
  },
  {
    "job_id": 502625,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Simplex.",
    "skills": "python"
  },
  {
    "job_id": 502625,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Simplex.",
    "skills": "sqlite"
  },
  {
    "job_id": 502625,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Simplex.",
    "skills": "azure"
  },
  {
    "job_id": 502625,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Simplex.",
    "skills": "snowflake"
  },
  {
    "job_id": 1236681,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Simplex",
    "skills": "sql"
  },
  {
    "job_id": 1236681,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Simplex",
    "skills": "python"
  },
  {
    "job_id": 1236681,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Simplex",
    "skills": "sqlite"
  },
  {
    "job_id": 1236681,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Simplex",
    "skills": "azure"
  },
  {
    "job_id": 1236681,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Simplex",
    "skills": "snowflake"
  },
  {
    "job_id": 435726,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "JDC",
    "skills": "excel"
  },
  {
    "job_id": 397963,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Coders Data",
    "skills": "sql"
  },
  {
    "job_id": 397963,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Coders Data",
    "skills": "python"
  },
  {
    "job_id": 397963,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Coders Data",
    "skills": "mysql"
  },
  {
    "job_id": 397963,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Coders Data",
    "skills": "excel"
  },
  {
    "job_id": 397963,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Coders Data",
    "skills": "tableau"
  },
  {
    "job_id": 411881,
    "job_title": "Data Analyst",
    "salary_year_avg": "76842.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sql"
  },
  {
    "job_id": 411881,
    "job_title": "Data Analyst",
    "salary_year_avg": "76842.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sas"
  },
  {
    "job_id": 411881,
    "job_title": "Data Analyst",
    "salary_year_avg": "76842.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "excel"
  },
  {
    "job_id": 411881,
    "job_title": "Data Analyst",
    "salary_year_avg": "76842.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "tableau"
  },
  {
    "job_id": 411881,
    "job_title": "Data Analyst",
    "salary_year_avg": "76842.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sas"
  },
  {
    "job_id": 411881,
    "job_title": "Data Analyst",
    "salary_year_avg": "76842.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "alteryx"
  },
  {
    "job_id": 1500082,
    "job_title": "Data Analyst",
    "salary_year_avg": "76783.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sql"
  },
  {
    "job_id": 558598,
    "job_title": "Data Analyst",
    "salary_year_avg": "76500.0",
    "company_name": "Invitae",
    "skills": "sql"
  },
  {
    "job_id": 558598,
    "job_title": "Data Analyst",
    "salary_year_avg": "76500.0",
    "company_name": "Invitae",
    "skills": "spring"
  },
  {
    "job_id": 558598,
    "job_title": "Data Analyst",
    "salary_year_avg": "76500.0",
    "company_name": "Invitae",
    "skills": "excel"
  },
  {
    "job_id": 558598,
    "job_title": "Data Analyst",
    "salary_year_avg": "76500.0",
    "company_name": "Invitae",
    "skills": "tableau"
  },
  {
    "job_id": 558598,
    "job_title": "Data Analyst",
    "salary_year_avg": "76500.0",
    "company_name": "Invitae",
    "skills": "looker"
  },
  {
    "job_id": 558598,
    "job_title": "Data Analyst",
    "salary_year_avg": "76500.0",
    "company_name": "Invitae",
    "skills": "sheets"
  },
  {
    "job_id": 164596,
    "job_title": "Data Analyst",
    "salary_year_avg": "76007.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sql"
  },
  {
    "job_id": 164596,
    "job_title": "Data Analyst",
    "salary_year_avg": "76007.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "python"
  },
  {
    "job_id": 164596,
    "job_title": "Data Analyst",
    "salary_year_avg": "76007.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "r"
  },
  {
    "job_id": 164596,
    "job_title": "Data Analyst",
    "salary_year_avg": "76007.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sas"
  },
  {
    "job_id": 164596,
    "job_title": "Data Analyst",
    "salary_year_avg": "76007.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "matplotlib"
  },
  {
    "job_id": 164596,
    "job_title": "Data Analyst",
    "salary_year_avg": "76007.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "tableau"
  },
  {
    "job_id": 164596,
    "job_title": "Data Analyst",
    "salary_year_avg": "76007.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "power bi"
  },
  {
    "job_id": 164596,
    "job_title": "Data Analyst",
    "salary_year_avg": "76007.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sas"
  },
  {
    "job_id": 959874,
    "job_title": "Data Analyst",
    "salary_year_avg": "76007.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "excel"
  },
  {
    "job_id": 1259256,
    "job_title": "Data Analyst",
    "salary_year_avg": "76000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "sql"
  },
  {
    "job_id": 1259256,
    "job_title": "Data Analyst",
    "salary_year_avg": "76000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "excel"
  },
  {
    "job_id": 371461,
    "job_title": "Data Analyst",
    "salary_year_avg": "75566.0",
    "company_name": "Get It Recruit - Marketing",
    "skills": "sql"
  },
  {
    "job_id": 371461,
    "job_title": "Data Analyst",
    "salary_year_avg": "75566.0",
    "company_name": "Get It Recruit - Marketing",
    "skills": "tableau"
  },
  {
    "job_id": 371461,
    "job_title": "Data Analyst",
    "salary_year_avg": "75566.0",
    "company_name": "Get It Recruit - Marketing",
    "skills": "power bi"
  },
  {
    "job_id": 371461,
    "job_title": "Data Analyst",
    "salary_year_avg": "75566.0",
    "company_name": "Get It Recruit - Marketing",
    "skills": "looker"
  },
  {
    "job_id": 1513802,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "In Technology Group Inc (US)",
    "skills": "sql"
  },
  {
    "job_id": 1513802,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "In Technology Group Inc (US)",
    "skills": "python"
  },
  {
    "job_id": 1513802,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "In Technology Group Inc (US)",
    "skills": "snowflake"
  },
  {
    "job_id": 1513802,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "In Technology Group Inc (US)",
    "skills": "excel"
  },
  {
    "job_id": 1513802,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "In Technology Group Inc (US)",
    "skills": "tableau"
  },
  {
    "job_id": 1513802,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "In Technology Group Inc (US)",
    "skills": "power bi"
  },
  {
    "job_id": 479282,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "hackajob",
    "skills": "sql"
  },
  {
    "job_id": 479282,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "hackajob",
    "skills": "python"
  },
  {
    "job_id": 479282,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "hackajob",
    "skills": "java"
  },
  {
    "job_id": 479282,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "hackajob",
    "skills": "r"
  },
  {
    "job_id": 479282,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "hackajob",
    "skills": "c++"
  },
  {
    "job_id": 479282,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "hackajob",
    "skills": "c#"
  },
  {
    "job_id": 479282,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "hackajob",
    "skills": "matlab"
  },
  {
    "job_id": 240037,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Get It Recruit - Hospitality",
    "skills": "excel"
  },
  {
    "job_id": 240037,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Get It Recruit - Hospitality",
    "skills": "powerpoint"
  },
  {
    "job_id": 341807,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 341807,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "powerpoint"
  },
  {
    "job_id": 1726747,
    "job_title": "Data Analyst",
    "salary_year_avg": "74000.0",
    "company_name": "Applied Engineering Management Corporation",
    "skills": "python"
  },
  {
    "job_id": 1726747,
    "job_title": "Data Analyst",
    "salary_year_avg": "74000.0",
    "company_name": "Applied Engineering Management Corporation",
    "skills": "r"
  },
  {
    "job_id": 1726747,
    "job_title": "Data Analyst",
    "salary_year_avg": "74000.0",
    "company_name": "Applied Engineering Management Corporation",
    "skills": "sas"
  },
  {
    "job_id": 1726747,
    "job_title": "Data Analyst",
    "salary_year_avg": "74000.0",
    "company_name": "Applied Engineering Management Corporation",
    "skills": "excel"
  },
  {
    "job_id": 1726747,
    "job_title": "Data Analyst",
    "salary_year_avg": "74000.0",
    "company_name": "Applied Engineering Management Corporation",
    "skills": "sas"
  },
  {
    "job_id": 1262610,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Insight Global",
    "skills": "sql"
  },
  {
    "job_id": 1262610,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Insight Global",
    "skills": "excel"
  },
  {
    "job_id": 1684855,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Every Body Texas",
    "skills": "sql"
  },
  {
    "job_id": 1684855,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Every Body Texas",
    "skills": "r"
  },
  {
    "job_id": 1684855,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Every Body Texas",
    "skills": "azure"
  },
  {
    "job_id": 1684855,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Every Body Texas",
    "skills": "power bi"
  },
  {
    "job_id": 1684855,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Every Body Texas",
    "skills": "spss"
  },
  {
    "job_id": 93604,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Bluesight",
    "skills": "sql"
  },
  {
    "job_id": 93604,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Bluesight",
    "skills": "python"
  },
  {
    "job_id": 93604,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Bluesight",
    "skills": "r"
  },
  {
    "job_id": 93604,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Bluesight",
    "skills": "ruby"
  },
  {
    "job_id": 93604,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Bluesight",
    "skills": "ruby"
  },
  {
    "job_id": 93604,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Bluesight",
    "skills": "excel"
  },
  {
    "job_id": 93604,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Bluesight",
    "skills": "sheets"
  },
  {
    "job_id": 1698696,
    "job_title": "Data Analyst",
    "salary_year_avg": "71850.0",
    "company_name": "CVS Health",
    "skills": "sql"
  },
  {
    "job_id": 1698696,
    "job_title": "Data Analyst",
    "salary_year_avg": "71850.0",
    "company_name": "CVS Health",
    "skills": "python"
  },
  {
    "job_id": 1698696,
    "job_title": "Data Analyst",
    "salary_year_avg": "71850.0",
    "company_name": "CVS Health",
    "skills": "r"
  },
  {
    "job_id": 1698696,
    "job_title": "Data Analyst",
    "salary_year_avg": "71850.0",
    "company_name": "CVS Health",
    "skills": "phoenix"
  },
  {
    "job_id": 1698696,
    "job_title": "Data Analyst",
    "salary_year_avg": "71850.0",
    "company_name": "CVS Health",
    "skills": "tableau"
  },
  {
    "job_id": 361990,
    "job_title": "Data Analyst",
    "salary_year_avg": "71850.0",
    "company_name": "CVS Health",
    "skills": "excel"
  },
  {
    "job_id": 361990,
    "job_title": "Data Analyst",
    "salary_year_avg": "71850.0",
    "company_name": "CVS Health",
    "skills": "tableau"
  },
  {
    "job_id": 361990,
    "job_title": "Data Analyst",
    "salary_year_avg": "71850.0",
    "company_name": "CVS Health",
    "skills": "power bi"
  },
  {
    "job_id": 361990,
    "job_title": "Data Analyst",
    "salary_year_avg": "71850.0",
    "company_name": "CVS Health",
    "skills": "alteryx"
  },
  {
    "job_id": 330595,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Ohio Shared Information Services Inc",
    "skills": "sql"
  },
  {
    "job_id": 330595,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Ohio Shared Information Services Inc",
    "skills": "t-sql"
  },
  {
    "job_id": 330595,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Ohio Shared Information Services Inc",
    "skills": "crystal"
  },
  {
    "job_id": 330595,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Ohio Shared Information Services Inc",
    "skills": "sql server"
  },
  {
    "job_id": 330595,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Ohio Shared Information Services Inc",
    "skills": "azure"
  },
  {
    "job_id": 330595,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Ohio Shared Information Services Inc",
    "skills": "power bi"
  },
  {
    "job_id": 330595,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Ohio Shared Information Services Inc",
    "skills": "git"
  },
  {
    "job_id": 330595,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Ohio Shared Information Services Inc",
    "skills": "flow"
  },
  {
    "job_id": 723713,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Amplified Sourcing",
    "skills": "sql"
  },
  {
    "job_id": 723713,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Amplified Sourcing",
    "skills": "python"
  },
  {
    "job_id": 723713,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Amplified Sourcing",
    "skills": "r"
  },
  {
    "job_id": 723713,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Amplified Sourcing",
    "skills": "sas"
  },
  {
    "job_id": 723713,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Amplified Sourcing",
    "skills": "sas"
  },
  {
    "job_id": 134039,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Class Action Capital Recovery LLC",
    "skills": "sql"
  },
  {
    "job_id": 134039,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Class Action Capital Recovery LLC",
    "skills": "excel"
  },
  {
    "job_id": 1473524,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Partnership Employment",
    "skills": "sql"
  },
  {
    "job_id": 1473524,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Partnership Employment",
    "skills": "redshift"
  },
  {
    "job_id": 1473524,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Partnership Employment",
    "skills": "excel"
  },
  {
    "job_id": 1527329,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Zelo Digital Recruitment",
    "skills": "sql"
  },
  {
    "job_id": 1527329,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Zelo Digital Recruitment",
    "skills": "python"
  },
  {
    "job_id": 1527329,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Zelo Digital Recruitment",
    "skills": "r"
  },
  {
    "job_id": 1527329,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Zelo Digital Recruitment",
    "skills": "tableau"
  },
  {
    "job_id": 1527329,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Zelo Digital Recruitment",
    "skills": "power bi"
  },
  {
    "job_id": 442024,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Coda Search│Staffing",
    "skills": "sql"
  },
  {
    "job_id": 442024,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Coda Search│Staffing",
    "skills": "python"
  },
  {
    "job_id": 442024,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Coda Search│Staffing",
    "skills": "r"
  },
  {
    "job_id": 442024,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Coda Search│Staffing",
    "skills": "sas"
  },
  {
    "job_id": 442024,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Coda Search│Staffing",
    "skills": "matplotlib"
  },
  {
    "job_id": 442024,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Coda Search│Staffing",
    "skills": "plotly"
  },
  {
    "job_id": 442024,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Coda Search│Staffing",
    "skills": "seaborn"
  },
  {
    "job_id": 442024,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Coda Search│Staffing",
    "skills": "sas"
  },
  {
    "job_id": 442024,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Coda Search│Staffing",
    "skills": "spss"
  },
  {
    "job_id": 38696,
    "job_title": "Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "Insight Global",
    "skills": "colocation"
  },
  {
    "job_id": 1400357,
    "job_title": "Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "AllianceChicago",
    "skills": "sql"
  },
  {
    "job_id": 1400357,
    "job_title": "Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "AllianceChicago",
    "skills": "python"
  },
  {
    "job_id": 1400357,
    "job_title": "Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "AllianceChicago",
    "skills": "c#"
  },
  {
    "job_id": 1400357,
    "job_title": "Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "AllianceChicago",
    "skills": "sass"
  },
  {
    "job_id": 1400357,
    "job_title": "Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "AllianceChicago",
    "skills": "sql server"
  },
  {
    "job_id": 1400357,
    "job_title": "Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "AllianceChicago",
    "skills": "azure"
  },
  {
    "job_id": 1400357,
    "job_title": "Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "AllianceChicago",
    "skills": "power bi"
  },
  {
    "job_id": 1400357,
    "job_title": "Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "AllianceChicago",
    "skills": "ssis"
  },
  {
    "job_id": 1400357,
    "job_title": "Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "AllianceChicago",
    "skills": "ssrs"
  },
  {
    "job_id": 1400357,
    "job_title": "Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "AllianceChicago",
    "skills": "flow"
  },
  {
    "job_id": 1400357,
    "job_title": "Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "AllianceChicago",
    "skills": "terminal"
  },
  {
    "job_id": 1812494,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Bright Power",
    "skills": "sql"
  },
  {
    "job_id": 1812494,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Bright Power",
    "skills": "python"
  },
  {
    "job_id": 1812494,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Bright Power",
    "skills": "mysql"
  },
  {
    "job_id": 1812494,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Bright Power",
    "skills": "excel"
  },
  {
    "job_id": 1812494,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Bright Power",
    "skills": "tableau"
  },
  {
    "job_id": 1812494,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Bright Power",
    "skills": "flow"
  },
  {
    "job_id": 1812494,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Bright Power",
    "skills": "jira"
  },
  {
    "job_id": 450752,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Mothership Strategies, LLC",
    "skills": "sql"
  },
  {
    "job_id": 450752,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Mothership Strategies, LLC",
    "skills": "python"
  },
  {
    "job_id": 450752,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Mothership Strategies, LLC",
    "skills": "r"
  },
  {
    "job_id": 450752,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Mothership Strategies, LLC",
    "skills": "spark"
  },
  {
    "job_id": 1463732,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Insight Global",
    "skills": "excel"
  },
  {
    "job_id": 1596146,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Insight Global",
    "skills": "sql"
  },
  {
    "job_id": 1596146,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Insight Global",
    "skills": "oracle"
  },
  {
    "job_id": 1596146,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Insight Global",
    "skills": "excel"
  },
  {
    "job_id": 1596146,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Insight Global",
    "skills": "tableau"
  },
  {
    "job_id": 1596146,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Insight Global",
    "skills": "power bi"
  },
  {
    "job_id": 1596146,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Insight Global",
    "skills": "alteryx"
  },
  {
    "job_id": 179983,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "24 Seven Talent",
    "skills": "sql"
  },
  {
    "job_id": 179983,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "24 Seven Talent",
    "skills": "python"
  },
  {
    "job_id": 179983,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "24 Seven Talent",
    "skills": "r"
  },
  {
    "job_id": 179983,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "24 Seven Talent",
    "skills": "bigquery"
  },
  {
    "job_id": 179983,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "24 Seven Talent",
    "skills": "airflow"
  },
  {
    "job_id": 179983,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "24 Seven Talent",
    "skills": "excel"
  },
  {
    "job_id": 179983,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "24 Seven Talent",
    "skills": "git"
  },
  {
    "job_id": 43776,
    "job_title": "Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "Kaye/Bassman International",
    "skills": "sql"
  },
  {
    "job_id": 43776,
    "job_title": "Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "Kaye/Bassman International",
    "skills": "excel"
  },
  {
    "job_id": 43776,
    "job_title": "Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "Kaye/Bassman International",
    "skills": "sheets"
  },
  {
    "job_id": 43776,
    "job_title": "Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "Kaye/Bassman International",
    "skills": "github"
  },
  {
    "job_id": 43776,
    "job_title": "Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "Kaye/Bassman International",
    "skills": "smartsheet"
  },
  {
    "job_id": 215071,
    "job_title": "Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "OZ",
    "skills": "sql"
  },
  {
    "job_id": 215071,
    "job_title": "Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "OZ",
    "skills": "python"
  },
  {
    "job_id": 215071,
    "job_title": "Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "OZ",
    "skills": "bash"
  },
  {
    "job_id": 215071,
    "job_title": "Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "OZ",
    "skills": "aws"
  },
  {
    "job_id": 215071,
    "job_title": "Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "OZ",
    "skills": "redshift"
  },
  {
    "job_id": 215071,
    "job_title": "Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "OZ",
    "skills": "spark"
  },
  {
    "job_id": 286007,
    "job_title": "Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sheets"
  },
  {
    "job_id": 212308,
    "job_title": "Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "El Buen Samaritano",
    "skills": "sql"
  },
  {
    "job_id": 212308,
    "job_title": "Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "El Buen Samaritano",
    "skills": "t-sql"
  },
  {
    "job_id": 212308,
    "job_title": "Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "El Buen Samaritano",
    "skills": "mysql"
  },
  {
    "job_id": 212308,
    "job_title": "Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "El Buen Samaritano",
    "skills": "excel"
  },
  {
    "job_id": 212308,
    "job_title": "Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "El Buen Samaritano",
    "skills": "tableau"
  },
  {
    "job_id": 212308,
    "job_title": "Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "El Buen Samaritano",
    "skills": "power bi"
  },
  {
    "job_id": 212308,
    "job_title": "Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "El Buen Samaritano",
    "skills": "spss"
  },
  {
    "job_id": 862094,
    "job_title": "Data Analyst",
    "salary_year_avg": "52500.0",
    "company_name": "Kaye/Bassman International",
    "skills": "sql"
  },
  {
    "job_id": 862094,
    "job_title": "Data Analyst",
    "salary_year_avg": "52500.0",
    "company_name": "Kaye/Bassman International",
    "skills": "excel"
  },
  {
    "job_id": 862094,
    "job_title": "Data Analyst",
    "salary_year_avg": "52500.0",
    "company_name": "Kaye/Bassman International",
    "skills": "sheets"
  },
  {
    "job_id": 862094,
    "job_title": "Data Analyst",
    "salary_year_avg": "52500.0",
    "company_name": "Kaye/Bassman International",
    "skills": "smartsheet"
  },
  {
    "job_id": 1049427,
    "job_title": "Data Analyst",
    "salary_year_avg": "52000.0",
    "company_name": "Spark451 Inc.",
    "skills": "sql"
  },
  {
    "job_id": 1049427,
    "job_title": "Data Analyst",
    "salary_year_avg": "52000.0",
    "company_name": "Spark451 Inc.",
    "skills": "mongodb"
  },
  {
    "job_id": 1049427,
    "job_title": "Data Analyst",
    "salary_year_avg": "52000.0",
    "company_name": "Spark451 Inc.",
    "skills": "mongodb"
  },
  {
    "job_id": 1049427,
    "job_title": "Data Analyst",
    "salary_year_avg": "52000.0",
    "company_name": "Spark451 Inc.",
    "skills": "tableau"
  },
  {
    "job_id": 1049427,
    "job_title": "Data Analyst",
    "salary_year_avg": "52000.0",
    "company_name": "Spark451 Inc.",
    "skills": "word"
  },
  {
    "job_id": 1049427,
    "job_title": "Data Analyst",
    "salary_year_avg": "52000.0",
    "company_name": "Spark451 Inc.",
    "skills": "powerpoint"
  },
  {
    "job_id": 1278164,
    "job_title": "Data Analyst",
    "salary_year_avg": "50000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "python"
  },
  {
    "job_id": 1278164,
    "job_title": "Data Analyst",
    "salary_year_avg": "50000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "r"
  },
  {
    "job_id": 1278164,
    "job_title": "Data Analyst",
    "salary_year_avg": "50000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "excel"
  },
  {
    "job_id": 1278164,
    "job_title": "Data Analyst",
    "salary_year_avg": "50000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "tableau"
  },
  {
    "job_id": 1278164,
    "job_title": "Data Analyst",
    "salary_year_avg": "50000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "power bi"
  },
  {
    "job_id": 1619146,
    "job_title": "Data Analyst",
    "salary_year_avg": "46500.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "sql"
  },
  {
    "job_id": 1619146,
    "job_title": "Data Analyst",
    "salary_year_avg": "46500.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "sas"
  },
  {
    "job_id": 1619146,
    "job_title": "Data Analyst",
    "salary_year_avg": "46500.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "oracle"
  },
  {
    "job_id": 1619146,
    "job_title": "Data Analyst",
    "salary_year_avg": "46500.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "excel"
  },
  {
    "job_id": 1619146,
    "job_title": "Data Analyst",
    "salary_year_avg": "46500.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "sas"
  },
  {
    "job_id": 1619146,
    "job_title": "Data Analyst",
    "salary_year_avg": "46500.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "sharepoint"
  },
  {
    "job_id": 1178688,
    "job_title": "Data Analyst",
    "salary_year_avg": "35000.0",
    "company_name": "Jobmatchingpartner Ltd",
    "skills": "sql"
  },
  {
    "job_id": 1178688,
    "job_title": "Data Analyst",
    "salary_year_avg": "35000.0",
    "company_name": "Jobmatchingpartner Ltd",
    "skills": "python"
  },
  {
    "job_id": 1178688,
    "job_title": "Data Analyst",
    "salary_year_avg": "35000.0",
    "company_name": "Jobmatchingpartner Ltd",
    "skills": "r"
  },
  {
    "job_id": 1178688,
    "job_title": "Data Analyst",
    "salary_year_avg": "35000.0",
    "company_name": "Jobmatchingpartner Ltd",
    "skills": "spark"
  },
  {
    "job_id": 1178688,
    "job_title": "Data Analyst",
    "salary_year_avg": "35000.0",
    "company_name": "Jobmatchingpartner Ltd",
    "skills": "hadoop"
  },
  {
    "job_id": 1178688,
    "job_title": "Data Analyst",
    "salary_year_avg": "35000.0",
    "company_name": "Jobmatchingpartner Ltd",
    "skills": "looker"
  }
]
*/