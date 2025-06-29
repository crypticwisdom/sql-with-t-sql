# What is SQL?

**SQL (Structured Query Language)** is a language used to communicate with relational databases. It allows users to store, retrieve, and manipulate data using high-level commands that describe **what** to do—not **how** to do it.

* SQL is **not** a general-purpose programming language like Python. It is a **domain-specific language** designed specifically for working with data in relational databases.

* There is a standardized version of SQL, known as **ANSI SQL** (or Standard SQL), which defines the core syntax and operations (e.g., querying, inserting, updating data) that are supported across most relational database management systems (RDBMS), such as PostgreSQL, MySQL, SQLite, SQL Server, and Oracle.

* While **ANSI SQL** provides a common foundation, **each RDBMS also implements its own proprietary SQL extensions** to support advanced or system-specific operations. For example:

  * **PostgreSQL** supports ANSI SQL but also includes advanced features through its own extension called **PL/pgSQL** (Procedural Language/PostgreSQL).
  * **SQL Server** supports ANSI SQL and extends it with **T-SQL** (Transact-SQL), which adds procedural programming constructs, error handling, and system functions specific to the SQL Server engine.

## TERMINOLOGIES

### **1. RDBMS (Relational Database Management System)**

An **RDBMS** is a software system used to **create, manage, and interact with relational databases**. It stores data in **tables (relations)**, enforces rules (like constraints), and allows querying using **SQL**. It consits of the engine, ui and administrative 
**Examples**: PostgreSQL, SQL Server, MySQL, Oracle.

**🔧 Components of an RDBMS:**

Database Engine – The core service that processes SQL commands, handles storage, indexing, caching, and query optimization.

Query Processor – Interprets and optimizes SQL commands for execution.

Storage Manager – Manages how data is stored on disk (tables, indexes, metadata).

Transaction Manager – Ensures transactions are processed reliably and securely.

User Interface – Command-line tools or graphical applications (e.g., pgAdmin, SSMS, MySQL Workbench).

Administrative Tools – For managing users, backups, monitoring, and security.

---

### **2. Database**

A **database** is a **container or collection** of related data, stored and organized in **tables** within an RDBMS.
Think of it like a **folder** that holds many spreadsheets (tables) related to a specific application or system (e.g., a banking system).

---

### **3. Table**

A **table** is a structure within a database that **organizes data into rows and columns**.
It looks like a spreadsheet: each row is a record, and each column is a field.
For example: A `Customers` table with columns like `CustomerID`, `Name`, `Email`.

---

### **4. Row (also called a Record)**

A **row** represents a **single entry or item** in a table.
Each row contains **related data values** across different columns.
E.g., a single customer’s details (ID, Name, Email) in a table.

---

### **5. Column (also called a Field)**

A **column** defines a **specific attribute** or data type for a table.
Each column has a **name** and a **data type**, and stores a specific type of information for all rows.
E.g., the `Email` column will store email addresses for all customers.

---

### **6. Record vs Field**

* A **record** is just another word for a row (complete set of data about an item).
* A **field** is an individual cell or data value at the **intersection** of a row and a column.

---

### 🧠 **How They Relate (Analogy)**

Imagine a **spreadsheet** in Excel:

* The **spreadsheet** = a **Table**
* Each **sheet file** = a **Database**
* Each **row** = a **Record** (e.g., one student)
* Each **column** = a **Field** (e.g., Name, Age, Grade)
* All these sheets are managed by **Excel** = the **RDBMS**

---



## 📚 **SQL Language Subcategories (with Simple Details)**

### 1. **DDL – Data Definition Language**

> Used to **define or modify the structure** of database objects like tables and schemas.

* `CREATE` – Create new tables or databases
* `ALTER` – Modify existing table structure
* `DROP` – Delete tables or databases
* `TRUNCATE` – Remove all rows from a table (faster than `DELETE`)
* `RENAME` – Rename a table or column

🧠 *Think of DDL as setting up the "blueprint" of your database.*

---

### 2. **DML – Data Manipulation Language**

> Used to **insert, update, delete, or retrieve** the actual data inside tables.

* `SELECT` – Retrieve data
* `INSERT` – Add new rows
* `UPDATE` – Change existing data
* `DELETE` – Remove rows

🧠 *DML works with the data inside the structure created by DDL.*

---

### 3. **DCL – Data Control Language**

> Used to **control permissions and access** to data in the database.

* `GRANT` – Give access/privileges to users
* `REVOKE` – Remove previously granted access

🧠 *DCL keeps your data secure by controlling who can do what.*

---

### 4. **TCL – Transaction Control Language**

> Used to **manage changes** made by DML statements and ensure **data integrity**.

* `BEGIN` – Start a transaction
* `COMMIT` – Save changes permanently
* `ROLLBACK` – Undo changes
* `SAVEPOINT` – Set a point to roll back to later

🧠 *TCL is useful when multiple actions must succeed or fail together (e.g., transferring money).*

---

### 5. **DQL – Data Query Language**

> Focuses on **reading/querying** data.

* `SELECT` – Read data from one or more tables

🧠 *Some sources group `SELECT` under DML, but DQL treats it separately because it doesn't modify data.*

---
