# Airbnb Price Prediction (Regression)

This project predicts Airbnb listing prices using a regression model with extensive feature engineering, transformations, and interaction terms. The model captures complex relationships between listing features, host behavior, and spatial/categorical variables to forecast prices accurately.

## 1) Exploratory Data Analysis
- Conducted EDA using pairplots, correlation matrices, and scatterplots.
- Identified strong numeric predictors of price: `beds`, `bathrooms`, `accommodates`, `number_of_reviews`.
- Detected higher-order relationships for `latitude`, `longitude`, and `bathrooms`.
- Observed multicollinearity among related predictors (e.g., review columns, min/max nights).
- Grouped sparse categorical features into broader categories (e.g., `Other`) for stability.

## 2) Data Cleaning & Feature Engineering
- Cleaned and standardized price data; removed outliers (> $10,000).
- Imputed missing values using median, forward fill, and backward fill.
- Engineered features from text columns:
  - Extracted numeric `bathrooms` and `is_shared` / `is_private` indicators.
  - Identified `fancy` neighborhoods.
  - Encoded `host_response_rate`, `host_acceptance_rate`, and `host_location_category`.
  - Created time-based features like `days_since_host`, `days_since_first`, and `days_since_last`.
- Applied consistent transformations to both training and test datasets.

## 3) Model Development
- Predicted `log_price` to handle skewness of target variable.
- Added polynomial and trigonometric transformations (e.g., `sin`/`cos` of spatial variables).
- Incorporated extensive interaction terms (e.g., `private/shared × latitude/longitude`, `beds × bathrooms`, `accommodates × fancy neighborhoods`).
- Removed influential outliers using leverage and studentized residuals.
- Adjusted predictions to improve calibration and reduce underprediction.

## 4) Results
- Final OLS regression achieved:
  - **R² = 0.704**
  - **Adjusted R² = 0.699**
- Significant predictors: `accommodates`, `beds`, `bathrooms`, review scores, geographic features, and interactions with `is_private`, `is_shared`, and `fancy` neighborhoods.
- Captured nonlinearities and complex interactions, providing robust price predictions.

## 5) Files
- `RegressionCodeEnsembles.ipynb` – Ensemble modeling workflow
- `KNN Final Model.ipynb` – K-Nearest Neighbors model
- `Random Forest Model.ipynb` – Random Forest implementation
- `XGBoost Model.ipynb` – XGBoost implementation
- `LightGBM Copy.ipynb` – LightGBM model
- `prediction_problem_submission.csv` – Final predictions for test set

