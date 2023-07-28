-- Create dimension table softcartDimDate
CREATE TABLE softcartDimDate (
    dateid INT PRIMARY KEY,
    year INT,
    quarter INT,
    month INT,
    monthname VARCHAR(255),
    day INT,
    weekday VARCHAR(255)
);

-- Create dimension table softcartDimCategory
CREATE TABLE softcartDimCategory (
    categoryid INT PRIMARY KEY,
    categoryname VARCHAR(255)
);

-- Create dimension table softcartDimItem
CREATE TABLE softcartDimItem (
    itemid INT PRIMARY KEY,
    itemname VARCHAR(255),
    categoryid INT,
    FOREIGN KEY (categoryid) REFERENCES softcartDimCategory(categoryid)
);


-- Create dimension table softcartDimCountry
CREATE TABLE softcartDimCountry (
    countryid INT PRIMARY KEY,
    countryname VARCHAR(255)
);

-- Create fact table softcartFactSales
CREATE TABLE softcartFactSales (
    salesid INT PRIMARY KEY,
    dateid INT,
    itemid INT,
    countryid INT,
    unitsold INT,
    totalsales DECIMAL(10,2),
    FOREIGN KEY (dateid) REFERENCES softcartDimDate(dateid),
    FOREIGN KEY (itemid) REFERENCES softcartDimItem(itemid),
    FOREIGN KEY (countryid) REFERENCES softcartDimCountry(countryid)
);
