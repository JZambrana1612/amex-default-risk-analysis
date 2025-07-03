# Customer Default Risk: Behavioral Insights for American Express

This project analyzes customer behavioral patterns from anonymized American Express data to uncover early risk signals and suggest portfolio strategies. Using SQL and Tableau, the project delivers business-ready insights for marketing, finance, and risk teams alike.

---

## 📊 Executive Summary

This dashboard-driven analysis helps business leaders quickly understand which types of customers are most likely to default — and what behavioral trends precede that risk. Our 100,000-row sample from American Express's original dataset enabled targeted segmentation and aggregate credit health exploration.

### 💡 Suggestions for Stakeholders:
- **Marketing**: Focus retention efforts on low-utilization, low-tenure segments showing early signs of default risk.
- **Finance**: Adjust credit exposure assumptions using behavior-weighted default rates by tenure and spending.
- **Risk Team**: Use high-impact features (like `D_39`, `B_30`) for ongoing risk monitoring or early flagging systems.

All visualizations were built using Tableau and SQL-driven analysis — allowing teams to drill into patterns by segment, spending behavior, or default probability.

---

## 🔍 Deep Dive

### 🎯 Project Goal
To identify key drivers of customer default risk in a large, anonymized behavioral dataset. Our goal was to:
- Segment high-risk customer groups
- Flag early behavior-based risk signals
- Support future improvements to customer retention and risk scoring

### 📁 Dataset
- **Source**: [Kaggle: Amex Default Prediction - Integer Dtypes Version](https://www.kaggle.com/datasets/raddar/amex-data-integer-dtypes-parquet-format)
- **Sample Size Used**: 100,000 rows from `train.parquet`
- **Structure**: ~190 anonymized behavioral and financial features, one row per customer time step

### ⚠️ Note on Rounding (from Kaggle):
> “Most float columns with [0, 0.01] and [1, 1.01] have these values rounded up at 0 and 1 respectively. This was done to ensure no data loss, as not all features could be rounded up safely.”

This rounding behavior was considered during interpretation. Null-heavy columns (>85% missing) were excluded to maintain clean, visual-ready outputs.

---

## 📈 Executive Questions & Insights

### 1️⃣ Which behavioral patterns or customer segments are most associated with default risk?
- Customers with **higher credit utilization (`D_39`) and transaction volatility (`B_30`)** showed increased risk
- This supports predictive modeling or early outreach

### 2️⃣ Are there any early behavioral indicators that consistently predict default before it occurs?
- A drop in values such as `P_2`, `D_63`, and `S_27` consistently preceded default in this sample
- These features can be used to flag accounts even before credit deterioration is visible

### 3️⃣ How does the overall credit health of our portfolio vary by customer tenure and spending?
- Customers with **shorter tenure (`D_112`)** and lower average spend (`D_103`) had the highest default rates
- This can guide credit limit decisions and proactive account reviews

---

## 🛠 Tech Stack

| Tool         | Purpose                           |
|--------------|------------------------------------|
| **Python (Pandas)** | Data wrangling and sampling  |
| **MySQL**     | Data modeling + SQL query analysis |
| **Tableau**   | Interactive dashboard visualization |
| **Google Colab / Drive** | Handling large datasets  |

---

## 📁 Repository Structure

```
📦 amex-default-risk
├── 📄 README.md
├── 📊 train_sample_100k_cleaned.csv
├── 🧱 amex_create_table.sql
├── 📄 amex_query_1.sql    # Segment default risk
├── 📄 amex_query_2.sql    # Early indicators
├── 📄 amex_query_3.sql    # Portfolio health
├── 🖼 dashboard_preview.png
└── 📜 LICENSE
```

---

## 🔗 Data Source

- **Original Dataset**: [Kaggle - Amex Default Prediction (Parquet Format)](https://www.kaggle.com/datasets/raddar/amex-data-integer-dtypes-parquet-format)
- Note: This project uses a 100k-row sample of the `train.parquet` file, converted to `.csv` and cleaned for visualization

---

## 👨‍💼 About the Analyst

I'm an aspiring data analyst with a background in healthcare and customer operations. This project reflects my ability to analyze large-scale financial data, communicate insights clearly to stakeholders, and create production-ready SQL and dashboard assets for cross-functional teams in marketing, finance, and product.
