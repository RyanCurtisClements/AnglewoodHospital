USE db_Hospital;

CREATE TABLE Patients
(
	[PatID] INT IDENTITY(1000,1) NOT NULL PRIMARY KEY,
	[FirstName] VARCHAR(25) NOT NULL,
	[LastName] VARCHAR(25) NOT NULL,
	[Age] INT NOT NULL,
	[Weight] INT NOT NULL,
	[Sex] CHAR(1) NOT NULL,
	[Address] VARCHAR(50) NOT NULL,
	[PhoneNum] INT NOT NULL,
);

CREATE TABLE Doctors
(
	[DocID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[FirstName] VARCHAR(25) NOT NULL,
	[LastName] VARCHAR(25) NOT NULL,
	[Dept] VARCHAR(15) NOT NULL
);

CREATE TABLE Diagnoses
(
	[DiagCode] CHAR(3) NOT NULL PRIMARY KEY,
	[DiagName] VARCHAR(100) NOT NULL,
	[DiagDept] VARCHAR(15) NOT NULL,
	[DocCharge] INT,
	[MedCharge] INT,
	[LabCharge] INT,
	[OprtnCharge] INT,
	[RestDaysNeeded] INT
);

CREATE TABLE LabReports
(
	[ReportNum] VARCHAR(5) NOT NULL PRIMARY KEY,
	[PatID] INT NOT NULL,
	[Weight] INT NOT NULL,
	[DocID] INT NOT NULL FOREIGN KEY REFERENCES Doctors(DocID),
	[Date] DATETIME NOT NULL,
	[DiagCode] CHAR(3) NOT NULL FOREIGN KEY REFERENCES Diagnoses(DiagCode),
	[PatType] VARCHAR(10) NOT NULL,
	[Advance] INT NOT NULL
);

CREATE TABLE Inpatients
(
	[PatID] INT NOT NULL,
	[RoomNum] VARCHAR(5) NOT NULL,
	[AdmissionDate] DATETIME NOT NULL,
	[ReleaseDate] DATETIME NOT NULL,
	[Advance] INT NOT NULL,
	[ReportNum] VARCHAR(5) FOREIGN KEY REFERENCES LabReports(ReportNum)
);

CREATE TABLE Outpatients
(
	[PatID] INT NOT NULL,
	[Date] DATETIME NOT NULL,
	[ReportNum] VARCHAR(5) FOREIGN KEY REFERENCES LabReports(ReportNum)
);

CREATE TABLE Rooms
(
	[RoomNum] INT IDENTITY(200,1) NOT NULL PRIMARY KEY,
	[RoomType] VARCHAR(20) NOT NULL,
	[RoomDept] VARCHAR(15) NOT NULL,
	[Status] VARCHAR(10) NOT NULL
);

CREATE TABLE Bills
(
	[BillNum] INT IDENTITY(5000,5) NOT NULL PRIMARY KEY,
	[PatID] INT FOREIGN KEY REFERENCES Patients(PatID),
	[PatType] VARCHAR(10),
	[DocCharge] INT NOT NULL,
	[MedCharge] INT NOT NULL,
	[RoomCharge] INT NOT NULL,
	[LabCharge] INT,
	[OprtnCharge] INT,
	[DaysStayed] INT,
	[Advance] INT,
	[HealthPlan] VARCHAR(50),
	[BillTotal] INT NOT NULL
);
