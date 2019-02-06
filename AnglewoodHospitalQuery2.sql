USE db_Hospital;

CREATE TABLE tbl_Doctors (
	EmployeeID int identity(1000,1) NOT NULL PRIMARY KEY,
	EmployeeName varchar(255) NOT NULL,
	Title varchar(100),
	Experience int,
);

CREATE TABLE tbl_Nurses (
	EmployeeID int identity(2000,1) NOT NULL PRIMARY KEY,
	EmployeeName varchar(255) NOT NULL,
	Title varchar(100),
	Experience int,
);

CREATE TABLE tbl_Departments (
	DepartID int NOT NULL PRIMARY KEY,
	DepartName varchar(255) NOT NULL,
	DepartHead int NOT NULL FOREIGN KEY REFERENCES tbl_Doctors(ID)
);

CREATE TABLE tbl_Procedure (
	ProcID int NOT NULL PRIMARY KEY,
	ProcName varchar(255) NOT NULL,
	ProcPrice money NOT NULL
);

CREATE TABLE tbl_Patient (
	ID int NOT NULL PRIMARY KEY,
	FirstName varchar(70) NOT NULL,
	LastName varchar(70) NOT NULL,
	Address varchar(255) NOT NULL,
	Phone varchar(255) NOT NULL,
	PCP int NOT NULL FOREIGN KEY REFERENCES tbl_Physician(ID)
);

CREATE TABLE tbl_Room (
	Number int NOT NULL PRIMARY KEY,
	AttendingPhysicianID int FOREIGN KEY REFERENCES tbl_Physician(ID),
	DepartmentID int NOT NULL FOREIGN KEY REFERENCES tbl_Department(ID),
	RoomType varchar(255) NOT NULL,
	Status varchar(25) NOT NULL
	);

CREATE TABLE tbl_Treatment (
	TreatmentCode int NOT NULL PRIMARY KEY,
