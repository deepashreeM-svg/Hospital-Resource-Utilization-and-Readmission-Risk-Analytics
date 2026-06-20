create database Readmision_Analysis;

use readmision_analysis;

-- 1. Total Hospital Admissions

SELECT 
COUNT(ï»¿encounter_id)
AS total_admissions
FROM cleaned_diabetic25_data;

-- 2. Readmission Rate

SELECT
ROUND( SUM(
CASE
WHEN readmitted='<30'
THEN 1
ELSE 0
END
)
*100
/
COUNT(*) ,2)
AS readmission_rate
FROM cleaned_diabetic25_data;

-- 3. Average Length of Stay

SELECT
ROUND(
AVG(time_in_hospital), 2)
AS avg_stay
FROM cleaned_diabetic25_data;

-- 4. Resource Utilization

SELECT

AVG(num_lab_procedures)
AS avg_lab_tests,

AVG(num_medications)
AS avg_medications,

AVG(num_procedures)
AS avg_procedures

FROM cleaned_diabetic25_data;

-- 5. Readmission by Age

SELECT
age, COUNT(*) cleaned_diabetic25_data, SUM(
CASE
WHEN readmitted='<30'
THEN 1
ELSE 0
END)
AS readmissions
FROM cleaned_diabetic25_data
GROUP BY age;

-- 6. Top Diagnosis Causing Readmission

SELECT
diag_1,
COUNT(*) AS readmissions
FROM cleaned_diabetic25_data
WHERE readmitted = '<30'
GROUP BY diag_1
ORDER BY readmissions DESC;

-- 7. Combined Analysis

SELECT diag_1 AS diagnosis
FROM cleaned_diabetic25_data
UNION ALL
SELECT diag_2
FROM cleaned_diabetic25_data
UNION ALL
SELECT diag_3
FROM cleaned_diabetic25_data;

SELECT diagnosis,
COUNT(*) AS readmissions
FROM
(
    SELECT diag_1 AS diagnosis
    FROM cleaned_diabetic25_data
    WHERE readmitted='<30'

    UNION ALL

    SELECT diag_2
    FROM cleaned_diabetic25_data
    WHERE readmitted='<30'

    UNION ALL

    SELECT diag_3
    FROM cleaned_diabetic25_data
    WHERE readmitted='<30'
) x
GROUP BY diagnosis
ORDER BY readmissions DESC;

-- Emergency Visits Impacts

SELECT
number_emergency,
COUNT(*) cleaned_diabetic25_data
FROM cleaned_diabetic25_data
GROUP BY number_emergency;

-- 8. High Risk Patients

SELECT
COUNT(*) AS high_risk_patients
FROM cleaned_diabetic25_data
WHERE
number_inpatient>2
AND number_emergency>1
AND time_in_hospital>5;


-- 9. Patients that were readmitted

SELECT 
readmitted,
COUNT(*) AS patients
FROM cleaned_diabetic25_data
GROUP BY readmitted;
