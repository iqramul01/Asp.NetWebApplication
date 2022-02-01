
CREATE TABLE Department(
DepartmentID int primary key identity,
DepartmentName varchar(Max),
AvailableSeat int
)

Delete From Department Where DepartmentID=4
Go 
CREATE TABLE DOCTOR(
DoctorID int primary key identity,
DoctorName varchar(30) not null,
Gender varchar(10) not null,
ContactAddress varchar(max) not null,
EmailAddress varchar(max) not null,
DateOfBirth varchar(max) not null,
PhoneNumber varchar(15) not null,
JoiningDate date,
DoctorImage varchar(max) null,
DepartmentID INT FOREIGN KEY REFERENCES Department(DepartmentID) on update cascade on delete cascade
)
Go

CREATE TABLE Appointment(
AppointmentID int primary key identity,
Name varchar(30) not null,
Email varchar(30) not null,
DoctorID INT FOREIGN KEY REFERENCES DOCTOR(DoctorID),
Date varchar(max) not null,
)


--CREATE TABLE PatientAdmit(
--	PatientID int Primary Key IDENTITY(10000,1) Not Null,
--	PatientName varchar(MAX) Not Null,
--	Gender varchar(MAX) Null,
--	BloodGroup varchar(MAX) Null,
--	AdmitDate varchar(MAX),
--	AdmitFee decimal(10,2) Not Null,
--	EmergencyContact varchar(MAX) Null,
--	AdmitStatus varchar(15) null Default('Admit'),
--	DepartmentID int FOREIGN KEY REFERENCES Department(DepartmentID) ON UPDATE CASCADE ON DELETE CASCADE
--)
--GO


--CREATE PROC sp_PatientAddmitInsert
--@patientid int,
--@patientname varchar(30),
--@gender varchar(10),
--@bloodgroup varchar(15),
--@admitdate varchar(20),
--@admitfee decimal(10,2),
--@emergencycontact varchar (15),
--@depid int

--As
--Begin
--Insert Into PatientAdmit values(@patientname,@gender,@bloodgroup,@admitdate,@admitfee,@emergencycontact,@depid)
--Update Department Set AvailableSeat=AvailableSeat-1
--Where DepartmentID=@depid
--End
--go



INSERT INTO Appointment (Name,Email,DoctorID,Date) VALUES (@name,@email,@doctorID,@date)


INSERT INTO DOCTOR (DoctorName,Gender,ContactAddress,EmailAddress,DateOfBirth,PhoneNumber,JoiningDate,
DoctorImage,DepartmentID) VALUES (@doctorName,@gender,@contactAddress,@email,@dateOfBirth,@phoneNumber,@joiningDate,@doctorImage,@departmentID)

UPDATE DOCTOR SET DoctorName=@doctorName,Gender=@gender,ContactAddress=@contactAddress,EmailAddress=@email,DateOfBirth=@dateOfBirth,
PhoneNumber=@phoneNumber,JoiningDate=@joiningDate, DoctorImage=@doctorImage,DepartmentID=@departmentID WHERE DoctorID=@doctorID



--Create TABLE Admit(
--AdmitID int primary key identity,
--AdmitDate date not null,
--AdmitFee decimal(4,2) not null,
--TotalBill decimal(10,2) Default('N/A')null,
--ReleaseDate date Default('N/A')null,
--PatientStatus varchar Default('Admited') null,
--PatientID Int Foreign Key References Patient(PatientID)
--)


--Create TABLE Admit(
--AdmitID int primary key identity,
--AdmitDate date not null,
--AdmitFee decimal(6,2) not null,
--TotalBill decimal(10,2)null,
--ReleaseDate date null,
--PatientStatus varchar(15) Default('Admited') null,
--PatientID Int Foreign Key References Patient(PatientID)
--)

Insert into Admit (AdmitDate,AdmitFee,PatientID)Values ('11-11-2020',10.00,10000)
Go 

Create PROC sp_PatientAdmit
@admitdate date,
@admitfee decimal(6,2),
@patientid int,
@totalbill decimal(10,2)=Null,
@releasedate date=Null

As
Begin
INSERT INTO Admit Values(@admitdate,@admitfee,@patientid,@totalbill,@releasedate)
UPDATE Patient SET PatientStatus='Admit'
WHERE PatientID=@patientid
End

EXEC sp_PatientAdmitInsert @admitdate,@admitfee,@totalbill,@releasedate,@patientid
GO;

Create PROC sp_PatientRelease 
@admitid int,
@admitdate date,
@admitfee decimal(6,2),
@patientid int,
@totalbill decimal(10,2),
@releasedate date
As
Begin
UPDATE Admit SET TotalBill=@totalbill,ReleaseDate=@releasedate
Where AdmitID=@admitid
UPDATE Patient SET PatientStatus='Released'
WHERE PatientID=@patientid
End
