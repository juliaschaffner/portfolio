# Marital Satisfaction and Family Dynamics  

## 📖 Overview  
This project analyzes factors that influence **marital satisfaction** using data from the **2022 General Social Survey (GSS)**.  
The dependent variable of interest is **HAPMAR**, which measures self-reported marital happiness:  
- 1 = Very happy  
- 2 = Pretty happy  
- 3 = Not too happy  

The study investigates whether **number of children, gender, and work hours** are associated with changes in marital happiness.  

## 🎯 Research Questions  
- Do more children reduce marital satisfaction?  
- Are there differences in reported marital happiness between men and women?  
- Do longer work hours negatively impact marriage quality?  

## 🔍 Hypotheses  
- **Children (CHILDS):** More children → lower marital happiness.  
- **Gender (SEX):** Men report higher marital happiness than women.  
- **Work Hours (HRS1):** More work hours → lower marital happiness.  

## 📊 Methods  
- Dataset: **GSS 2022**  
- Dependent Variable: **HAPMAR** (marital satisfaction)  
- Independent Variables:  
  - **CHILDS** (number of children)  
  - **SEX** (male/female, dummy-coded)  
  - **HRS1** (hours worked last week)  
- Statistical Methods: **OLS regression**, significance testing, R² evaluation, Breusch-Pagan test for homoskedasticity, Shapiro-Wilk test for normality.  

## 📈 Key Findings  
- **Model 1 (CHILDS only):** Number of children not statistically significant.  
- **Model 2 (CHILDS + SEX + HRS1):**  
  - CHILDS becomes statistically significant (p < 0.05), supporting the hypothesis that more children are associated with lower marital happiness.  
  - SEX and HRS1 not statistically significant.  
- **Explanatory Power:** R² ≈ 0.

