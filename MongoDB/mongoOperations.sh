#!/bin/bash

# Import the catalog.json file into MongoDB
mongoimport --db catalog --collection electronics --file catalog.json

# List all databases
mongo --eval "show dbs"

# List collections in the catalog database
mongo --eval "show collections" catalog

# And so on for other commands...
