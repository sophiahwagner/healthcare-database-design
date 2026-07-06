# Clinic Table Structures

This repository contains the SQL scripts used to build and manage the core database tables for a medical clinic. It covers setting up table schemas, linking tables together, and updating live records.

## Table Blueprints & Links

The scripts create an interconnected system of tables that prevent data-entry mistakes using standard SQL constraints:
* **Required Fields:** Uses `NOT NULL` so critical details like clinic or patient names cannot be left blank.
* **Duplicate Prevention:** Uses `UNIQUE` to ensure serial numbers and records are completely distinct.
* **Automatic Timestamps:** Uses `DEFAULT CURRENT_TIMESTAMP` to log exactly when a patient registers without requiring manual input.
* **Table Connections:** Uses `FOREIGN KEY` constraints to link tables together (such as connecting equipment or patient check-ins to a specific clinic ID) so entries cannot reference non-existent locations.

***

## Database Tasks Covered

### 1. Building and Modifying Tables (`DDL`)
* Writing `CREATE TABLE` scripts with specific data types (`INTEGER`, `TEXT`).
* Modifying existing table setups with `ALTER TABLE` to add new columns (like capacity or repair status) without losing existing data.

### 2. Managing Data (`DML`)
* Adding multiple rows of data at the same time using `INSERT INTO`.
* Correcting specific rows safely using `UPDATE ... SET` combined with `WHERE` clauses.
* Permanently removing incorrect or obsolete rows using `DELETE FROM`.

***

## Tools Used
* **SQLite:** For database creation and query execution.
* **DbVisualizer:** For writing scripts and auditing spreadsheet outputs.
