
## Project Overview
This project analyzes digital payment transactions to identify **fraud patterns and suspicious activities** across users, merchants, and locations.  
Using **SQL for data analysis** and **Power BI for visualization**, the project highlights key fraud indicators such as fraud rate, high-risk users, and suspicious devices.

The dataset contains **15,000+ simulated UPI transactions** generated using Python to replicate real-world fintech payment behavior.

---

## Tools & Technologies
- **SQL** – Data analysis and fraud detection queries
- **Power BI** – Interactive dashboard and visualization
- **Python** – Synthetic dataset generation
- **GitHub** – Project version control and portfolio

---

## Dataset
The dataset includes the following attributes:

| Column | Description |
|------|-------------|
| transaction_id | Unique transaction identifier |
| user_id | Unique user identifier |
| amount | Transaction amount |
| transaction_time | Date and time of transaction |
| location | City where transaction occurred |
| device_id | Device used for transaction |
| merchant | Merchant receiving payment |
| fraud_flag | Indicates whether transaction is fraud (1) or legitimate (0) |

Total Records: **15,000 transactions**

---

## Key SQL Analysis
The following fraud analytics queries were performed:

- Total Transactions
- Fraud Transactions
- Fraud Rate
- Fraud by Location
- Fraud by Merchant
- Suspicious Devices (devices used by multiple users)
- High Risk Users (users with multiple fraud attempts)
- Transaction Trends over time
- Top Fraud Transactions by value

All SQL queries are available in: fraud_analysis.sql


---

## Power BI Dashboard
An interactive **Power BI dashboard** was created to visualize fraud patterns and transaction trends.

### Dashboard KPIs
- Total Transactions
- Fraud Transactions
- Fraud Rate
- Unique Users

### Dashboard Visualizations
- Fraud by Location
- Fraud by Merchant
- Transaction Trend Over Time
- Fraud vs Legit Transactions
- Suspicious Devices
- High Risk Users
- Top Fraud Transactions

---

## Dashboard Screenshots

### Main Dashboard
![Main Dashboard](Analysis%20Results/I1.png)

### Fraud by Location
![Fraud by Location](Analysis%20Results/I2.png)

### Fraud by Merchant
![Fraud by Merchant](Analysis%20Results/I3.png)

### Transaction Trend
![Transaction Trend](Analysis%20Results/I4.png)

---


---

## Key Insights
- Fraud transactions account for a small but significant percentage of total transactions.
- Certain merchants and locations show higher fraud activity.
- Some devices are used by multiple users, indicating potential fraud rings.
- High-value transactions are more frequently associated with fraud attempts.

---

## Future Improvements
- Implement machine learning models for fraud detection
- Real-time fraud monitoring system
- Risk scoring for transactions
- Integration with real fintech datasets

---

## Author
**Srijan Verma**

GitHub:  
https://github.com/Srijan-14


All SQL queries are available in:
