# Decoding Virality: A Comparative Analysis of Trending Videos on YouTube and TikTok

**Team Name:** Pythoneers
**Authors:** Julia Schaffner, Varun Popli, Tatum Thomas, Sophia Jukovich
**Published:** December 4, 2023

---

## Overview

This project investigates what makes videos go viral on two of today’s largest social media platforms—YouTube and TikTok. We explore engagement patterns, time-to-virality, and the influence of descriptions/hashtags, with the goal of uncovering platform-specific insights that can guide content creators and digital marketers.

Our analysis uses datasets from **Kaggle (YouTube)** and **GitHub (TikTok)**, applies robust data cleaning, and employs exploratory data analysis (EDA) techniques including correlation analysis, scatterplots, boxplots, and heatmaps.

---

## Research Questions

1. **Characteristics of Virality**

   * Which metrics (likes, comments, shares, etc.) best define virality on YouTube vs TikTok?
   * *Lead: Sophia Jukovich*

2. **Public Interaction vs Views**

   * How do likes, dislikes, comments, and shares correlate with a video’s number of views?
   * *Lead: Julia Schaffner*

3. **Time of Virality**

   * What factors shorten the time between a video’s upload and when it starts trending?
   * *Lead: Varun Popli*

4. **Role of Descriptions**

   * How do description length, hashtags, emojis, and links influence exposure and virality?
   * *Lead: Tatum Thomas*

---

## Data Sources

* **YouTube Trending Video Dataset** (Kaggle)

  * [Link](https://www.kaggle.com/datasets/datasnaek/youtube-new?select=CAvideos.csv)
  * ~40,000 videos | variables include views, likes, dislikes, comment count, publish time, trending date, and description.

* **TikTok Video Dataset** (GitHub)

  * [Link](https://github.com/datares/TikTok_Famous/blob/main/Datasets/TikTok%20Video%20Data%20Collection/sug_users_vids_all.csv)
  * ~41,000 videos | variables include views, likes, comments, shares, video length, hashtags, and followers.

---

## Methods

* **Data Cleaning:** Removed rows with missing values in non-numeric fields (descriptions, songs).
* **Feature Engineering:**

  * Created *like-to-comment ratios*.
  * Computed *time of virality* = trending date − publish date.
* **EDA Tools:** Pandas, NumPy, Seaborn, Matplotlib.
* **Visualization Techniques:** Heatmaps, scatterplots with regression, boxplots, barplots.

---

## Key Findings

* **YouTube:** Likes are the strongest predictor of views.
* **TikTok:** Comments are more influential than likes in driving views.
* **Time of Virality:** No strong correlations—suggests virality is less about speed and more about total engagement.
* **Descriptions:**

  * YouTube: Links and emojis boost engagement; longer descriptions have little impact.
  * TikTok: Fewer hashtags generally perform better; emojis in hashtags can boost peaks of engagement.

---

## Recommendations for Stakeholders

* **Content Creators:**

  * Encourage comments on TikTok, prioritize likes on YouTube.
  * Use emojis and links strategically in YouTube descriptions.
  * Keep TikTok hashtags concise and purposeful.

* **Marketers & Brands:**

  * Tailor strategies by platform—don’t copy-paste campaigns.
  * Use insights to design campaigns that encourage engagement in the form most rewarded by the platform’s algorithm.

---

## Repository Structure

In this folder, you'll find the following documents:

Documentation (decoding virality).html
- All code written to produce findings and report
  
Final Report (decoding virality).html

Final Presentation (decoding virality).pdf

---


