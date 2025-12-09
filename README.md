# DSA 2040 – FS 2025 End Semester Practical Exam  
## **Data Warehousing & Data Mining – Full Submission**  
### **Student: Abdiqalaq Mohamed Issack– 243**

---

# 📌 Overview of Repository

This repository contains the complete submission for the DSA 2040 End Semester Practical Exam. It includes all required components for **Section 1 (Data Warehousing)** and **Section 2 (Data Mining)**. All files—SQL scripts, Python notebooks, ETL workflows, diagrams, datasets, and analysis reports—have been organized for easy review and reproducibility.

The work strictly follows exam instructions, using **synthetic data where required**, **SQLite** for the data warehouse, and **Python (pandas, scikit-learn, mlxtend)** for all preprocessing and modeling tasks.

---

# 🧱 **SECTION 1 – DATA WAREHOUSING (50 Marks)**

This section includes the design, implementation, and analysis of a retail data warehouse using a **star schema**, **ETL workflow**, and **OLAP queries**.

---

## **Task 1 – Star Schema Design (15 Marks)**

### ✔ Deliverables Included:
- `schema_dw.sql` – SQL CREATE TABLE scripts  
- `star_schema.drawio` – Editable diagram file  
- `star_schema.drawio.png` – Exported image of schema  
- Written explanation in this README  

### ✔ Summary
A **star schema** was designed with:
- **Fact Table:** `SalesFact`
- **Dimension Tables:** `CustomerDim`, `ProductDim`, `TimeDim`

A star schema was chosen instead of snowflake because:
- It is simpler, faster for OLAP queries, and optimized for read-heavy analytical workloads.
- Fact–dimension relationships become clear and efficient for slicing/rolling up.

---

## **Task 2 – ETL Implementation (20 Marks)**

### ✔ Deliverables Included:
- `etl_retail.ipynb` – Complete ETL pipeline  
- `synthetic_retail_data.csv` – Generated dataset (~1000 rows)  
- `retail_dw.db` – Final SQLite data warehouse  

### ✔ ETL Summary
**Extract**
- Synthetic retail dataset generated with random invoice numbers, items, prices, dates, and countries.

**Transform**
- Cleaned missing values  
- Added computed field: `TotalSales = Quantity × UnitPrice`  
- Filtered transactions within last 12 months  
- Removed invalid quantities/prices  
- Created customer and time dimension extracts  

**Load**
- Inserted data into `CustomerDim`, `TimeDim`, and `SalesFact` tables  
- Logged row counts at each stage  
- Ensured reproducible ETL function with modular code  

---

## **Task 3 – OLAP Queries & Analysis (15 Marks)**

### ✔ Deliverables Included:
- `olap_queries.sql`  
- `sales_by_country.png` – Visualization  
- `OLAP_Analysis_Task3.pdf` – 200–300 word analysis  

### ✔ Summary of OLAP Queries
- **Roll-Up:** Total sales by country and quarter  
- **Drill-Down:** Monthly sales for UAE  
- **Slice:** Electronics category sales (synthetic mapping)

### ✔ Visualization
A bar chart summarizing total sales by country.

### ✔ Insights
- USA and Canada were top-performing regions based on synthetic data.  
- Strong seasonal patterns observed in UAE drill-down.  
- Slice analysis revealed strong correlations within electronic items.  
- Demonstrated how OLAP supports managerial decision-making.

---

# 🔍 **SECTION 2 – DATA MINING (50 Marks)**

This section includes preprocessing, clustering, classification, and association rule mining using the **Iris dataset** and synthetic baskets.

---

## **Task 1 – Preprocessing & Exploration (15 Marks)**

### ✔ Deliverables Included:
- `preprocessing_iris.ipynb`
- `iris_pairplot.png`
- `iris_heatmap.png`
- `iris_boxplots.png`

### ✔ Summary of Work
- Loaded Iris dataset  
- Checked missing values  
- Applied Min-Max normalization  
- Encoded species  
- Generated summary statistics  
- Visualized:
  - Pairplot
  - Correlation heatmap
  - Boxplots (outlier detection)  
- Implemented train/test split function (80/20)

---

## **Task 2 – Clustering (15 Marks)**

### ✔ Deliverables Included:
- Cluster predictions  
- `iris_elbow_curve.png`  
- `iris_clusters.png`  
- Clustering analysis markdown inside notebook  

### ✔ Summary of Work
- Applied **K-Means with k = 2, 3, 4**  
- Evaluated using **Adjusted Rand Index (ARI)**  
- Determined that **k = 3** is optimal (supported by elbow curve)  
- Visualized clusters using petal length vs width  

### ✔ Key Insights
- Setosa forms a completely isolated cluster  
- Versicolor and Virginica show moderate overlap  
- Petal features are the strongest predictors  

---

## **Task 3 – Classification & Association Rules (20 Marks)**

### ✔ Deliverables Included:
- Decision Tree model + visualization (`decision_tree.png`)  
- KNN classifier (k = 5)  
- Evaluation reports for both models  
- Synthetic basket data  
- Frequent itemsets + Top 5 association rules  
- Markdown insights for both tasks  

### ✔ Summary of Work
**Classification**
- Decision Tree achieved **100% accuracy**  
- KNN with k=5 also achieved **100% accuracy**  
- Decision Tree preferred due to interpretability  

**Association Rules**
- Synthetic supermarket transactions created  
- Apriori algorithm used with:
  - `min_support = 0.2`
  - `min_confidence = 0.5`
- Rules sorted by lift  
- Best rule analyzed for retail relevance  

---

# 📂 **Repository Structure**

# DSA 2040 – FS 2025 End Semester Practical Exam  
## **Data Warehousing & Data Mining – Full Submission**  
### **Student: Abdiqalaq Mohamed – 243**

---

# 📌 Overview of Repository

This repository contains the complete submission for the DSA 2040 End Semester Practical Exam. It includes all required components for **Section 1 (Data Warehousing)** and **Section 2 (Data Mining)**. All files—SQL scripts, Python notebooks, ETL workflows, diagrams, datasets, and analysis reports—have been organized for easy review and reproducibility.

The work strictly follows exam instructions, using **synthetic data where required**, **SQLite** for the data warehouse, and **Python (pandas, scikit-learn, mlxtend)** for all preprocessing and modeling tasks.

---

# 🧱 **SECTION 1 – DATA WAREHOUSING (50 Marks)**

This section includes the design, implementation, and analysis of a retail data warehouse using a **star schema**, **ETL workflow**, and **OLAP queries**.

---

## **Task 1 – Star Schema Design (15 Marks)**

### ✔ Deliverables Included:
- `schema_dw.sql` – SQL CREATE TABLE scripts  
- `star_schema.drawio` – Editable diagram file  
- `star_schema.drawio.png` – Exported image of schema  
- Written explanation in this README  

### ✔ Summary
A **star schema** was designed with:
- **Fact Table:** `SalesFact`
- **Dimension Tables:** `CustomerDim`, `ProductDim`, `TimeDim`

A star schema was chosen instead of snowflake because:
- It is simpler, faster for OLAP queries, and optimized for read-heavy analytical workloads.
- Fact–dimension relationships become clear and efficient for slicing/rolling up.

---

## **Task 2 – ETL Implementation (20 Marks)**

### ✔ Deliverables Included:
- `etl_retail.ipynb` – Complete ETL pipeline  
- `synthetic_retail_data.csv` – Generated dataset (~1000 rows)  
- `retail_dw.db` – Final SQLite data warehouse  

### ✔ ETL Summary
**Extract**
- Synthetic retail dataset generated with random invoice numbers, items, prices, dates, and countries.

**Transform**
- Cleaned missing values  
- Added computed field: `TotalSales = Quantity × UnitPrice`  
- Filtered transactions within last 12 months  
- Removed invalid quantities/prices  
- Created customer and time dimension extracts  

**Load**
- Inserted data into `CustomerDim`, `TimeDim`, and `SalesFact` tables  
- Logged row counts at each stage  
- Ensured reproducible ETL function with modular code  

---

## **Task 3 – OLAP Queries & Analysis (15 Marks)**

### ✔ Deliverables Included:
- `olap_queries.sql`  
- `sales_by_country.png` – Visualization  
- `OLAP_Analysis_Task3.pdf` – 200–300 word analysis  

### ✔ Summary of OLAP Queries
- **Roll-Up:** Total sales by country and quarter  
- **Drill-Down:** Monthly sales for UAE  
- **Slice:** Electronics category sales (synthetic mapping)

### ✔ Visualization
A bar chart summarizing total sales by country.

### ✔ Insights
- USA and Canada were top-performing regions based on synthetic data.  
- Strong seasonal patterns observed in UAE drill-down.  
- Slice analysis revealed strong correlations within electronic items.  
- Demonstrated how OLAP supports managerial decision-making.

---

# 🔍 **SECTION 2 – DATA MINING (50 Marks)**

This section includes preprocessing, clustering, classification, and association rule mining using the **Iris dataset** and synthetic baskets.

---

## **Task 1 – Preprocessing & Exploration (15 Marks)**

### ✔ Deliverables Included:
- `preprocessing_iris.ipynb`
- `iris_pairplot.png`
- `iris_heatmap.png`
- `iris_boxplots.png`

### ✔ Summary of Work
- Loaded Iris dataset  
- Checked missing values  
- Applied Min-Max normalization  
- Encoded species  
- Generated summary statistics  
- Visualized:
  - Pairplot
  - Correlation heatmap
  - Boxplots (outlier detection)  
- Implemented train/test split function (80/20)

---

## **Task 2 – Clustering (15 Marks)**

### ✔ Deliverables Included:
- Cluster predictions  
- `iris_elbow_curve.png`  
- `iris_clusters.png`  
- Clustering analysis markdown inside notebook  

### ✔ Summary of Work
- Applied **K-Means with k = 2, 3, 4**  
- Evaluated using **Adjusted Rand Index (ARI)**  
- Determined that **k = 3** is optimal (supported by elbow curve)  
- Visualized clusters using petal length vs width  

### ✔ Key Insights
- Setosa forms a completely isolated cluster  
- Versicolor and Virginica show moderate overlap  
- Petal features are the strongest predictors  

---

## **Task 3 – Classification & Association Rules (20 Marks)**

### ✔ Deliverables Included:
- Decision Tree model + visualization (`decision_tree.png`)  
- KNN classifier (k = 5)  
- Evaluation reports for both models  
- Synthetic basket data  
- Frequent itemsets + Top 5 association rules  
- Markdown insights for both tasks  

### ✔ Summary of Work
**Classification**
- Decision Tree achieved **100% accuracy**  
- KNN with k=5 also achieved **100% accuracy**  
- Decision Tree preferred due to interpretability  

**Association Rules**
- Synthetic supermarket transactions created  
- Apriori algorithm used with:
  - `min_support = 0.2`
  - `min_confidence = 0.5`
- Rules sorted by lift  
- Best rule analyzed for retail relevance  

---

# 📂 **Repository Structure**
DSA_2040_FS_243/
│
├── schema_dw.sql
├── star_schema.drawio
├── star_schema.drawio.png
├── etl_retail.ipynb
├── synthetic_retail_data.csv
├── retail_dw.db
│
├── olap_queries.sql
├── sales_by_country.png
├── OLAP_Analysis_Task3.pdf
│
├── preprocessing_iris.ipynb
├── iris_pairplot.png
├── iris_heatmap.png
├── iris_boxplots.png
├── iris_elbow_curve.png
├── iris_clusters.png
│
├── decision_tree.png
│
└── README.md
