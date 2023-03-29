Create Database Assignment2;

Use Assignment2;

CREATE TABLE Plane_Type (
  Model VARCHAR(255) PRIMARY KEY,
  Capacity INT NOT NULL,
  Weight INT NOT NULL
);

INSERT INTO Plane_Type (Model, Capacity, Weight) VALUES
('Boeing 737', 189, 79060),
('Airbus A320', 186, 73500),
('Embraer E190', 114, 52359),
('Embraer E190', 90, 48700),
('Boeing 787 Dreamliner', 330, 254000),
('Airbus A380', 853, 575000),
('Boeing 747', 660, 396890),
('Boeing 777', 396, 263400),
('Airbus A350', 440, 268000),
('Bombardier CRJ200', 50, 22200),
('Bombardier CRJ200', 50, 22150),
('Cessna 172', 4, 2300),
('Cessna Citation X', 12, 15000),
('Gulfstream G650', 18, 54000),
('Piper PA-28 Cherokee', 4, 1430),
('Beechcraft King Air', 11, 10500),
('Cirrus SR22', 5, 3000),
('Pilatus PC-12', 9, 4980),
('Daher TBM 930', 7, 4300),
('HondaJet', 6, 4387);

Drop table plane_type;

CREATE TABLE HANGAR (
    Number INT NOT NULL,
    Capacity INT NOT NULL,
    Location VARCHAR(255) NOT NULL,
    PRIMARY KEY (Number)
);


INSERT INTO HANGAR (Number, Capacity, Location) VALUES
    (1, 10, 'Hangar F'),
    (2, 10, 'Hangar M'),
    (3, 15, 'Hangar B'),
    (4, 20, 'East Terminal'),
    (5, 25, 'Central Terminal'),
    (6, 30, 'Hangar A'),
    (7, 35, 'Hangar B'),
    (8, 40, 'Hangar C'),
    (9, 45, 'Hangar D'),
    (10, 50, 'Hangar E'),
    (11, 55, 'Hangar F'),
    (12, 60, 'Hangar G'),
    (13, 65, 'Hangar H'),
    (14, 70, 'Hangar I'),
    (15, 75, 'Hangar J'),
    (16, 80, 'Hangar K'),
    (17, 85, 'Hangar L'),
    (18, 90, 'Hangar M'),
    (19, 95, 'Hangar N'),
    (20, 100, 'Hangar O');
	Drop table hangar;

-- Create Airplane table
CREATE TABLE Airplane (
  RegNum INT PRIMARY KEY,
  OfType VARCHAR(255),
  StoredIn INT,
  FOREIGN KEY (OfType) REFERENCES Plane_Type (Model),
  FOREIGN KEY (StoredIn) REFERENCES Hangar (Number)
);

-- Insert dummy data
INSERT INTO Airplane (RegNum, OfType, StoredIn)
VALUES
  (1, 'Boeing 737', 1),
  (2, 'Airbus A320', 2),
  (3, 'Embraer E190', 1),
  (4, 'Embraer E190', 3),
  (5, 'Boeing 787 Dreamliner', 2),
  (6, 'Airbus A380', 1),
  (7, 'Boeing 747', 3),
  (8, 'Boeing 777', 2),
  (9, 'Airbus A350', 1),
  (10, 'Bombardier CRJ200', 3),
  (11, 'Bombardier CRJ200', 1),
  (12, 'Cessna 172', 2),
  (13, 'Cessna Citation X', 3),
  (14, 'Gulfstream G650', 2),
  (15, 'Piper PA-28 Cherokee', 1),
  (16, 'Beechcraft King Air', 3),
  (17, 'Cirrus SR22', 1),
  (18, 'Pilatus PC-12', 2),
  (19,'Daher TBM 930',4),
  (20,'HondaJet',4);

  drop table airplane;

-- Create Owner table
CREATE TABLE Owner (
    OwnerID INT PRIMARY KEY,
    Ssn VARCHAR(11) UNIQUE,
    Name VARCHAR(50),
    Address VARCHAR(100),
    Phone VARCHAR(15),
    OwnerType VARCHAR(20)
);

-- Insert dummy data into Owner table
INSERT INTO Owner (OwnerID,Ssn, Name, Address, Phone, OwnerType) VALUES
  (1,'111-11-1111', 'John Smith', '123 Main St, Anytown USA', '555-1234', 'person'),
  (2,'222-22-2222', 'Jane Doe', '456 Elm St, Anytown USA', '555-5678', 'person'),
  (3,'333-33-3333', 'Acme Corporation', '789 Oak St, Anytown USA', '555-9012', 'corporation'),
  (4,'444-44-4444', 'XYZ Company', '987 Maple St, Anytown USA', '555-3456', 'corporation'),
  (5,'555-55-5555', 'Bob Johnson', '246 Pine St, Anytown USA', '555-7890', 'person'),
  (6,'666-66-6666', 'Alice Smith', '135 Cedar St, Anytown USA', '555-2345', 'person'),
  (7,'777-77-7777', 'ABC Enterprises', '864 Oak St, Anytown USA', '555-6789', 'corporation'),
  (8,'888-88-8888', 'Joe Brown', '753 Maple St, Anytown USA', '555-1234', 'person'),
  (9,'999-99-9999', 'Mary Davis', '369 Pine St, Anytown USA', '555-5678', 'person'),
  (10,'111-11-1112', 'Big Corp', '789 Main St, Anytown USA', '555-9012', 'corporation'),
  (11,'222-22-2223', 'Small Inc', '123 Elm St, Anytown USA', '555-3456', 'corporation'),
  (12,'333-33-3334', 'John Smith', '456 Oak St, Anytown USA', '555-7890', 'person'),
  (13,'444-44-4445', 'Jane Doe', '987 Maple St, Anytown USA', '555-2345', 'person'),
  (14,'555-55-5556', 'XYZ Corp', '246 Pine St, Anytown USA', '555-6789', 'corporation'),
  (15,'666-66-6667', 'Acme Inc', '864 Cedar St, Anytown USA', '555-1234', 'corporation'),
  (16,'777-77-7778', 'Bob Johnson', '753 Oak St, Anytown USA', '555-5678', 'person'),
  (17,'888-88-8889', 'Alice Smith', '369 Maple St, Anytown USA', '555-9012', 'person'),
  (18,'999-99-9990', 'ABC Company', '789 Pine St, Anytown USA', '555-3456', 'corporation'),
  (19,'111-11-1113', 'Joe Brown', '123 Main St, Anytown USA', '555-7890', 'person'),
  (20,'222-22-2224', 'Mary Davis', '456 Elm St, Anytown USA', '555-2345', 'person');

  Drop Table Owner;


  CREATE TABLE corporation (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  address VARCHAR(255),
  phone VARCHAR(20),
  location varchar(255) NOT NULL
);

INSERT INTO corporation (id, name, address, phone,location) VALUES
  (3, 'Acme Corporation', '789 Oak St, Anytown USA', '555-9012','Hangar A'),
  (4, 'XYZ Company', '987 Maple St, Anytown USA', '555-3456','Hangar B'),
  (7, 'ABC Enterprises', '864 Oak St, Anytown USA', '555-6789','Hangar B'),
  (10, 'Big Corp', '789 Main St, Anytown USA', '555-9012','Hangar F'),
  (11, 'Small Inc', '123 Elm St, Anytown USA', '555-3456','Hangar F'),
  (14, 'XYZ Corp', '246 Pine St, Anytown USA', '555-6789','Hanagr I'),
  (15, 'Acme Inc', '864 Cedar St, Anytown USA', '555-1234',' Hangar M'),
  (18, 'ABC Company', '789 Pine St, Anytown USA', '555-3456','Hangar M');


  Drop table corporation;

  CREATE TABLE Owns (
    Reg# int NOT NULL,
    OwnerID INT NOT NULL,
    Pdate DATE NOT NULL,
    FOREIGN KEY (Reg#) REFERENCES Airplane(RegNum),
    FOREIGN KEY (OwnerID) REFERENCES Owner(OwnerID)
);


INSERT INTO Owns (Reg#, OwnerID, Pdate)
VALUES
    (1, 1, '2021-01-01'),
    (2, 2, '2021-02-01'),
    (3, 3, '2021-03-01'),
    (4, 4, '2023-02-27'),
    (5, 5, '2023-03-27'),
    (6, 6, '2021-06-01'),
    (7, 7, '2021-07-01'),
    (8, 8, '2021-08-01'),
    (9, 9, '2021-09-01'),
    (10, 10, '2023-2-25'),
    (11, 11, '2023-3-25'),
    (12, 12, '2021-12-01'),
    (13, 13, '2022-01-01'),
    (14, 14, '2022-02-01'),
    (15, 15, '2022-03-01'),
    (16, 16, '2022-04-01'),
    (17, 17, '2022-05-01'),
    (18, 18, '2022-06-01'),
    (19, 19, '2022-07-01'),
    (20, 20, '2022-08-01');

	Drop table Owns;

  CREATE TABLE Pilot (
  Lic_num INT PRIMARY KEY,
  Ssn INT NOT NULL,
  Name VARCHAR(255) NOT NULL,
  Address VARCHAR(255) NOT NULL,
  Phone VARCHAR(20) NOT NULL,
  Restrictions VARCHAR(255) NOT NULL
);

INSERT INTO Pilot (Lic_num, Ssn, Name, Address, Phone, Restrictions) VALUES
  (1, 123456789, 'John Smith', '123 Main St', '555-1234', 'None'),--1
  (2, 234567890, 'Jane Doe', '456 Oak Ave', '555-5678', 'Multi-engine'),--2
  (3, 345678901, 'Bob Johnson', '789 Elm St', '555-9012', 'Commercial'),--3
  (4, 456789012, 'Alice Lee', '321 Pine Ave', '555-3456', 'None'),--4
  (5, 567890123, 'Tom Brown', '654 Cedar Rd', '555-7890', 'Altitude limitation'),--5
  (6, 678901234, 'Sara Davis', '987 Maple Dr', '555-2345', 'Instrument'),--6
  (7, 789012345, 'Mike Wilson', '246 Elmwood Dr', '555-6789', 'None'),--7
  (8, 890123456, 'Lisa Chen', '369 Oakwood Ln', '555-0123', 'Multi-engine'),--8
  (9, 901234567, 'Chris Jones', '135 Cedar Ave', '555-4567', 'Commercial'),--9
  (10, 112233445, 'David Kim', '555 Elm St', '555-1234', 'None'),--10
  (11, 223344556, 'Emily Lee', '777 Pine Ave', '555-5678', 'Passenger limitation:'),--11
  (12, 334455667, 'Jasmine Chen', '888 Oakwood Ln', '555-9012', 'None'),--12
  (13, 445566778, 'Michael Smith', '222 Cedar Rd', '555-3456', 'Commercial'),--13
  (14, 556677890, 'Rachel Brown', '111 Maple Dr', '555-7890', 'None'),--14
  (15, 667788901, 'Adam Johnson', '444 Main St', '555-2345', 'Instruments'),--15
  (16, 778899012, 'Grace Davis', '777 Elmwood Dr', '555-6789', 'Multi-engine'),--16
  (17, 890101112, 'Luke Wilson', '999 Oak Ave', '555-0123', 'None'),--17
  (18, 901112233, 'Sophie Kim', '333 Pine Ave', '555-4567', 'Altitude limitation'),--18
  (19, 223334445, 'Jack Lee', '777 Cedar Rd', '555-1234', 'None'),--19
  (20, 334445556, 'Eva Brown', '555 Maple Dr', '555-5678','None');--20


  CREATE TABLE Service_Record (
  RegNum int NOT NULL,
  PLANE_SERVICE_ID INT PRIMARY KEY,
  date DATE NOT NULL,
  hours INT NOT NULL,
  work_code VARCHAR(50) NOT NULL
);


INSERT INTO Service_Record (RegNum, PLANE_SERVICE_ID, DATE, HOURS, WORK_CODE)
VALUES
(1, 1, '2022-01-01', 5, 'OIL_CHANGE'),
(2, 2, '2022-02-15', 8, 'ENGINE_REPAIR'),
(3, 3, '2022-03-25', 3, 'AVIONICS_UPGRADE'),
(4, 4, '2022-04-10', 7, 'LANDING_GEAR_REPAIR'),
(2, 5, '2022-05-22', 2, 'WINDSHIELD_REPLACEMENT'),
(6, 6, '2022-06-30', 6, 'AVIONICS_REPAIR'),
(7, 7, '2022-07-11', 4, 'ENGINE_INSPECTION'),
(8, 8, '2022-08-18', 9, 'FUEL_SYSTEM_REPAIR'),
(9, 9, '2022-09-05', 6, 'AVIONICS_UPGRADE'),
(10, 10, '2022-10-15', 3, 'HYDRAULIC_SYSTEM_REPAIR'),
(11, 11, '2022-11-22', 7, 'PROP_REPLACEMENT'),
(12, 12, '2022-12-03', 5, 'BATTERY_REPLACEMENT'),
(8, 13, '2023-01-15', 8, 'ENGINE_REBUILD'),
(14, 14, '2023-02-23', 3, 'OIL_CHANGE'),
(15, 15, '2023-02-10', 4, 'LANDING_GEAR_INSPECTION'),
(16, 16, '2023-01-22', 6, 'AVIONICS_UPGRADE'),
(17, 17, '2023-02-03', 2, 'WINDSHIELD_REPAIR'),
(3, 18, '2023-03-28', 9, 'FUEL_TANK_CLEANING'),
(19, 19, '2021-06-18', 3, 'OIL_CHANGE'),
(20, 20, '2023-03-28', 6, 'BATTERY_REPLACEMENT');

Drop Table Service_Record;



	CREATE TABLE employee (
  employee_id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  address VARCHAR(100) NOT NULL,
  phone_number VARCHAR(15) NOT NULL,
  salary INT NOT NULL,
  shift_worked VARCHAR(10) NOT NULL
);

INSERT INTO employee (employee_id, name, address, phone_number, salary, shift_worked)
VALUES
  (1, 'John Smith', '123 Main St, Anytown USA', '555-1234', 50000, 'Day'),
  (2, 'Jane Doe', '456 Oak Ave, Somewhere USA', '555-5678', 60000, 'Night'),
  (3, 'Bob Johnson', '789 Maple St, Nowhere USA', '555-9012', 55000, 'Day'),
  (4, 'Samantha Lee', '321 Elm St, Anytown USA', '555-3456', 65000, 'Night'),
  (5, 'Mike Brown', '654 Pine Ave, Somewhere USA', '555-7890', 52000, 'Day'),
  (6, 'Karen Chen', '987 Cedar Blvd, Nowhere USA', '555-2345', 58000, 'Night'),
  (7, 'David Kim', '135 Oak St, Anytown USA', '555-6789', 54000, 'Day'),
  (8, 'Sarah Patel', '246 Elm Ave, Somewhere USA', '555-0123', 62000, 'Night'),
  (9, 'Tom Nguyen', '357 Maple Blvd, Nowhere USA', '555-4567', 53000, 'Day'),
  (10, 'Emily Davis', '468 Pine St, Anytown USA', '555-8901', 59000, 'Night'),
  (11, 'Alex Rodriguez', '579 Cedar Ave, Somewhere USA', '555-2345', 56000, 'Day'),
  (12, 'Rachel Brown', '680 Oak Blvd, Nowhere USA', '555-6789', 61000, 'Night'),
  (13, 'Justin Lee', '791 Maple St, Anytown USA', '555-0123', 57000, 'Day'),
  (14, 'Amanda Patel', '802 Elm Ave, Somewhere USA', '555-4567', 63000, 'Night'),
  (15, 'Mark Johnson', '913 Pine Blvd, Nowhere USA', '555-8901', 54000, 'Day'),
  (16, 'Olivia Chen', '124 Cedar St, Anytown USA', '555-2345', 60000, 'Night'),
  (17, 'Sophia Kim', '235 Oak Ave, Somewhere USA', '555-6789', 55000, 'Day'),
  (18, 'Ethan Nguyen', '346 Maple Blvd, Nowhere USA', '555-0123', 61000, 'Night'),
  (19, 'Isabella Davis', '457 Pine St, Anytown USA', '555-4567', 57000, 'Day'),
  (20, 'Daniel Rodriguez', '568 Cedar Ave, Somewhere USA', '555-8901', 63000, 'Night');



  -- create the Flies table
CREATE TABLE Flies (
  Lic_num int NOT NULL,
  RegNum int NOT NULL,
  PRIMARY KEY(Lic_num, RegNum),
  FOREIGN KEY (Lic_num) REFERENCES PILOT(Lic_num),
  FOREIGN KEY (RegNum) REFERENCES AIRPLANE(RegNum)
);



-- insert 20 dummy values
INSERT INTO Flies (Lic_num, RegNum)
VALUES 
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 2),
  (3, 3),
  (3, 4),
  (3, 5),
  (4, 1),
  (5, 2),
  (5, 3),
  (6, 4),
  (7, 5),
  (8, 1),
  (9, 2),
  (9, 3),
  (10, 4),
  (11, 5),
  (12, 1),
  (13, 2);



  CREATE TABLE Works_on (
    ID int NOT NULL,
    Airplane_Reg# int NOT NULL,
    PRIMARY KEY (ID, Airplane_Reg#),
    FOREIGN KEY (ID) REFERENCES Employee(Employee_Id),
    FOREIGN KEY (Airplane_Reg#) REFERENCES AIRPLANE(RegNum)
);

INSERT INTO Works_on (ID, Airplane_Reg#) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 2),
(5, 1),
(6, 2),
(7, 1),
(8, 2),
(9, 1),
(10, 2),
(11, 1),
(12, 2),
(13, 1),
(14, 2),
(15, 1),
(16, 2),
(17, 1),
(18, 2),
(19, 1),
(20, 2);



  --Query 3
  SELECT RegNum
FROM AIRPLANE
WHERE RegNum NOT IN (
  SELECT RegNum
  FROM Service_Record
);



--Query 4

SELECT OWNER.Name, OWNER.Address
FROM OWNER
INNER JOIN OWNS ON OWNER.OwnerID = OWNS.OwnerID
INNER JOIN AIRPLANE ON OWNS.Reg# = AIRPLANE.RegNum
INNER JOIN PLANE_TYPE ON AIRPLANE.OFTYPE = PLANE_TYPE.Model
WHERE OWNER.OwnerType = 'corporation'
  AND PLANE_TYPE.Capacity > 200;



  -- Query 5

  SELECT AVG(Salary) AS AvgSalaryNightShift
FROM EMPLOYEE
WHERE shift_worked = 'Night';



-- Query 6

SELECT top(5) EMPLOYEE.Name, SUM(Service_Record.Hours) AS TotalMaintenanceHours
FROM EMPLOYEE
INNER JOIN Service_Record ON EMPLOYEE.employee_id = Service_Record.PLANE_SERVICE_ID
GROUP BY EMPLOYEE.Name
ORDER BY TotalMaintenanceHours DESC;


-- Query 7

SELECT AIRPLANE.RegNum, AIRPLANE.OFTYPE
FROM AIRPLANE
INNER JOIN Service_Record ON AIRPLANE.RegNum = Service_Record.RegNum
WHERE Service_Record.Date BETWEEN DATEADD(day, -7, GETDATE()) AND GETDATE();


-- Query 8

SELECT OWNER.Name, OWNER.Phone
FROM OWNER
INNER JOIN OWNS ON OWNER.OwnerId = OWNS.OwnerId
INNER JOIN AIRPLANE ON OWNS.Reg# = AIRPLANE.RegNum
WHERE OWNS.Pdate BETWEEN DATEADD(month, -1, GETDATE()) AND GETDATE();



--Query 9

SELECT PILOT.Name, COUNT(FLIES.RegNum) AS 'Number of Airplanes'
FROM PILOT
LEFT JOIN FLIES ON PILOT.Lic_num = FLIES.Lic_num
GROUP BY PILOT.Name;


-- Query 10

SELECT Location, Capacity
FROM Hangar
WHERE Capacity = (
  SELECT MAX(Capacity)
  FROM Hangar
);



-- Query 11

SELECT 
  OWNER.Name as Corporation, 
  COUNT(*) as NumPlanes
FROM OWNER 
JOIN Owns ON Owns.OwnerID = OWNER.OwnerID
inner join Airplane on Airplane.RegNum= Owns.Reg#
WHERE OWNER.OwnerType = 'Corporation'
GROUP BY OWNER.Name
ORDER BY NumPlanes DESC;


-- Query 12

SELECT 
  PLANE_TYPE.Model as PlaneType, 
  AVG(Service_Record.hours) as AvgMaintenanceHours
FROM PLANE_TYPE 
JOIN AIRPLANE ON AIRPLANE.OFTYPE = PLANE_TYPE.Model
JOIN Service_Record ON AIRPLANE.RegNum = Service_Record.RegNum
GROUP BY PLANE_TYPE.Model;






-- Query 13

select distinct owner.Name from Owner join owns on owner.ownerId=owns.ownerID join
	SERVICE_record  on service_record.regnum=owns.Reg#
	join  WORKS_ON on works_on.ID=service_record.Plane_Service_Id
	where not(service_record.regnum=works_on.Airplane_Reg#);


--Query 14

	select distinct owner.Name,owner.Phone from owner  join owns  on owns.ownerId=owner.OwnerId
	join Airplane on airplane.regNum=owns.reg# join Hangar on airplane.storedin=hangar.Number
	join corporation on corporation.location=hangar.Location and owner.Ownertype='corporation';

	

--Query 15

Select  pilot.name from pilot inner join FLIES on pilot.Lic_num = flies.Lic_num
	where FLIES.RegNum in (  select regnum from SERVICE_record where SERVICE_record.Date = CAST(GETDATE() AS DATE) );


-- Query 16

SELECT Employee.Name, SUM(Service_Record.Hours) AS Total_hours
FROM EMPLOYEE 
JOIN SERVICE_Record  ON Employee.employee_id = Service_record.Plane_service_ID
JOIN OWNS ON Service_Record.RegNum = Owns.Reg#
JOIN Owner  ON Owner.OwnerID = Owns.OwnerID
WHERE Owner.Name = 'Acme Corporation'
GROUP BY Employee.Name
ORDER BY Total_hours DESC;


--Query 17

select Distinct airplane.regNum, airplane.OFTYPE from AIRPLANE  join Owns  on owns.Reg#=airplane.RegNum 
	join owner on owns.OwnerID=owner.OwnerId 
	join SERVICE_record  on service_record.regnum=airplane.RegNum join 
	EMPLOYEE  on employee.employee_id=service_record.plane_service_id
	where (owner.ownertype <>'corporation') or (employee.shift_worked='Day');


--Query 18



select Owner.Name, owner.Address from owner 
	join owns  on owns.OwnerId=owner.OwnerId
	join AIRPLANE  on airplane.RegNum=owns.Reg#
	join PLANE_TYPE  on plane_type.Model=airplane.OFTYPE
	where owner.OwnerType='corporation'
	and Plane_Type.Model in 
			(Select AIRPLANE.OFTYPE FROM AIRPLANE 
			 INNER JOIN Owns
			 ON OWNs.Reg# = Airplane.RegNum
			INNER JOIN Owner on Owner.OwnerId = Owns.OwnerID
			  where Owner.OwnerId = owns.OwnerID AND Owns.pDate >= DATEADD(month, -1, GETDATE()));




-- Query 19

SELECT hangar.Number, COUNT(*) AS TotalPlanes
FROM HANGAR 
INNER JOIN AIRPLANE  ON hangar.Number = airplane.STOREDIN
GROUP BY hangar.Number;


-- Query 20

SELECT Plane_Type.Model, COUNT(*) AS TotalPlanes
FROM PLANE_TYPE
INNER JOIN AIRPLANE ON plane_type.Model = airplane.OFTYPE
GROUP BY plane_type.Model;

-- Query 21

SELECT airplane.RegNum, COUNT(*) AS TotalServices
FROM AIRPLANE 
INNER JOIN service_record  ON airplane.RegNum = service_record.RegNum
GROUP BY airplane.RegNum;

-- Query 22

SELECT Employee.shift_worked, AVG(Salary) AS AverageSalary
FROM EMPLOYEE
GROUP BY Employee.shift_worked;

-- Query 23

SELECT owner.Name, COUNT(*) AS TotalPlanesOwned
FROM OWNER 
INNER JOIN OWNS  ON owner.OwnerID = owns.OwnerID
GROUP BY owner.Name;

-- Query 24

SELECT pilot.Name, COUNT(*) AS TotalPlanesAuthorized
FROM PILOT 
INNER JOIN FLIES  ON pilot.Lic_num = flies.Lic_num
GROUP BY pilot.Name;


--Query 25

--Query to find the average salary of employees working on a particular plane type

SELECT  AVG(employee.Salary) AS Average_Salary
FROM EMPLOYEE 
inner JOIN WORKS_ON  ON employee.employee_id = Works_on.ID
inner JOIN Airplane  ON works_on.Airplane_Reg# =airplane.regNum 
inner JOIN plane_type on plane_type.model=airplane.oftype
WHERE plane_type.Model = 'Boeing 737';


--Query to find the total number of hours of service performed by each employee

SELECT employee.Name, SUM(service_record.Hours) AS Total_Hours
FROM employee
JOIN SERVICE_record  ON employee.employee_id = service_record.plane_service_id
GROUP BY employee.Name;


--Query to find Most Used Airplane

SELECT top 5 plane_type.Model, COUNT(*) AS Total_Flights
FROM PLANE_TYPE 
JOIN AIRPLANE  ON plane_type.Model = airplane.OFTYPE
JOIN service_record ON airplane.RegNum = service_record.RegNum
GROUP BY plane_type.Model
ORDER BY Total_Flights DESC;



--This query retrieves the registration number of each airplane in the database, along with the airplane's model and the name of its owner
SELECT AIRPLANE.RegNum, PLANE_TYPE.Model, OWNER.Name
FROM AIRPLANE
JOIN PLANE_TYPE ON AIRPLANE.OFTYPE = PLANE_TYPE.Model
JOIN OWNS ON AIRPLANE.RegNum = OWNS.Reg#
JOIN OWNER ON OWNS.ownerid = OWNER.ownerid;