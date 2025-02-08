# SQL Project

## Overview
This project contains various SQL scripts for different operations such as union operations, creating views, and calculating VAT for invoices.

## Files

### `script/union.sql`
- **Description**: Contains SQL queries to perform `UNION` and `UNION ALL` operations on the `customers` table.
- **Usage**:
  - `UNION ALL`: Appends two tables with the same structure, allowing duplicates.
  - `UNION`: Appends two tables with the same structure, not allowing duplicates.

### `script/view.sql`
- **Description**: Contains SQL scripts to create and manage views.
- **Usage**:
  - Create views such as `invoice_jan2009` and `usa_customers`.
  - Select data from these views.
  - Drop views when they are no longer needed.

### `script/math.sql`
- **Description**: Contains SQL queries to perform mathematical operations.
- **Usage**:
  - Calculate the VAT for each invoice in the `invoices` table.

## How to Use
1. Open your SQL client or IDE (e.g., DataGrip).
2. Load the SQL scripts from the `script` directory.
3. Execute the scripts as needed to perform the desired operations.

## Requirements
- SQL database with tables `customers` and `invoices`.
- SQL client or IDE (e.g., DataGrip).

## License
This project is licensed under the MIT License.
