# Hospital-Resource-Utilization-and-Readmission-Risk-Analytics
Healthcare Business Intelligence project that reduces readmission risk and improves resource planning through patient analytics, risk segmentation, and interactive dashboards.

# 🏥 Hospital Resource Utilization & Readmission Risk Analytics

## Project Overview

Healthcare organizations generate large volumes of patient data through admissions, diagnoses, treatments, laboratory procedures, medications, and follow-up visits. Analyzing this information helps hospitals improve patient outcomes, reduce avoidable readmissions, and optimize resource utilization.

This project analyzes hospital admission patterns, diagnosis-related readmissions, healthcare resource consumption, and patient risk segmentation using Excel, MySQL, and Power BI.

The objective is to transform raw healthcare data into actionable insights that support data-driven decision-making.

---

## Business Problem

Hospitals face several operational challenges:

* Understanding patient admission trends
* Reducing avoidable readmissions
* Optimizing healthcare resource allocation
* Identifying high-risk patients requiring preventive care

This project addresses these challenges through descriptive and diagnostic analytics.

---

## Objectives

### 1. Analyze Patient Admissions

* Evaluate overall hospital admission volume
* Identify demographic patterns among patients
* Understand age and gender distributions

### 2. Reduce Hospital Readmissions

* Measure 30-day readmission rates
* Identify diagnoses contributing to repeated admissions
* Determine patient groups with higher readmission risk

### 3. Improve Resource Utilization

* Analyze length of hospital stay
* Evaluate medication and laboratory usage
* Assess emergency and inpatient visit patterns

### 4. Identify High-Risk Patients

* Segment patients by risk level
* Discover key factors influencing readmissions
* Support proactive healthcare interventions

---

## Dataset Information

### Dataset

**Diabetes 130-US Hospitals for Years 1999–2008**

### Source

Kaggle Dataset Repository

### Original Dataset

* 101,766 Hospital Encounters
* 50+ Attributes

### Sample Used

* 25,000 Patient Encounters
* Random sampling performed
* Original data distribution maintained

### Key Attributes

| Column             | Description               |
| ------------------ | ------------------------- |
| encounter_id       | Unique hospital encounter |
| patient_nbr        | Unique patient identifier |
| age                | Patient age group         |
| gender             | Patient gender            |
| diag_1             | Primary diagnosis         |
| diag_2             | Secondary diagnosis       |
| diag_3             | Additional diagnosis      |
| time_in_hospital   | Length of stay            |
| num_medications    | Medication count          |
| num_lab_procedures | Laboratory tests          |
| number_emergency   | Emergency visits          |
| number_inpatient   | Previous inpatient visits |
| readmitted         | Readmission status        |

---

## Tools & Technologies

* Microsoft Excel
* MySQL
* Power BI

---

## Data Preparation

The following preprocessing steps were performed:

* Replaced missing values ("?") with "Unknown"
* Removed duplicate records
* Standardized data formats
* Created Age Group categories
* Created Risk Category classifications
* Optimized dataset size for analysis

---

## Key Findings

### Patient Overview

| Metric                 | Value     |
| ---------------------- | --------- |
| Total Admissions       | 25,000    |
| Unique Patients        | 18,648    |
| Average Length of Stay | 4.72 Days |
| Readmission Rate       | 11.7%     |

#### Demographics

* Senior patients accounted for the largest patient group.
* Female patients represented 53.24% of admissions.
* Male patients represented 46.76% of admissions.

---

### Readmission Analysis

#### Readmission Distribution

| Status              | Count  |
| ------------------- | ------ |
| No Readmission      | 13,550 |
| Readmitted >30 Days | 8,526  |
| Readmitted <30 Days | 2,924  |

#### Top Diagnoses Associated with Readmissions

| Diagnosis Code | Readmissions |
| -------------- | ------------ |
| 428            | 615          |
| 250            | 411          |
| 414            | 400          |
| 276            | 364          |
| 401            | 312          |

#### Insights

* Senior patients experienced the highest readmission rates.
* Diagnosis codes 428 and 414 consistently appeared among readmitted patients.
* Chronic disease management programs may reduce repeat admissions.

---

### Resource Utilization Analysis

#### Resource Metrics

| Metric             | Value |
| ------------------ | ----- |
| Avg Lab Procedures | 45.42 |
| Avg Procedures     | 1.44  |
| Avg Medications    | 15.35 |
| Emergency Visits   | 1,654 |

#### Insights

* Patients with longer hospital stays consumed more resources.
* Seniors required more medications and healthcare interventions.
* Higher emergency visit frequency was associated with longer stays.

---

### Risk Segmentation

#### Risk Categories

| Category       | Patients |
| -------------- | -------- |
| Low Risk       | 15,870   |
| Moderate Risk  | 7,530    |
| Very High Risk | 1,600    |

#### High-Risk Population

* High-Risk Patients: 9,127
* High-Risk Percentage: 36.51%

#### Key Readmission Drivers

1. Number of medications > 11
2. Senior age group
3. Hospital stay > 5 days
4. More than 8 diagnoses
5. Diagnosis code 428
6. Multiple inpatient visits
7. Higher emergency visit frequency

---

## Power BI Dashboards

### Dashboard 1: Patient Overview

* Admission trends
* Demographic analysis
* Readmission monitoring
* Patient population overview

### Dashboard 2: Diagnosis & Readmission Analysis

* Diagnosis distribution
* Readmission patterns
* Age-based readmission analysis
* High-risk diagnosis identification

### Dashboard 3: Resource Utilization

* Length of stay analysis
* Medication utilization
* Emergency visit impact
* Resource consumption tracking

### Dashboard 4: Readmission Risk Prediction

* Risk segmentation
* High-risk patient identification
* Key readmission influencers
* Preventive care opportunities

---

## Business Impact

This analysis helps healthcare organizations:

* Reduce avoidable readmissions
* Improve discharge planning
* Optimize hospital resource allocation
* Identify vulnerable patient populations
* Support proactive healthcare interventions
* Improve overall patient outcomes

---

## Conclusion

The project demonstrates how healthcare data analytics can support hospital decision-making by identifying admission trends, readmission drivers, resource utilization patterns, and high-risk patient groups.

The findings revealed an 11.7% readmission rate and highlighted senior patients as the primary consumers of healthcare resources. Factors such as medication burden, longer hospital stays, multiple diagnoses, and repeated emergency visits significantly increased readmission risk.

By leveraging these insights, hospitals can improve care quality, optimize resources, and reduce healthcare costs through targeted interventions.

---

## Author

**Deepashree Manjunath**

M.Sc Bioinformatics | Data Analytics & Business Intelligence Enthusiast


