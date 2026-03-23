## Storage Systems

In this architecture, different storage systems are used based on the type of data and the specific requirements of each goal.

A relational database (MySQL/PostgreSQL) is used as the OLTP system to store structured data such as patient records, treatments, and hospital transactions. This system supports day-to-day operations and ensures data consistency.

A Data Warehouse is used for analytical purposes such as generating monthly reports on bed occupancy and department-wise costs. It stores cleaned and aggregated data, which allows fast querying for business intelligence and reporting.

A Data Lake is included to store raw and large-scale data such as historical treatment logs and real-time ICU data. This provides flexibility for processing and is useful for training machine learning models like readmission risk prediction.

A Vector Database is used to store embeddings of patient history and clinical notes. This enables semantic search, allowing doctors to query patient information in natural language and retrieve relevant results even if exact keywords are not used.

---

## OLTP vs OLAP Boundary

The OLTP system (EHR database) is responsible for handling real-time transactional data such as patient updates, prescriptions, and hospital operations. This system focuses on fast and consistent writes.

The OLAP system begins after the ETL process, where data is extracted from the OLTP system and transformed before being loaded into the Data Warehouse and Data Lake. These systems are optimized for analytical queries and machine learning workloads.

This separation ensures that operational workloads do not affect analytical performance. Hospital staff can continue using the system smoothly, while reporting and AI models run independently.

---

## Trade-offs

One major trade-off in this architecture is increased system complexity. Using multiple systems such as OLTP databases, Data Lake, Data Warehouse, and Vector Database makes the system harder to manage.

However, this trade-off is necessary to achieve better scalability and performance. Each system is designed for a specific purpose, which improves efficiency.

To handle this complexity, centralized data pipelines and proper monitoring can be used. Regular data synchronization ensures that analytical systems stay updated without affecting real-time operations.