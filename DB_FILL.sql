--#Benefit
INSERT INTO BENEFIT (IdBenefit, Name, Price) VALUES (1, 'MultiSport', 42.00);
INSERT INTO BENEFIT (IdBenefit, Name, Price) VALUES (2, 'Ubezpieczenie', 130.00);
INSERT INTO BENEFIT (IdBenefit, Name, Price) VALUES (3, 'Karta lunchowa', 150.00);
INSERT INTO BENEFIT (IdBenefit, Name, Price) VALUES (4, 'Opieka zdrowotna', 30.00);


--#ContractType
INSERT INTO ContractType (IdContractType, ContractType) VALUES (1, 'Umowa o Pracę');
INSERT INTO ContractType (IdContractType, ContractType) VALUES (2, 'Umowa Zlecenie');
INSERT INTO ContractType (IdContractType, ContractType) VALUES (3, 'Umowa o Dzieło');
INSERT INTO ContractType (IdContractType, ContractType) VALUES (4, 'B2B');


--#Job
INSERT INTO JOB (IdJob, JobName) VALUES (1, 'Manager');
INSERT INTO JOB (IdJob, JobName) VALUES (2, 'Junior Developer');
INSERT INTO JOB (IdJob, JobName) VALUES (3, 'Mid Developer');
INSERT INTO JOB (IdJob, JobName) VALUES (4, 'Senior Developer');

--#Status
INSERT INTO REQUESTSTATUS (IdRequestStatus, StatusName) VALUES (1, 'Oczekujący');
INSERT INTO REQUESTSTATUS (IdRequestStatus, StatusName) VALUES (2, 'Odrzucony');
INSERT INTO REQUESTSTATUS (IdRequestStatus, StatusName) VALUES (3, 'Zaakceptowany');

--#RequestType
INSERT INTO RequestType (IdRequestType, Type, Object) VALUES (1, 'Nadgodziny', '');
INSERT INTO RequestType (IdRequestType, Type, Object) VALUES (2, 'Niebecność', '');

--#AbsenceType
INSERT INTO AbsenceType (IdAbsenceType, AbsenceType) VALUES (1, 'Urlop');
INSERT INTO AbsenceType (IdAbsenceType, AbsenceType) VALUES (2, 'Urlop rodzicielski');
INSERT INTO AbsenceType (IdAbsenceType, AbsenceType) VALUES (3, 'Bezpłatny urlop');


--Role
INSERT INTO ROLE (IdRole, RoleName) VALUES (1, 'Pracownik HR');
INSERT INTO ROLE (IdRole, RoleName) VALUES (2, 'Manager');
INSERT INTO ROLE (IdRole, RoleName) VALUES (3, 'Pracownik');

--ContractStatus
INSERT INTO ContractStatus (IdContractStatus, StatusName) VALUES (1, 'Aktywna');
INSERT INTO ContractStatus (IdContractStatus, StatusName) VALUES (2, 'Wygasła');
INSERT INTO ContractStatus (IdContractStatus, StatusName) VALUES (3, 'Nieaktywna');

--#Employee
		   
INSERT INTO [dbo].[Employee]
           ([IdEmployee]
           ,[FirstName]
           ,[SecondName]
           ,[LastName]
           ,[PESEL]
           ,[IdCardNumber]
           ,[BirthDate]
           ,[PhoneNumber]
           ,[EmailAddress]
           ,[Login]
           ,[Password]
           ,[IdJob]
           ,[idManager]
		   ,[IsActive]
		   ,[IdRole])
     VALUES
           (100,
		   'Krystian',
		   '',
		   'Nowak',
		   85100764971,
		   653,
		   '1985-10-07',
		   987654321,
		   'KrystianNowak@gmail.com',
		   'u100',
		   '',
		   1,
		   null,
		   1,
		   2);
		   
INSERT INTO [dbo].[Employee]
           ([IdEmployee]
           ,[FirstName]
           ,[SecondName]
           ,[LastName]
           ,[PESEL]
           ,[IdCardNumber]
           ,[BirthDate]
           ,[PhoneNumber]
           ,[EmailAddress]
           ,[Login]
           ,[Password]
           ,[IdJob]
           ,[idManager]
		   ,[IsActive]
		   ,[IdRole])
     VALUES
           (101,
		   'Adam',
		   'Michał',
		   'Kowalski',
		   98011641279,
		   7893,
		   '1998-01-16',
		   123456789,
		   'AdamKowalski@mail.pl',
		   'u101',
		   '',
		   2,
		   100,
		   1,
		   3);

--#Contract
INSERT INTO [dbo].[Contract]
           ([IdContract]
           ,[ContractNumber]
           ,[Salary]
           ,[ContractStart]
           ,[ContractEnd]
           ,[IdContractType]
           ,[IdEmployee]
		   ,[IdContractStatus])
     VALUES
           (1,
		   100,
		   15000,
		   '2020-01-21',
		   '2021-01-20',
		   1,
		   100,
		   1);
		   
INSERT INTO [dbo].[Contract]
           ([IdContract]
           ,[ContractNumber]
           ,[Salary]
           ,[ContractStart]
           ,[ContractEnd]
           ,[IdContractType]
           ,[IdEmployee]
		   ,[IdContractStatus])
     VALUES
           (2,
		   101,
		   6800,
		   '2020-02-21',
		   '2021-02-20',
		   2,
		   101,
		   1
		   );

--#Request




