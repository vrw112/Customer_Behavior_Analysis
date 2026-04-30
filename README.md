# 🛍️ Customer Shopping Behavior Analysis

##  Overview
This project analyzes customer shopping behavior using transactional data (3,900 records) to identify patterns in customer spending, product preferences, and subscription trends.  

The analysis combines Python (EDA & cleaning), MySQL (querying), and Power BI (visualization) to generate actionable business insights.

---

##  Objectives
- Understand customer purchasing behavior  
- Identify high-value customer segments  
- Analyze impact of discounts and subscriptions  
- Discover top-performing products and categories  
- Support business decision-making using data  

---

##  Dataset
- **Rows:** 3,900  
- **Columns:** 18
-  <a href="https://github.com/vrw112/Customer_Behavior_Analysis/blob/main/customer_shopping_behavior.csv">Dataset</a>

### Features Included:
- **Demographics:** Age, Gender, Location, Subscription Status  
- **Transactions:** Item Purchased, Category, Purchase Amount  
- **Behavioral Data:** Discount Applied, Previous Purchases, Frequency  
- **Other:** Review Rating, Shipping Type, Season, Size, Color  

### Data Cleaning:
- Handled missing values in `review_rating`  
- Applied median imputation (category-wise)  
- Standardized column names (snake_case)  
- Removed redundant columns  

---

##  Tools & Technologies
- **Python** – Data cleaning & EDA  
- **Pandas, NumPy** – Data manipulation  
- **MySQL Server** – SQL analysis  
- **Power BI** – Dashboard & visualization  

---

##  Project Workflow

### 🔹 1. Data Loading & Exploration (Python)
- Loaded dataset using Pandas  
- Used `.info()` and `.describe()` for structure and summary  
- Checked missing values  

### 🔹 2. Data Cleaning
- Treated missing values in `review_rating`  
- Renamed columns to snake_case  
- Removed duplicate/redundant fields  

### 🔹 3. Feature Engineering
- Created `age_group` column  
- Derived purchase-related insights  

### 🔹 4. Database Integration
- Connected Python to MySQL  
- Exported cleaned dataset into database  

### 🔹 5. SQL Analysis
Key business queries performed:
- Revenue by gender  
- High-spending discount users  
- Top 5 products by rating  
- Shipping type comparison  
- Subscribers vs non-subscribers  
- Discount-dependent products  
- Customer segmentation (New, Returning, Loyal)  
- Top products per category  
- Repeat buyers vs subscription behavior  
- Revenue by age group  

### 🔹 6. Dashboard Creation (Power BI)
- Built interactive dashboard  
- Added filters, KPIs, and visuals for insights  

---

## 📈 Dashboard
The Power BI dashboard includes:
- Revenue breakdown by gender and age group  
- Customer segmentation analysis  
- Product performance insights  
- Subscription and discount trends  
- Shipping behavior comparison

Interactive Power BI dashboard showcasing customer behavior, revenue trends, and segmentation insights.
<img width="1171" height="642" alt="Dashboard" src="https://github.com/user-attachments/assets/f0b5049a-456f-41f4-8a0d-4d772323b073" />


---

## 📌 Key Insights
- Subscribers contribute higher average revenue  
- Certain age groups drive major sales  
- Discounts increase purchases but need optimization  
- Repeat customers are valuable for long-term growth  
- Top-rated products should be prioritized in marketing  

---

## 💡 Business Recommendations
- Introduce customer loyalty programs  
- Promote subscription-based benefits  
- Optimize discount strategies  
- Focus marketing on high-performing segments  
- Highlight best-selling and top-rated products

- ## 📄 Project Report

Detailed analysis report is available here:  
👉  <a href="https://github.com/vrw112/Customer_Behavior_Analysis/blob/main/Customer%20Shopping%20Behavior%20Analysis.pdf">Report</a>
