# HR Employee Attrition Analysis using MySQL

## Overview

Employee attrition is a critical HR metric that affects hiring costs, employee productivity, and business continuity. This project analyzes the IBM HR Analytics Employee Attrition dataset using MySQL to identify the major factors influencing employee turnover.

The project follows a complete analytics workflow:

- Data Import
- Data Cleaning
- Data Profiling
- Exploratory Data Analysis (EDA)
- Business Analysis
- Business Recommendations
- Data Visualization

---

# Objectives

- Determine the overall employee attrition rate.
- Identify departments and job roles with the highest turnover.
- Analyze the impact of overtime on attrition.
- Study attrition across different age groups.
- Understand the relationship between salary and attrition.
- Analyze employee tenure and retention.
- Provide business recommendations based on the findings.

---

# Dataset

**Dataset:** IBM HR Analytics Employee Attrition & Performance

| Metric | Value |
|---------|------:|
| Total Employees | 1470 |
| Total Columns | 35 |
| Database | MySQL |
| Table | employees |

---

# Tools Used

- MySQL 8
- MySQL Workbench
- Google Sheets (Charts)
- GitHub

---

# Data Profiling

Before performing any analysis, the dataset was explored to understand its structure and verify data quality.

The following checks were performed:

- Verified successful data import
- Counted total records and columns
- Reviewed table schema
- Explored categorical variables
- Checked numeric ranges
- Verified missing values
- Checked duplicate Employee IDs

### Data Quality Summary

| Check | Result |
|---------|---------|
| Total Records | 1470 |
| Total Columns | 35 |
| Missing Values | None |
| Duplicate Employee IDs | None |
| Overall Data Quality | Good |

---

# SQL Concepts Used

This project demonstrates practical SQL skills including:

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- Aggregate Functions
- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()
- ROUND()
- CASE WHEN
- Data Cleaning
- Data Profiling
- Exploratory Data Analysis (EDA)

---

# Business Questions Answered

1. What is the overall employee attrition rate?
2. Which department has the highest attrition?
3. Which job roles experience the highest turnover?
4. Does overtime increase attrition?
5. Which age groups leave the company most frequently?
6. Does salary influence employee attrition?
7. Does employee tenure affect retention?
8. How does average salary differ between employees who stayed and those who left?

---

# Analysis & Findings

## 1. Overall Employee Attrition

| Attrition | Employees | Percentage |
|-----------|----------:|-----------:|
| No | 1233 | 83.88% |
| Yes | 237 | 16.12% |

### Finding

Approximately **16.12%** of employees left the organization, while **83.88%** remained.

---

## 2. Attrition by Department

| Department | Attrition Rate |
|------------|---------------:|
| Sales | **20.63%** |
| Human Resources | 19.05% |
| Research & Development | 13.84% |

### Finding

The **Sales** department recorded the highest employee attrition, indicating that customer-facing roles may require stronger retention strategies.

---

## 3. Attrition by Job Role

| Job Role | Attrition Rate |
|----------|---------------:|
| Sales Representative | **39.76%** |
| Laboratory Technician | 23.94% |
| Human Resources | 23.08% |
| Sales Executive | 17.48% |
| Research Scientist | 16.10% |
| Manufacturing Director | 6.90% |
| Healthcare Representative | 6.87% |
| Manager | **4.90%** |

### Finding

Sales Representatives experienced the highest turnover, while Managers had the lowest attrition.

---

## 4. Overtime vs Attrition

| Overtime | Attrition Rate |
|----------|---------------:|
| Yes | **30.53%** |
| No | **10.44%** |

### Finding

Employees working overtime left the organization nearly **three times more often** than employees who did not work overtime, highlighting workload as a major retention factor.

---

## 5. Age Group Analysis

| Age Group | Attrition Rate |
|-----------|---------------:|
| 18–24 | ~38% |
| 25–34 | ~20% |
| 35–44 | ~10% |
| 45+ | ~7% |

### Finding

Employee attrition was highest among younger employees and gradually declined with age.

---

## 6. Salary Band Analysis

| Salary Band | Attrition Trend |
|--------------|----------------|
| Low Income | Highest |
| Medium Income | Moderate |
| High Income | Lowest |

### Finding

Employees in lower salary bands were significantly more likely to leave the organization.

---

## 7. Years at Company

### Finding

Attrition was highest during the first few years of employment and steadily decreased as employee tenure increased, suggesting that early retention initiatives could have the greatest impact.

---

## 8. Average Monthly Income

| Attrition | Average Monthly Income |
|-----------|-----------------------:|
| Yes | ~4,800 |
| No | ~6,800 |

### Finding

Employees who left the company earned noticeably lower salaries on average compared to employees who stayed.

---

# Key Findings

- Overall employee attrition rate is **16.12%**.
- Sales has the highest departmental attrition (**20.63%**).
- Sales Representatives have the highest turnover (**39.76%**).
- Employees working overtime are nearly **3×** more likely to leave.
- Younger employees (18–24 years) exhibit the highest attrition.
- Employees with lower salaries leave more frequently.
- Attrition is highest during the early years of employment.
- Employees who left earned lower average monthly salaries than those who stayed.

---

# Business Recommendations

Based on the analysis, the following recommendations are suggested:

### Reduce Overtime

Monitor overtime hours and improve workload distribution to reduce employee burnout.

### Improve Early Employee Retention

Strengthen onboarding, mentoring, and career development during employees' first few years.

### Review Compensation Strategy

Evaluate salary structures for lower-income employees to improve retention.

### Focus on High-Risk Departments

Develop targeted retention programs for Sales and Human Resources teams.

### Career Growth Programs

Provide clear promotion paths and learning opportunities, particularly for younger employees.

---

# Visualizations

The SQL query outputs can be visualized using Google Sheets or Power BI.

Recommended charts:

- Overall Attrition (Pie Chart)
- Attrition by Department (Bar Chart)
- Attrition by Job Role (Horizontal Bar Chart)
- Overtime vs Attrition (Bar Chart)
- Age Group vs Attrition (Bar Chart)
- Years at Company vs Attrition (Line Chart)

Store chart images in:

```
charts/
├── overall_attrition.png
├── department_attrition.png
├── jobrole_attrition.png
├── overtime_attrition.png
├── age_group_attrition.png
└── tenure_attrition.png
```

---

# Repository Structure

```
hr-attrition-sql-analysis/
│
├── README.md
├── queries.sql
├── charts/
│   ├── overall_attrition.png
│   ├── department_attrition.png
│   ├── jobrole_attrition.png
│   ├── overtime_attrition.png
│   ├── age_group_attrition.png
│   └── tenure_attrition.png
└── dataset_link.txt
```

---

# Skills Demonstrated

- SQL
- MySQL
- Data Cleaning
- Data Profiling
- Exploratory Data Analysis (EDA)
- Aggregate Functions
- CASE Statements
- Business Analysis
- HR Analytics
- Data Visualization

---

# Future Improvements

- Build an interactive Power BI dashboard connected to MySQL.
- Create predictive attrition models using Python and Scikit-learn.
- Develop HR KPI dashboards with drill-down capabilities.
- Compare multiple years of employee data to analyze attrition trends over time.

---

# Author

**Nidhi Tripathi**
 Aspiring Data Analyst
