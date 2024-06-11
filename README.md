# IBM Data Engineering Professional Certificate - Capstone Project

![capstone-project.png](https://github.com/danielmschaves/ibm-data-engineering-capstone/blob/main/capstone-project.png?raw=true)

This repository contains all the files associated with the Capstone Project for the IBM Data Engineering Professional Certificate. This project provides an end-to-end demonstration of the various stages and tasks involved in a typical Data Engineering pipeline. Each part of the project is stored in its respective folder.

## Project Scenario

In the context of an e-commerce company, we go through a series of tasks that a data engineer would typically perform. This ranges from setting up and managing databases for transactional systems (OLTP) and analytical systems (OLAP), setting up NoSQL databases for unstructured data, creating ETL pipelines to move and transform data, automating tasks using Apache Airflow, to performing data analytics and prediction using Apache Spark and machine learning models.

## Directory Structure

- `MySQL-OLTP/`: This directory contains the scripts and data related to Part 1 of the project. The task is to design and implement a MySQL database for an e-commerce company. This relational database is optimized for handling online transactions.

- `MongoDB/`: This directory contains the files for Part 2 of the project. The task is to set up and manage a MongoDB NoSQL database for a e-commerce company. The flexibility and scalability of MongoDB's document model are leveraged to manage blog posts and comments effectively.

- `PostgreSQL-DW/`: This directory hosts the files for Part 3 of the project. Here, we design and implement a PostgreSQL Data Warehouse (DW) to manage the data of an e-commerce company. The DW is designed using a Star Schema, a popular schema for data warehouses, to enable efficient and intuitive data analysis.

- `DW-Reporting/`: This directory includes the scripts and data for Part 4 of the project. The task here is to generate various reports from the Data Warehouse. These reports can provide valuable insights into the sales and operations of the e-commerce company, assisting decision-makers in making informed decisions.

- `ETL/`: This directory contains the files for Part 5 of the project. In this part, Python scripts are written to automate the extraction, transformation, and loading (ETL) of data between the MySQL, IBM DB2, and PostgreSQL databases. Automating these tasks reduces the manual effort required and minimizes the risk of errors.

- `Pipeline-Airflow/`: This directory hosts the files for Part 6 of the project. In this part, we author an Apache Airflow data pipeline to automate the tasks of extracting, transforming, and loading data. Airflow allows for robust scheduling and monitoring of these tasks.

- `Spark-ML/`: This directory contains the scripts and data for Part 7 of the project. Here, Apache Spark is used to analyze search terms on the e-commerce web server. Furthermore, a pre-trained machine learning model is used to predict sales for the year 2023, demonstrating the use of machine learning in data analytics and forecasting.

## Running the Project

Each folder contains a `README.md` file with detailed instructions on how to run the corresponding part of the project. You need to have the respective software and dependencies installed on your machine. 

Please follow the instructions in each `README.md` to understand the goals of each part of the project, and how to execute the scripts and commands.

## Conclusion

Throughout this project, a wide variety of data engineering tasks and scenarios were explored. This ranged from setting up databases, designing and implementing a data warehouse, creating ETL pipelines, and applying machine learning models for data analytics and forecasting. This project provides a comprehensive overview of the roles, responsibilities, and tasks a data engineer would typically perform.

## License

This project is licensed under the terms of the MIT license.

## Contributing

Contributions to this project are welcome. Please open a pull request with your changes.
