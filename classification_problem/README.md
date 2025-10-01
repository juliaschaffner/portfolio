# Airbnb Superhost Classification  

## Overview  
This project develops a machine learning model to **predict whether an Airbnb host is a superhost** based on host attributes, review history, and listing details. The dataset includes 50+ variables on host responsiveness, reviews, location, availability, and more.  

The project explores exploratory data analysis, data cleaning, feature engineering, and predictive modeling. The ultimate goal was to identify what drives superhost status and to produce accurate predictions for unseen data.  

## Exploratory Data Analysis  
- Correlation analysis revealed that **review metrics**, **host responsiveness**, and **tenure as a host** were strong indicators of superhost status.  
- Several predictors were highly correlated with one another → risk of **multicollinearity**.  
- Class distribution showed a **slight imbalance**, with more listings belonging to Class 0 (not superhost) compared to Class 1 (superhost).
  → Used techniques such as weighted loss functions / oversampling to handle imbalance.  

## Data Cleaning & Feature Engineering  
Key preparation steps included:  
- Encoding categorical variables (e.g., `host_is_superhost`, `host_location`).  
- Imputing missing values with column means and forward/backward filling.  
- Extracting new predictors from text fields:  
  - `bathrooms_text` → numeric bathrooms + binary `is_shared`.  
  - `host_neighbourhood` → binary `fancy` neighborhoods feature.  
- Converting dates (`host_since`, `first_review`, `last_review`) into numeric **days since reference date**.  
- Normalizing percentage fields (e.g., host acceptance & response rates).  

## Model Development  
- Baseline model: **Logistic Regression** using features from EDA.  
- Considered higher-order terms and feature interactions to capture nonlinear relationships.  
- Applied a pragmatic **host ID matching technique** across train/test to resolve inconsistent labels and improve accuracy.  

## Results (Logistic Regression)  
- Pseudo R² ≈ **0.33** → model explains ~33% of variance.  
- Significant predictors included:  
  - **Host acceptance rate (+)**  
  - **Host response rate (+)**  
  - **Review scores (cleanliness, communication, rating)**  
  - **Host listings count (+)**  
  - **Fancy neighborhood (+)**  
- Interaction effects (e.g., `instant_bookable * beds`, `days_since_host * listings_count`) improved model fit.  

## Advanced Models  
In a subsequent academic quarter, I extended this project using more sophisticated classifiers to improve accuracy and robustness:  
- **KNN**
- **Random Forest**
- **XGBoost**  
- **LightGBM**

These models generally improved predictive performance compared to logistic regression, especially in handling nonlinearities and correlated predictors.  

## Key Learnings  
- Airbnb superhost designation is strongly tied to **responsiveness, reviews, and experience level**.  
- **Data cleaning and feature engineering** significantly improved model interpretability and accuracy.  
- More advanced ensemble models (Random Forest, XGBoost, LightGBM) outperformed logistic regression in predictive accuracy.  

## Files  
- `Classification Quarter 1 Final Report.ipynb` – logistic regression baseline model and report  
- `KNNClassificationCode.ipynb` – KNN model
- `XGBoostClassificationCode.ipynb` – XGBoost model  
- `LightGBMClassificationCode.ipynb` – LightGBM model  
- `RandomForestClassificationCode.ipynb` – Random Forest model

## Authors
- **Julia Schaffner**
- **Varun Popli**

