# NIFTY 50 Market Analysis  
**End-to-End Data Analytics Project**

---

## Overview

This project is an end-to-end data analytics case study focused on analyzing the **NIFTY 50 index** to understand market trends, volatility, and trading behavior.

The objective of this project is to demonstrate practical data analytics skills by working with real market data and applying Python, SQL, and Power BI to generate meaningful business insights. The project follows a complete analytics workflow similar to what is expected in a fintech or investment analytics role.

---

## Dataset

**Source:** [NIFTY 50 historical data](https://www.kaggle.com/datasets/vaibhavshinde97/nifty-50-historical-data/data)

**Description:**  
The dataset contains daily historical index data covering multiple years, including major market events.

**Key Columns:**
- `Date` – Trading date  
- `Open`, `High`, `Low`, `Close` – Index price values  
- `Volume` – Trading volume  
- `Chg%` – Daily percentage change  

**Derived Features:**
- Daily return (%)
- Market direction (Up / Down)
- 7-day moving average
- Year column for time-based analysis

---

## Tools & Technologies

- **Python** (Pandas, NumPy, Matplotlib) – Data cleaning and EDA  
- **Jupyter Notebook** – Analysis workflow  
- **PostgreSQL** – Data storage and querying  
- **SQL** – Business-focused analytical queries  
- **Power BI** – Interactive dashboard and visualization   

---

## Project Workflow

### Data Loading
- Loaded raw NIFTY 50 CSV data into Python
- Inspected structure, data types, and missing values

---

### Data Cleaning & Preparation (Python)
- Converted date fields to datetime format
- Cleaned and standardized volume values
- Handled missing and inconsistent data
- Created derived columns for analysis:
  - Daily return percentage
  - Market direction
  - 7-day moving average
  - Year

---

### Exploratory Data Analysis (EDA)
- Analyzed long-term market trends
- Studied return distribution and volatility
- Compared market behavior on up vs down days
- Identified periods of high market instability

---

### SQL Analysis (MySQL)
The cleaned dataset was loaded into a MySQL database and analyzed using SQL to answer business questions such as:
- How has the market performed over time?
- Which years experienced the highest volatility?
- How often does the market move up vs down?
- Is trading volume higher on positive or negative days?
- Which days recorded unusually high trading activity?

The focus was on clear, readable SQL using aggregations and time-based grouping.

---

### Power BI Dashboard
A single-page **Power BI dashboard** was built to summarize insights.

**Dashboard includes:**
- KPI summary (Latest Close, YTD Return, Avg Volume, Volatility)
- Market trend analysis
- Yearly volatility comparison
- Up vs Down day distribution
- Trading volume behavior
- Top high-volume trading days

The dashboard is designed to be business-friendly and easy to interpret.

---

## Results & Key Insights

- Market volatility varies significantly across years, with clear spikes during crisis periods
- High volatility does not always correspond to negative yearly returns
- Trading activity remains balanced across up and down market days
- Extreme trading activity is better identified through volume and volatility rather than net returns alone

---

## How to Run the Project

1. Clone the repository
   ```bash
   git clone <repository-url>
   ```
2. Open the Jupyter Notebook
   
   Run nifty50_data_cleaning_eda.ipynb for data cleaning and EDA
   
3. Load data into PostgreSQL

   Use the provided SQL scripts to create tables and run queries

4. Open Power BI Dashboard

   Open Nifty 50 Market Analysis.pbix in Power BI Desktop
