#!/bin/bash

# Export all the rows in the sales_data table to a file named sales_data.sql
mysqldump -u [username] -p[password] sales sales_data > sales_data.sql
