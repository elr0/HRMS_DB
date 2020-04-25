-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2020-04-24 16:47:15.575

-- foreign keys
ALTER TABLE AvailableAbsence DROP CONSTRAINT AvailableAbsence_AbsenceType;

ALTER TABLE AvailableAbsence DROP CONSTRAINT AvailableAbsence_Employee;

ALTER TABLE ContractBenefit DROP CONSTRAINT ContractBenefit_Benefit;

ALTER TABLE ContractBenefit DROP CONSTRAINT ContractBenefit_Contract;

ALTER TABLE Contract DROP CONSTRAINT Contract_ContractStatus;

ALTER TABLE Contract DROP CONSTRAINT Contract_ContractType;

ALTER TABLE Contract DROP CONSTRAINT Contract_Employee;

ALTER TABLE Employee DROP CONSTRAINT Employee_Job;

ALTER TABLE Employee DROP CONSTRAINT Employee_Manager;

ALTER TABLE Employee DROP CONSTRAINT Employee_Role;

ALTER TABLE Overtime DROP CONSTRAINT Overtime_Employee;

ALTER TABLE Request DROP CONSTRAINT Request_Employee;

ALTER TABLE Request DROP CONSTRAINT Request_RequestType;

ALTER TABLE Request DROP CONSTRAINT Request_Status;

-- tables
DROP TABLE AbsenceType;

DROP TABLE AvailableAbsence;

DROP TABLE Benefit;

DROP TABLE Contract;

DROP TABLE ContractBenefit;

DROP TABLE ContractStatus;

DROP TABLE ContractType;

DROP TABLE Employee;

DROP TABLE Job;

DROP TABLE Overtime;

DROP TABLE Request;

DROP TABLE RequestStatus;

DROP TABLE RequestType;

DROP TABLE Role;

-- End of file.

