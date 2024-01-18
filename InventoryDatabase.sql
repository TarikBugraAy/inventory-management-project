CREATE DATABASE inventorymanagement;
USE inventorymanagement;

-- Create Categories Table
CREATE TABLE `Categories` (
    `CategoryID` INT NOT NULL AUTO_INCREMENT,
    `CategoryName` VARCHAR(255) NOT NULL,
    `Description` VARCHAR(255),
    PRIMARY KEY (`CategoryID`)
);

-- Create Suppliers Table
CREATE TABLE `Suppliers` (
    `SupplierID` INT NOT NULL AUTO_INCREMENT,
    `SupplierName` VARCHAR(255) NOT NULL,
    `ContactName` VARCHAR(255),
    `ContactTitle` VARCHAR(255),
    `Address` VARCHAR(500),
    `Email` VARCHAR(255),
    PRIMARY KEY (`SupplierID`),
    UNIQUE (`Email`)
);

-- Create Product Table
CREATE TABLE `Product` (
    `ProductID` INT NOT NULL AUTO_INCREMENT,
    `ProductName` VARCHAR(255) NOT NULL,
    `UnitPrice` DECIMAL(10, 2),
    `Quantity` INT,
    PRIMARY KEY (`ProductID`)
);

-- Create ProductSuppliers Table for Many-to-Many Relationship
CREATE TABLE `ProductSuppliers` (
    `ProductID` INT NOT NULL,
    `SupplierID` INT NOT NULL,
    PRIMARY KEY (`ProductID`, `SupplierID`),
    FOREIGN KEY (`ProductID`) REFERENCES `Product`(`ProductID`),
    FOREIGN KEY (`SupplierID`) REFERENCES `Suppliers`(`SupplierID`)
);

-- Create User Table
CREATE TABLE `Users` (
    `UserID` INT NOT NULL AUTO_INCREMENT,
    `Username` VARCHAR(255) NOT NULL,
    `Password` VARCHAR(255) NOT NULL,  -- Plain text password for simplicity in a school project
    `Email` VARCHAR(255),
    `Role` VARCHAR(255),
    PRIMARY KEY (`UserID`),
    UNIQUE (`Email`)
);

-- Create Orders Table
CREATE TABLE `Orders` (
    `OrderID` INT NOT NULL AUTO_INCREMENT,
    `OrderDate` DATETIME,
    `SupplierID` INT NOT NULL,
    `ProductID` INT NOT NULL,
    `UserID` INT,
    `OrderQuantity` INT,
    `UnitCost` DECIMAL(10, 2),
    PRIMARY KEY (`OrderID`),
    FOREIGN KEY (`SupplierID`) REFERENCES `Suppliers`(`SupplierID`),
    FOREIGN KEY (`ProductID`) REFERENCES `Product`(`ProductID`),
    FOREIGN KEY (`UserID`) REFERENCES `Users`(`UserID`)
);

-- Create Sales Table
CREATE TABLE `Sales` (
    `SaleID` INT NOT NULL AUTO_INCREMENT,
    `SalesDate` DATETIME,
    `ProductID` INT NOT NULL,
    `UserID` INT,
    `SaleQuantity` INT,
    PRIMARY KEY (`SaleID`),
    FOREIGN KEY (`ProductID`) REFERENCES `Product`(`ProductID`),
    FOREIGN KEY (`UserID`) REFERENCES `Users`(`UserID`)
);

CREATE TABLE `ProductCategory` (
    `ProductID` INT NOT NULL,
    `CategoryID` INT NOT NULL,
    PRIMARY KEY (`ProductID`, `CategoryID`),
    FOREIGN KEY (`ProductID`) REFERENCES `Product`(`ProductID`),
    FOREIGN KEY (`CategoryID`) REFERENCES `Categories`(`CategoryID`)
);



-- Create Login Log Table
CREATE TABLE `LoginLog` (
    `LogID` INT NOT NULL AUTO_INCREMENT,
    `UserID` INT,
    `LoginTime` DATETIME NOT NULL,
    `LoginSuccess` BOOLEAN NOT NULL,
    `Username` VARCHAR(255),
    `UserRole` VARCHAR(255),
    PRIMARY KEY (`LogID`),
    FOREIGN KEY (`UserID`) REFERENCES `Users`(`UserID`)
);
