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

