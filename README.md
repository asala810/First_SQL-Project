# 📊 SQL Server Analysis Project

## 📌 Overview
This project is built using **SQL Server Analysis Services (SSAS)** to analyze business data, design multidimensional models, and generate insightful reports for decision-making.  

The project includes:
- Importing and transforming data from **CSV files into SQL Server**.
- Data integration from multiple sources.
- Building OLAP cubes.
- Creating measures, KPIs, and hierarchies.
- Generating reports and dashboards for business insights.

---

## 🛠️ Tools & Technologies
- Microsoft SQL Server
- SQL Server Analysis Services (SSAS)
- SQL Server Management Studio (SSMS)
- SQL Server Data Tools (SSDT)
- Excel / Power BI (for reporting)
- CSV datasets (converted into SQL Server tables)

---

## 🚀 Features
- Importing raw data from CSV → SQL Server database.
- Data cleaning and preprocessing.
- Fact and Dimension tables design.
- Building OLAP cubes and measures.
- KPIs and calculated members.
- Example dashboards for business reporting.

---

## 📂 Project Structure
- `Data Sources/` → Original CSV files.
- `SQL Database/` → Scripts for creating and populating tables.
- `SSAS Project/` → Solution files for SQL Server Analysis Services.
- `Reports/` → Screenshots or exports of dashboards.
- `Documentation/` → Additional explanations and diagrams.

---

## 🔄 Steps to Import and Analyze Data

### 1️⃣ Import CSV to SQL Server
1. Open **SQL Server Management Studio (SSMS)**.
2. Right-click on the database → **Tasks** → **Import Flat File**.
3. Select the CSV file you want to import.
4. Configure:
   - Destination: Your SQL Server database.
   - Table name: Choose or create a new table.
   - Columns: Verify data types (e.g., INT, VARCHAR, DATE).
5. Finish the wizard → Data will be imported into SQL Server table(s).

---

### 2️⃣ Data Cleaning & Transformation
- Checked for missing or duplicate records.
- Changed data types where needed (e.g., string → date).
- Created **Primary Keys** and **Foreign Keys** for relationships.
- Built **Fact** and **Dimension** tables.

---

### 3️⃣ Building the Analysis Model
1. Open **SQL Server Data Tools (SSDT)**.
2. Create a new **SSAS Project**.
3. Connect to the SQL Server database (data source).
4. Define **Data Source View (DSV)**.
5. Build **Cubes**:
   - Added measures (e.g., Sales, Quantity, Profit).
   - Created hierarchies (e.g., Year → Quarter → Month).
   - Defined KPIs and calculated members.

---

### 4️⃣ Reporting & Analysis
- Connected Excel / Power BI to SSAS Cubes.
- Built pivot tables and charts.
- Created dashboards showing KPIs and trends.
- Exported sample reports and screenshots (saved in `Reports/` folder).

---


## 🤝 Contribution
If you'd like to contribute, feel free to fork this repo and submit a pull request.  

---

## 📧 Contact
Created by ** Asala Shawky **  
📩 asalashawkyhana810@gmail.com
