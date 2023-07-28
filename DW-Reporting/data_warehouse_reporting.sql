-- Loading data into DimDate
COPY DimDate FROM '/path/to/DimDate.csv' DELIMITER ',' CSV HEADER;

-- Loading data into DimCategory
COPY DimCategory FROM '/path/to/DimCategory.csv' DELIMITER ',' CSV HEADER;

-- Loading data into DimCountry
COPY DimCountry FROM '/path/to/DimCountry.csv' DELIMITER ',' CSV HEADER;

-- Loading data into FactSales
COPY FactSales FROM '/path/to/FactSales.csv' DELIMITER ',' CSV HEADER;

-- Grouping sets query
SELECT dc.country, dca.category, SUM(fs.amount) as Total_Sales
FROM schema."FactSales" as fs
JOIN schema."DimCountry" as dc ON fs.countryid = dc.countryid
JOIN schema."DimCategory" as dca ON fs.categoryid = dca.categoryid
GROUP BY GROUPING SETS ((dc.country, dca.category), ());


-- Rollup query
SELECT dd.Year, dc.country, SUM(fs.amount) as Total_Sales
FROM schema."FactSales" as fs
JOIN schema."DimCountry" as dc ON fs.countryid = dc.countryid
JOIN schema."DimDate" as dd ON fs.dateid = dd.dateid
GROUP BY ROLLUP (dd.Year, dc.country);


-- Cube query
SELECT dd.Year, dc.country, AVG(fs.amount) as Average_Sales
FROM schema."FactSales" as fs
JOIN schema."DimCountry" as dc ON fs.countryid = dc.countryid
JOIN schema."DimDate" as dd ON fs.dateid = dd.dateid
GROUP BY CUBE (dd.Year, dc.country);


-- Creation of MQT
CREATE MATERIALIZED VIEW total_sales_per_country AS
SELECT dc.country, SUM(fs.amount) as Total_Sales
FROM schema."FactSales" as fs
JOIN schema."DimCountry" as dc ON fs.countryid = dc.countryid
GROUP BY dc.country;

