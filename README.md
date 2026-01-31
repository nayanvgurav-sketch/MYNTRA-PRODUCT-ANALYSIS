# 🛍️ Myntra Product Data Analysis Project

## 📌 Project Overview
This project focuses on analyzing Myntra product data to generate actionable business insights such as top-performing brands, category-wise performance, discount impact, and value-for-money recommendations.

The complete workflow is built using:

- **Python** for data cleaning & preprocessing  
- **SQL (MySQL)** for business analysis queries  
- **Power BI** for dashboard visualization  

---

## 🚀 Key Objectives
- Identify brands with the highest customer ratings  
- Analyze category performance based on reviews  
- Create discount tiers and value-for-money tiers  
- Build a weighted recommendation scoring system  
- Develop interactive dashboards in Power BI  

---

## 🧰 Tech Stack Used
- **Python**  
- **SQL (MySQL)**  
- **Power BI**

---

## 📂 Dataset Features
The dataset contains product-level details such as:

- `brand_name`
- `product_tag`
- `rating`
- `rating_count`
- `discount_percent`
- `marked_price`
- `discounted_price`

---

## 🔍 Key Analysis Performed

### ⭐ Brand Performance Analysis
Brands are ranked using:

- Average rating  
- Total reviews  
- Weighted recommendation score  

---

### 📊 Weighted Recommendation Score
A recommendation score was designed to balance trust and discounts:

```sql
(
    rating * 0.4 +
    LOG(rating_count + 1) * 0.3 +
    discount_percent * 0.2
) AS recommendation_score
```

---

### 🏷️ Category-wise Performance
Analysis includes:

- Best categories by total reviews  
- Categories with above-average ratings  
- Customer engagement trends  

---

### 💰 Value for Money Tier
Products are classified into tiers:

- Best Value  
- Mid Range  
- Premium  

Implemented using conditional logic in Power BI.

---

## 📈 Power BI Dashboard Features
The Power BI dashboard provides:

- Top brand card visuals  
- Category-wise bar charts  
- Discount tier slicers  
- Conditional formatting for value-for-money products  
- Recommendation score insights  

---

## 📌 Project Workflow
```
Raw Dataset → Python Cleaning → SQL Analysis → Power BI Dashboard
```

---

## 📁 Project Files
```
📦 myntra-data-analysis
 ┣ 📄 project myntra.sql
 ┣ 📄 MYNTRA PROJECT.ipynb
 ┣ 📊 MYNTRA.pbix
 ┣ 📄 Myntra Business Problem Document.docx
 ┣ 📄 README.md
 ┣ 📊 MYNTRA.pbix

```

---

## 👤 Author
**Nayan Gurav**  
Data Analyst | Python | SQL | Power BI  

---

## ⭐ Support
If you find this project useful, don’t forget to ⭐ star the repository!

