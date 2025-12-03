Architecture Diagram
                 ┌─────────────────────────────┐
                 │        Source Data           │
                 │  (CSV, JSON, API Streams)    │
                 └──────────────┬──────────────┘
                                │ Ingestion
                                ▼
                 ┌─────────────────────────────┐
                 │     Databricks Bronze       │
                 │  Raw Delta Tables (Landing) │
                 │  - No transformations       │
                 └──────────────┬──────────────┘
                                │ Clean & Refine
                                ▼
                 ┌─────────────────────────────┐
                 │     Databricks Silver       │
                 │  Curated Delta Tables       │
                 │  - Cleansed                │
                 │  - Standardized            │
                 │  - Validated               │
                 └──────────────┬──────────────┘
                                │ Transformation (dbt)
                                ▼
                 ┌─────────────────────────────┐
                 │            dbt               │
                 │  Models:                     │
                 │   - bronze_*                 │
                 │   - silver_*                 │
                 │                               │
                 │  Features Used:               │
                 │   - ref()                     │
                 │   - sources()                 │
                 │   - tests                     │
                 │   - documentation             │
                 └──────────────┬──────────────┘
                                │ Build & Run
                                ▼
                 ┌─────────────────────────────┐
                 │     Databricks SQL Warehouse │
                 │ - Executes dbt queries        │
                 │ - Computes models             │
                 │ - Stores results as Delta     │
                 └──────────────┬──────────────┘
                                │ Serve Data
                                ▼
                 ┌─────────────────────────────┐
                 │      Analytics / BI          │
                 │  PowerBI / Tableau / SQL      │
                 │  - Dashboards                 │
                 │  - Reporting                  │
                 └─────────────────────────────┘


# Databricks + dbt Data Engineering Pipeline

This repository showcases a simple, **data engineering project** built using **Databricks**, **dbt**, and **Delta Lake**.  
It highlights my ability to design, build, and run ELT pipelines on a Lakehouse architecture using modern tooling.


---

## 🚀 Project Overview

This project demonstrates:

- End-to-end **dbt + Databricks** integration  
- Bronze → Silver ELT pipeline using Delta Lake  
- Modular SQL models using dbt’s ref(), sources, and macros  
- Reproducible environment using `uv`, `pyproject.toml`, and `requirements.txt`  
- Clean folder structure, version control, and maintainable code practices

---

## 🗂️ Repository Structure
DBT/
├── shivdbttut/ # Main dbt project
│ ├── models/ # Bronze/Silver dbt models
│ ├── macros/
│ ├── tests/
│ └── dbt_project.yml
│
├── logs/ # dbt logs
├── pyproject.toml # Python dependencies (uv)
├── requirements.txt # Python deps (pip)
└── README.md


