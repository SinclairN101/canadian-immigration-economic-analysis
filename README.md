# Canada Immigration Economy Analysis 🇨🇦

An analytics engineering and data science project exploring the relationship between immigration and economic performance in Canada using dbt, BigQuery, and public economic datasets.

## Business Question

> **Has immigration actually boosted the Canadian economy?**

This project analyzes immigration trends alongside key Canadian economic indicators including labour markets, housing affordability, productivity, GDP growth, and monetary policy.

The goal is to build a clean, scalable analytics workflow that transforms raw public datasets into reliable models and reporting layers for analysis and visualization.

> ⚠️ This project is currently in the initial setup and modeling phase. Development is being managed through Git branches as data models, transformations, dashboards, and analytical workflows continue to evolve.

## Contributors

### Nathan
GitHub: https://github.com/SinclairN101

Responsible for the analytics engineering portion of the project including:
- Data extraction and loading
- Data transformation and modeling using dbt
- Dimensional modeling
- BigQuery warehouse architecture
- Data quality testing and documentation
- BI dashboard development using Sigma Computing

### Roland
GitHub: https://github.com/Roland-Addy

Responsible for the data science and analytical research portion of the project including:
- Statistical analysis
- Economic trend analysis
- Predictive modeling
- Hypothesis testing
- Research findings and interpretation

## Tech Stack

![BigQuery](https://img.shields.io/badge/BigQuery-669DF6?style=for-the-badge&logo=googlebigquery&logoColor=white)
![dbt](https://img.shields.io/badge/dbt-FF694B?style=for-the-badge&logo=dbt&logoColor=white)
![Sigma Computing](https://img.shields.io/badge/Sigma_Computing-276EF1?style=for-the-badge&logo=sigma&logoColor=white)

## Data Sources

| Source | Description |
|---|---|
| **Statistics Canada** | Population estimates, migration flows, GDP per capita, labour productivity, unemployment, shelter CPI |
| **Bank of Canada** | Overnight policy interest rate |
| **FRED (Federal Reserve Economic Data)** | US GDP growth and macroeconomic control indicators |
| **Canadian Real Estate Association (CREA)** | MLS Home Price Index |

## Data Domains

| Domain | Key Metrics |
|---|---|
| **Immigration** | Population growth, NPRs, international migration |
| **Labour Markets** | Unemployment, job vacancies, labour productivity |
| **Housing** | MLS HPI, shelter CPI |
| **Macroeconomics** | GDP per capita, US GDP growth |
| **Monetary Policy** | Bank of Canada policy rate |

## Architecture

```text
Raw Data
    ↓
dbt Staging Models
    ↓
Intermediate Models
    ↓
Production Fact & Dimension Tables
    ↓
BI / Dashboard Layer
```

## Project Structure

```text
canada_immigration_economy_dbt/
├── models/
│   ├── staging/
│   ├── intermediate/
│   └── marts/
│       ├── dimensions/
│       └── facts/
├── macros/
├── tests/
├── analyses/
├── seeds/
├── snapshots/
├── definitions.md
├── dbt_project.yml
└── README.md
```

## Project Goals

- Build a modern analytics engineering workflow using dbt + BigQuery
- Model Canadian economic and immigration data using dimensional modeling principles
- Create reusable transformations and documentation standards
- Explore the real economic impact of immigration using data
- Publish findings through BI dashboards and analysis