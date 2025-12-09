-- Dimension tables

CREATE TABLE CustomerDim (
    CustomerID INTEGER PRIMARY KEY,
    CustomerName TEXT,
    Gender TEXT,
    AgeGroup TEXT,
    Country TEXT
);

CREATE TABLE ProductDim (
    ProductID INTEGER PRIMARY KEY,
    ProductName TEXT,
    Category TEXT,
    UnitPrice REAL
);

CREATE TABLE TimeDim (
    TimeID INTEGER PRIMARY KEY,
    Date TEXT,
    Month INTEGER,
    Quarter INTEGER,
    Year INTEGER
);

-- Fact table

CREATE TABLE SalesFact (
    FactID INTEGER PRIMARY KEY AUTOINCREMENT,
    CustomerID INTEGER,
    ProductID INTEGER,
    TimeID INTEGER,
    Quantity INTEGER,
    SalesAmount REAL,
    Discount REAL,
    TotalSales REAL,
    FOREIGN KEY (CustomerID) REFERENCES CustomerDim(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES ProductDim(ProductID),
    FOREIGN KEY (TimeID) REFERENCES TimeDim(TimeID)
);
