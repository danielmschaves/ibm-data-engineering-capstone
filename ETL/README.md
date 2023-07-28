# IBM Data Engineering Professional Certificate - Capstone Project
## Part 5: Data Synchronization with Python and PostgreSQL

In this segment, we automate the process of syncing new data from the staging area (MySQL database) to the production data warehouse (PostgreSQL). 

Tasks undertaken:

1. **Establishing Connections**: Connected to both MySQL and PostgreSQL databases using Python.
2. **Incremental Loading**: Identified the last data point synced to the production database, fetched all newer records from staging, and inserted them into the production database.

The primary script `automation.py` and supporting scripts are available in this repository.
