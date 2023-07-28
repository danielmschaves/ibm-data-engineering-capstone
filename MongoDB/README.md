## Part 2: NoSQL Database Querying

This part of the project involves working with a NoSQL database (MongoDB). The tasks completed in this part include:

- Importing data from `catalog.json` into a MongoDB database named `catalog` and a collection named `electronics`.
- Listing all the databases.
- Listing all the collections in the `catalog` database.
- Creating an index on the field `type`.
- Writing a query to find the count of laptops.
- Writing a query to find the number of smartphones with a screen size of 6 inches.
- Writing a query to find out the average screen size of smartphones.
- Exporting the fields `_id`, `type`, and `model` from the `electronics` collection into a file named `electronics.csv`.

The MongoDB commands used to perform these tasks are included in the `mongodb-commands.md` file in this repository.

# Part 2: NoSQL Database Setup with MongoDB

In this section of the project, we utilize MongoDB, a NoSQL database, to manage our e-commerce catalog data. The tasks cover a wide range of MongoDB operations, from importing data to running sophisticated queries.

## Tasks Overview:

1. **Environment Setup**:
   - Verify if tools `mongoimport` and `mongoexport` are available.
   - Download the `catalog.json` file for use with MongoDB.

2. **MongoDB Operations**:
   - Import the `catalog.json` file into a MongoDB database named `catalog` and into a collection named `electronics`.
   - List all available databases and collections within the `catalog` database.
   - Create an index on the field `type` for efficient querying.
   - Conduct several queries, including counting specific types of products and calculating averages.
   - Export specific fields from the `electronics` collection into a CSV file.

## Files in this Repository:

- **setupMongo.sh**: Script for setting up MongoDB tools and downloading the required data file.
- **mongoOperations.sh**: Script containing MongoDB commands for the tasks mentioned above.
- **queries.js**: MongoDB queries used in this section.

## Screenshots:

Screenshots provide visual proof of successful completion of the tasks. They are named accordingly, such as `mongoimport.jpg`, `list-dbs.jpg`, and so on. 

---

To execute the tasks, follow the scripts provided and refer to the screenshots for expected outcomes.
