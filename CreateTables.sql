 CREATE TABLE Addresses(
	AddressesID int  NOT NULL,
	EmployeeID int NULL,
	AddressLine1 varchar(60) NOT NULL,
	AddressLine2 varchar(60) NULL,
	City varchar(50) NOT NULL,
	State char(2) NOT NULL,
	Zip1 char(5) NOT NULL,
	Zip2 char(4) NULL,
    ModifiedDate date NULL,
 CONSTRAINT PK_ADDRESSES PRIMARY KEY 
(AddressesID ))

CREATE TABLE Departments(
	DepartmentID smallint NOT NULL,
	DepartmentName varchar(50) NOT NULL,
	GroupName varchar(50) NOT NULL,
	ModifiedDate date NULL,
 CONSTRAINT PK_Departments PRIMARY KEY (DepartmentID))

CREATE TABLE EmployeesDepartments(
	EmployeeID int NOT NULL,
	DepartmentID smallint NOT NULL,
	StartDate date NOT NULL,
	EndDate date NULL,
	ModifiedDate date NULL,
 CONSTRAINT PK_EmployeesDepartments PRIMARY KEY 
(
	EmployeeID ,
	DepartmentID 
))
 