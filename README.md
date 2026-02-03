# Walmart Data Analysis: End-to-End SQL + Python Project P-9

![Project Pipeline](docs/walmart_pipline.png)

## 📌 Project Overview

This project is an end-to-end data analysis solution designed to extract critical business insights from Walmart sales data. We utilize **Python** for data processing and analysis, **SQL** (MySQL and PostgreSQL) for advanced querying, and structured problem-solving techniques to solve key business questions. 

The project is ideal for data analysts looking to develop skills in data manipulation, SQL querying, and data pipeline creation.

---

## 🚀 Project Steps

### 1. Set Up the Environment
   - **Tools Used**: Visual Studio Code (VS Code), Python, SQL (MySQL and PostgreSQL).
   - **Goal**: Create a structured workspace within VS Code and organize project folders for smooth development and data handling.

### 2. Set Up Kaggle API
   - **API Setup**: Obtain your Kaggle API token from [Kaggle](https://www.kaggle.com/) by navigating to your profile settings and downloading the JSON file.
   - **Configure Kaggle**: 
      - Place the downloaded `kaggle.json` file in your local `.kaggle` folder.
      - Use the command `kaggle datasets download -d <dataset-path>` to pull datasets directly into your project.

### 3. Download Walmart Sales Data
   - **Data Source**: Use the Kaggle API to download the Walmart sales datasets from Kaggle.
   - **Dataset Link**: [Walmart Sales Dataset](https://www.kaggle.com/datasets/sumdata/walmart-10k-sales-datasets/settings)
   - **Storage**: Save the data in the `data/` folder for easy reference and access.

### 4. Install Required Libraries and Load Data
   - **Libraries**: Install necessary Python libraries using:
     ```bash
     pip install pandas numpy sqlalchemy mysql-connector-python psycopg2
     ```
   - **Loading Data**: Read the data into a Pandas DataFrame for initial analysis and transformations.

### 5. Explore the Data
   - **Goal**: Conduct an initial data exploration to understand data distribution, check column names, types, and identify potential issues.
   - **Analysis**: Use functions like `.info()`, `.describe()`, and `.head()` to get a quick overview of the data structure and statistics.

### 6. Data Cleaning
   - **Remove Duplicates**: Identify and remove duplicate entries to avoid skewed results.
   - **Handle Missing Values**: Drop rows or columns with missing values if they are insignificant; fill values where essential.
   - **Fix Data Types**: Ensure all columns have consistent data types (e.g., dates as `datetime`, prices as `float`).
   - **Currency Formatting**: Use `.replace()` to handle and format currency values for analysis.
   - **Validation**: Check for any remaining inconsistencies and verify the cleaned data.

### 7. Feature Engineering
   - **Create New Columns**: Calculate the `Total Amount` for each transaction by multiplying `unit_price` by `quantity` and adding this as a new column.
   - **Enhance Dataset**: Adding this calculated field will streamline further SQL analysis and aggregation tasks.

### 8. Load Data into MySQL and PostgreSQL
   - **Set Up Connections**: Connect to MySQL and PostgreSQL using `sqlalchemy` and load the cleaned data into each database.
   - **Table Creation**: Set up tables in both MySQL and PostgreSQL using Python SQLAlchemy to automate table creation and data insertion.
   - **Verification**: Run initial SQL queries to confirm that the data has been loaded accurately.

### 9. SQL Analysis: Complex Queries and Business Problem Solving
   - **Business Problem-Solving**: Write and execute complex SQL queries to answer critical business questions, such as:
Based on the PDF content and SQL queries you provided, here is the updated **SQL Analysis** section. This is tailored to specific business problems involving window functions, date extraction, and revenue calculations.
   - **Analyze Payment Methods and Sales:** Determine the number of transactions and total quantity sold for each payment method to understand customer preferences.
   - **Identify the Highest-Rated Category in Each Branch:** Use window functions to find which product category has the highest average rating within specific store branches.
   - **Determine the Busiest Day for Each Branch:** Analyze transaction timestamps to identify which day of the week generates the highest volume for each branch.
   - **Calculate Total Quantity Sold by Payment Method:** Track sales volume specifically by payment type.
   - **Analyze Category Ratings by City:** Calculate the average, minimum, and maximum customer ratings for product categories, grouped by city.
   - **Calculate Total Profit by Category:** Compute total profit using the formula `(unit_price * quantity * profit_margin)` and rank categories from most to least profitable.
   - **Determine the Most Common Payment Method per Branch:** Identify the preferred payment method for each branch using ranking functions.
   - **Analyze Sales Shifts Throughout the Day:** Categorize sales into "Morning," "Afternoon," and "Evening" shifts using `CASE` statements to aid in staff management.
   - **Identify Branches with Highest Revenue Decline Year-Over-Year:** Compare 2022 vs. 2023 revenue to identify branches experiencing the most significant decrease ratio.
   - **Documentation**: Keep clear notes of each query's objective, approach, and results.

### 10. Project Publishing and Documentation
   - **Documentation**: Maintain well-structured documentation of the entire process in Markdown or a Jupyter Notebook.
   - **Project Publishing**: Publish the completed project on GitHub or any other version control platform, including:
     - The `README.md` file (this document).
     - Jupyter Notebooks (if applicable).
     - SQL query scripts.
     - Data files (if possible) or steps to access them.
     - Business Problems.

---

## 💻 Requirements

- **Python 3.11**
- **SQL Databases**: MySQL, PostgreSQL
- **Python Libraries**:
  - `pandas`, `numpy`, `sqlalchemy`, `mysql-connector-python`, `psycopg2`
- **Kaggle API Key** (for data downloading)

---

## 🏁 Getting Started

1. **Clone the repository**:
   ```bash
   git clone <repo-url>

   ```
2. Install Python libraries:
   ```bash
   pip install -r requirements.txt
   ```
3. Set up your Kaggle API, download the data, and follow the steps to load and analyze.
---

## Project Structure

```plaintext
├── .git/               # Git version control metadata
├── .vscode/            # VS Code editor settings and configurations
├── data/               # Raw and processed datasets
├── docs/               # Project documentation and assets
├── notebooks/          # Jupyter notebooks for analysis and experimentation
├── scripts/            # Python scripts and utility code
├── environment.txt     # List of dependencies/packages required to run the project
├── LICENSE             # License information
└── README.md           # Project overview and instructions
```
---

## Results and Insights

This section will include your analysis findings:
- **Sales Insights**: Key categories, branches with highest sales, and preferred payment methods.
- **Profitability**: Insights into the most profitable product categories and locations.
- **Customer Behavior**: Trends in ratings, payment preferences, and peak shopping hours.

## Future Enhancements

Possible extensions to this project:
- Integration with a dashboard tool (e.g., Power BI or Tableau) for interactive visualization.
- Additional data sources to enhance analysis depth.
- Automation of the data pipeline for real-time data ingestion and analysis.

---

## License

This project is licensed under the MIT License. 

---

## Acknowledgments

- **Data Source**: Kaggle’s Walmart Sales Dataset
- **Inspiration**: Walmart’s business case studies on sales and supply chain optimization.

---

## 📬 Contact

**Dara Sum**
Data Analyst | SQL & Power BI
<a href="https://www.linkedin.com/in/darasum-data" target="_blank" 
   style="display: inline-block; padding: 10px 20px; background-color: #0A66C2; 
          color: white; text-decoration: none; border-radius: 5px; font-weight: bold;">
  Connect on LinkedIn
</a>
