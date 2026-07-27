/*
==========================================================
Project: HR Employee Attrition Analysis
Database: MySQL
Author: Sidhartha Vyas
Dataset: IBM HR Analytics Employee Attrition
==========================================================
*/

-- ======================================================
-- PHASE 1 : DATABASE SETUP & VERIFICATION
-- ======================================================

-- Create Database
-- CREATE DATABASE hr_attrition;

-- Use Database
-- USE hr_attrition;

-- Verify imported data
SELECT *
FROM employees
LIMIT 10;

-- Count total records
SELECT COUNT(*) AS total_employees
FROM employees;

-- View table structure
DESCRIBE employees;

-- Show all column names
SHOW COLUMNS FROM employees;

-- (Run only if Age column imported incorrectly due to BOM)
-- ALTER TABLE employees
-- CHANGE COLUMN `ï»¿Age` Age INT;


-- ======================================================
-- PHASE 2 : DATA EXPLORATION & PROFILING
-- ======================================================

-- ------------------------------------------------------
-- Dataset Size
-- ------------------------------------------------------

SELECT COUNT(*) AS total_employees
FROM employees;

SELECT COUNT(*) AS total_columns
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA='hr_attrition'
AND TABLE_NAME='employees';


-- ------------------------------------------------------
-- Table Structure
-- ------------------------------------------------------

DESCRIBE employees;

SHOW COLUMNS FROM employees;


-- ------------------------------------------------------
-- Explore Categorical Columns
-- ------------------------------------------------------

-- Department
SELECT DISTINCT Department
FROM employees;

-- Job Role
SELECT DISTINCT JobRole
FROM employees;

-- Attrition
SELECT DISTINCT Attrition
FROM employees;

-- Gender
SELECT DISTINCT Gender
FROM employees;

-- Marital Status
SELECT DISTINCT MaritalStatus
FROM employees;

-- Business Travel
SELECT DISTINCT BusinessTravel
FROM employees;

-- Education
SELECT DISTINCT Education
FROM employees;

-- Education Field
SELECT DISTINCT EducationField
FROM employees;

-- OverTime
SELECT DISTINCT OverTime
FROM employees;

-- Job Level
SELECT DISTINCT JobLevel
FROM employees;


-- ------------------------------------------------------
-- Numeric Column Summary
-- ------------------------------------------------------

-- Age
SELECT
MIN(Age) AS youngest_employee,
MAX(Age) AS oldest_employee,
ROUND(AVG(Age),1) AS average_age
FROM employees;

-- Monthly Income
SELECT
MIN(MonthlyIncome) AS minimum_income,
MAX(MonthlyIncome) AS maximum_income,
ROUND(AVG(MonthlyIncome),0) AS average_income
FROM employees;

-- Years at Company
SELECT
MIN(YearsAtCompany) AS minimum_years,
MAX(YearsAtCompany) AS maximum_years,
ROUND(AVG(YearsAtCompany),1) AS average_years
FROM employees;

-- Total Working Years
SELECT
MIN(TotalWorkingYears) AS minimum_work_years,
MAX(TotalWorkingYears) AS maximum_work_years,
ROUND(AVG(TotalWorkingYears),1) AS average_work_years
FROM employees;


-- ------------------------------------------------------
-- Missing Value Check
-- ------------------------------------------------------

SELECT
SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS MissingAge,
SUM(CASE WHEN MonthlyIncome IS NULL THEN 1 ELSE 0 END) AS MissingIncome,
SUM(CASE WHEN Department IS NULL THEN 1 ELSE 0 END) AS MissingDepartment,
SUM(CASE WHEN JobRole IS NULL THEN 1 ELSE 0 END) AS MissingJobRole,
SUM(CASE WHEN Attrition IS NULL THEN 1 ELSE 0 END) AS MissingAttrition
FROM employees;


-- ------------------------------------------------------
-- Distribution of Employees
-- ------------------------------------------------------

-- Employees by Department
SELECT
Department,
COUNT(*) AS total_employees
FROM employees
GROUP BY Department
ORDER BY total_employees DESC;

-- Employees by Gender
SELECT
Gender,
COUNT(*) AS total_employees
FROM employees
GROUP BY Gender;

-- Employees by Marital Status
SELECT
MaritalStatus,
COUNT(*) AS total_employees
FROM employees
GROUP BY MaritalStatus;

-- Employees by Job Role
SELECT
JobRole,
COUNT(*) AS total_employees
FROM employees
GROUP BY JobRole
ORDER BY total_employees DESC;

-- Employees by Education Level
SELECT
Education,
COUNT(*) AS total_employees
FROM employees
GROUP BY Education
ORDER BY Education;

-- Employees by Business Travel
SELECT
BusinessTravel,
COUNT(*) AS total_employees
FROM employees
GROUP BY BusinessTravel;


-- ------------------------------------------------------
-- Duplicate Record Check
-- ------------------------------------------------------

SELECT
EmployeeNumber,
COUNT(*) AS duplicate_count
FROM employees
GROUP BY EmployeeNumber
HAVING COUNT(*) > 1;


-- ------------------------------------------------------
-- Additional Exploration (Recommended)
-- ------------------------------------------------------

-- Employees by Job Level
SELECT
JobLevel,
COUNT(*) AS total_employees
FROM employees
GROUP BY JobLevel
ORDER BY JobLevel;

-- Employees by OverTime
SELECT
OverTime,
COUNT(*) AS total_employees
FROM employees
GROUP BY OverTime;

-- Employees by Attrition
SELECT
Attrition,
COUNT(*) AS total_employees
FROM employees
GROUP BY Attrition;

-- Average Monthly Income by Department
SELECT
Department,
ROUND(AVG(MonthlyIncome),0) AS average_income
FROM employees
GROUP BY Department
ORDER BY average_income DESC;

-- Average Age by Department
SELECT
Department,
ROUND(AVG(Age),1) AS average_age
FROM employees
GROUP BY Department
ORDER BY average_age DESC;