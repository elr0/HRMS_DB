-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2020-04-23 19:27:40.036

-- tables
-- Table: AbsenceType
CREATE TABLE AbsenceType (
    IdAbsenceType int  NOT NULL,
    AbsenceType nvarchar(100)  NOT NULL,
    CONSTRAINT AbsenceType_pk PRIMARY KEY  (IdAbsenceType)
);

-- Table: AvailableAbsence
CREATE TABLE AvailableAbsence (
    IdAvailableAbsence int  NOT NULL,
    AvailableDays decimal(5,2)  NOT NULL,
    IdAbsenceType int  NOT NULL,
    IdEmployee int  NOT NULL,
    UsedAbsence decimal(5,2)  NOT NULL,
    CONSTRAINT AvailableAbsence_pk PRIMARY KEY  (IdAvailableAbsence)
);

-- Table: Benefit
CREATE TABLE Benefit (
    IdBenefit int  NOT NULL,
    Name nvarchar(255)  NOT NULL,
    Price decimal(6,2)  NOT NULL,
    CONSTRAINT Benefit_pk PRIMARY KEY  (IdBenefit)
);

-- Table: Contract
CREATE TABLE Contract (
    IdContract int  NOT NULL,
    ContractNumber int  NOT NULL,
    Salary decimal(10,2)  NOT NULL,
    ContractStart date  NOT NULL,
    ContractEnd date  NOT NULL,
    IdContractType int  NOT NULL,
    IdEmployee int  NOT NULL,
    IdContractStatus int  NOT NULL,
    CONSTRAINT Contract_pk PRIMARY KEY  (IdContract)
);

-- Table: ContractBenefit
CREATE TABLE ContractBenefit (
    IdBenefitContract int  NOT NULL,
    Benefit_IdBenefit int  NOT NULL,
    Contract_IdContract int  NOT NULL,
    StartDate date  NOT NULL,
    ExpiryDate date  NOT NULL,
    CONSTRAINT ContractBenefit_pk PRIMARY KEY  (IdBenefitContract,Benefit_IdBenefit,Contract_IdContract)
);

-- Table: ContractStatus
CREATE TABLE ContractStatus (
    IdContractStatus int  NOT NULL,
    StatusName nvarchar(50)  NOT NULL,
    CONSTRAINT ContractStatus_pk PRIMARY KEY  (IdContractStatus)
);

-- Table: ContractType
CREATE TABLE ContractType (
    IdContractType int  NOT NULL,
    ContractType nvarchar(100)  NOT NULL,
    CONSTRAINT ContractType_pk PRIMARY KEY  (IdContractType)
);

-- Table: Employee
CREATE TABLE Employee (
    IdEmployee int  NOT NULL,
    FirstName varchar(50)  NOT NULL,
    SecondName nvarchar(50)  NULL,
    LastName nvarchar(200)  NOT NULL,
    PESEL nvarchar(11)  NOT NULL,
    IdCardNumber nvarchar(6)  NULL,
    BirthDate date  NOT NULL,
    PhoneNumber int  NULL,
    EmailAddress nvarchar(100)  NOT NULL,
    Login nvarchar(9)  NOT NULL,
    Password nvarchar(max)  NOT NULL,
    IdJob int  NOT NULL,
    idManager int  NULL,
    IsActive bit  NOT NULL,
    IdRole int  NOT NULL,
    CONSTRAINT Employee_pk PRIMARY KEY  (IdEmployee)
);

-- Table: Job
CREATE TABLE Job (
    IdJob int  NOT NULL,
    JobName nvarchar(50)  NOT NULL,
    CONSTRAINT Job_pk PRIMARY KEY  (IdJob)
);

-- Table: Overtime
CREATE TABLE Overtime (
    IdOvertime int  NOT NULL,
    ToBeSettledBefore date  NOT NULL,
    Hours decimal(9,2)  NOT NULL,
    IdEmployee int  NOT NULL,
    CONSTRAINT Overtime_pk PRIMARY KEY  (IdOvertime)
);

-- Table: Request
CREATE TABLE Request (
    IdRequest int  NOT NULL,
    IdEmployeeSender int  NOT NULL,
    IdEmployeeReceiver int  NOT NULL,
    Date date  NOT NULL,
    QuantityRequested decimal(3,2)  NOT NULL,
    IdRequestType int  NOT NULL,
    IdStatus int  NOT NULL,
    StartDate datetime  NOT NULL,
    EndDate datetime  NOT NULL,
    CommentManager nvarchar(max)  NULL,
    CommentEmployee nvarchar(max)  NULL,
    CONSTRAINT Request_pk PRIMARY KEY  (IdRequest)
);

-- Table: RequestStatus
CREATE TABLE RequestStatus (
    IdRequestStatus int  NOT NULL,
    StatusName nvarchar(50)  NOT NULL,
    CONSTRAINT RequestStatus_pk PRIMARY KEY  (IdRequestStatus)
);

-- Table: RequestType
CREATE TABLE RequestType (
    IdRequestType int  NOT NULL,
    Type nvarchar(50)  NOT NULL,
    Object nvarchar(50)  NULL,
    CONSTRAINT RequestType_pk PRIMARY KEY  (IdRequestType)
);

-- Table: Role
CREATE TABLE Role (
    IdRole int  NOT NULL,
    RoleName nvarchar(50)  NOT NULL,
    CONSTRAINT Role_pk PRIMARY KEY  (IdRole)
);

-- foreign keys
-- Reference: AvailableAbsence_AbsenceType (table: AvailableAbsence)
ALTER TABLE AvailableAbsence ADD CONSTRAINT AvailableAbsence_AbsenceType
    FOREIGN KEY (IdAbsenceType)
    REFERENCES AbsenceType (IdAbsenceType);

-- Reference: AvailableAbsence_Employee (table: AvailableAbsence)
ALTER TABLE AvailableAbsence ADD CONSTRAINT AvailableAbsence_Employee
    FOREIGN KEY (IdEmployee)
    REFERENCES Employee (IdEmployee);

-- Reference: ContractBenefit_Benefit (table: ContractBenefit)
ALTER TABLE ContractBenefit ADD CONSTRAINT ContractBenefit_Benefit
    FOREIGN KEY (Benefit_IdBenefit)
    REFERENCES Benefit (IdBenefit);

-- Reference: ContractBenefit_Contract (table: ContractBenefit)
ALTER TABLE ContractBenefit ADD CONSTRAINT ContractBenefit_Contract
    FOREIGN KEY (Contract_IdContract)
    REFERENCES Contract (IdContract);

-- Reference: Contract_ContractStatus (table: Contract)
ALTER TABLE Contract ADD CONSTRAINT Contract_ContractStatus
    FOREIGN KEY (IdContractStatus)
    REFERENCES ContractStatus (IdContractStatus);

-- Reference: Contract_ContractType (table: Contract)
ALTER TABLE Contract ADD CONSTRAINT Contract_ContractType
    FOREIGN KEY (IdContractType)
    REFERENCES ContractType (IdContractType);

-- Reference: Contract_Employee (table: Contract)
ALTER TABLE Contract ADD CONSTRAINT Contract_Employee
    FOREIGN KEY (IdEmployee)
    REFERENCES Employee (IdEmployee);

-- Reference: Employee_Job (table: Employee)
ALTER TABLE Employee ADD CONSTRAINT Employee_Job
    FOREIGN KEY (IdJob)
    REFERENCES Job (IdJob);

-- Reference: Employee_Manager (table: Employee)
ALTER TABLE Employee ADD CONSTRAINT Employee_Manager
    FOREIGN KEY (idManager)
    REFERENCES Employee (IdEmployee);

-- Reference: Employee_Role (table: Employee)
ALTER TABLE Employee ADD CONSTRAINT Employee_Role
    FOREIGN KEY (IdRole)
    REFERENCES Role (IdRole);

-- Reference: Overtime_Employee (table: Overtime)
ALTER TABLE Overtime ADD CONSTRAINT Overtime_Employee
    FOREIGN KEY (IdEmployee)
    REFERENCES Employee (IdEmployee);

-- Reference: Request_Employee (table: Request)
ALTER TABLE Request ADD CONSTRAINT Request_Employee
    FOREIGN KEY (IdEmployeeSender)
    REFERENCES Employee (IdEmployee);

-- Reference: Request_Manager (table: Request)
ALTER TABLE Request ADD CONSTRAINT Request_Manager
    FOREIGN KEY (IdEmployeeReceiver)
    REFERENCES Employee (IdEmployee);

-- Reference: Request_RequestType (table: Request)
ALTER TABLE Request ADD CONSTRAINT Request_RequestType
    FOREIGN KEY (IdRequestType)
    REFERENCES RequestType (IdRequestType);

-- Reference: Request_Status (table: Request)
ALTER TABLE Request ADD CONSTRAINT Request_Status
    FOREIGN KEY (IdStatus)
    REFERENCES RequestStatus (IdRequestStatus);

-- End of file.

