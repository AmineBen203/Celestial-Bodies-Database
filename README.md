# 🌌 Celestial Bodies Database

A relational database project built as part of the freeCodeCamp **Relational Databases Certification**. This project focuses on modeling astronomical objects such as galaxies, stars, planets, and moons using PostgreSQL.

---

## 📚 Project Overview

In this project, you will:

* Design a relational database representing a **universe of celestial bodies**
* Create multiple related tables (galaxies, stars, planets, moons)
* Use **primary keys**, **foreign keys**, and **constraints**
* Populate the database with meaningful data
* Export your database using a `.sql` dump file

The project emphasizes real-world database design concepts like relationships and normalization. ([The freeCodeCamp Forum][1])

---

## 🗂️ Database Structure

The database typically includes the following tables:

### 🌌 `galaxy`

| Column      | Description        |
| ----------- | ------------------ |
| galaxy_id   | Primary key        |
| name        | Galaxy name        |
| age         | Age of the galaxy  |
| description | Additional details |

---

### ⭐ `star`

| Column    | Description           |
| --------- | --------------------- |
| star_id   | Primary key           |
| name      | Star name             |
| galaxy_id | FK → galaxy.galaxy_id |
| size      | Size of the star      |

---

### 🪐 `planet`

| Column    | Description                      |
| --------- | -------------------------------- |
| planet_id | Primary key                      |
| name      | Planet name                      |
| star_id   | FK → star.star_id                |
| has_life  | Boolean indicating life presence |

---

### 🌙 `moon`

| Column       | Description           |
| ------------ | --------------------- |
| moon_id      | Primary key           |
| name         | Moon name             |
| planet_id    | FK → planet.planet_id |
| is_spherical | Shape indicator       |

---

## 🔗 Relationships

The database follows a hierarchical structure:

* One **galaxy** → many **stars**
* One **star** → many **planets**
* One **planet** → many **moons**

These relationships are enforced using **foreign keys**, ensuring data integrity across tables. ([The freeCodeCamp Forum][1])

---

## ⚙️ Technologies Used

* **PostgreSQL** – relational database system
* **SQL** – schema creation and data queries
* **pg_dump** – exporting database structure
* **Git & GitHub** – version control

---

## 🚀 Getting Started

### 1. Clone the repository

```bash id="a12x9k"
git clone https://github.com/your-username/celestial-bodies-database.git
cd celestial-bodies-database
```

### 2. Import the database

```bash id="b29dm1"
psql -U postgres < universe.sql
```

### 3. Connect to the database

```bash id="c83k2p"
psql -U postgres
\c universe
```

---

## 📁 Project Structure

```id="d77sl9"
.
├── universe.sql
├── README.md
```

---

## ✅ Requirements

* PostgreSQL installed locally
* Basic understanding of SQL and relational databases

---

## 🧠 What You’ll Learn

* Designing normalized relational schemas
* Using primary and foreign keys correctly
* Structuring hierarchical data relationships
* Writing clean, maintainable SQL
* Exporting and sharing databases

---

## 📜 License

This project is open-source and available under the MIT License.

---

## 🙌 Acknowledgements

* freeCodeCamp for the project and curriculum
* The developer community for support and discussions

---

## ⭐ Final Notes

This project is a strong foundation for understanding how real-world systems (like space data models) are structured in databases. Mastering it will help you move toward backend development, data engineering, and system design.

