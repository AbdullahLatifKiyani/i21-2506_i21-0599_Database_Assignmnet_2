This assignment is on SQl in which with the help of SQL queries you can retrieve the data from the data base. You can run this assignment by first creating all the tables and then implementing each query. 



QUERY 3
Challenges=NONE
Explanation: Just select the regNum of the airplane from airplane tables and check it in service_record tables if regnum is not found in  service_record table means the plane has never undergone maintenance.

QUERY 4
Challenges=NONE
Explanation: Inner join on Owner and Owns Table to match owner Id , Inner join on airplane and owns table to match regnum and inner join on plan_type table to match the model and then making sure that the owner is corporation and the capacity of the airplane is > 200

QUERY 5
Challenges=No mention of shift time in the case study so didn't use any attribute of time that would relate to shift time.
Explanation: Calculating the avg salary of the employees who work the nigth shift

QUERY 6
Challenges=NONE
Explanation: Getting the name of the employees descendingly by the greatest number of hours worked Summing the work hours of employees and aliasing it as TotalMaintenanceHours

QUERY 7
Challenges=NONE
Explanation: Inner join between airplane and service_record table and checking if in the past 7 Days any service has been done on any airplane and giving regnum and model of the airplane if any plane has gone into maintanance in the past week

QUERY 8
Challenges=NONE
Explanation: Inner join between owns and owner table and matching the owner id and inner join between airplane and owns table to match the regnum of the airplane and then checking if in the past month any airplane has been purchased.

QUERY 9
Challenges=NONE
Explanation: Count function counts the airpalane each pilot is flying and left join is used between flies and pilot table so that we get all the pilots even the ones who hadnot flown any plane.

QUERY 10
Challenges=NONE
Explanation:Selecting the hangar with the maximum capacity

QUERY 11
Challenges=NONE
Explanation:Counting number of planes owned by each corporation and aliasing it as NumPlanes and showing it by descending order.

QUERY 12
Challenges=NONE
Explanation: Getting the avg service hours on each airplane by plane_type

QUERY 13
Challenges=There was no mention of if the employee is qualifies or not to work on an airplane in the case study. found it difficult to implement
Explanation: 

QUERY 14
Challenges=It is not working don't know if the table has the appropriate data for it. Query is right i think

QUERY 15
Challenges=didn't know how to show that a plane is going under maintanace at the moment come to the conclusion that if the service record date is the present date means it is currently undergoing maintenance.
Explanation:

QUERY 16
Challenges=NONE
Explanation: Summing the working hours of the employees who have worked in an airplane owned by a particular corporation 'Acme Corporation'GROUP BY Employee.Name ORDER BY Total_hours DESC


QUERY 17
Challenges=NONE
Explantion : Getting regNum and model of the airplane table and of the owners who are not corporation or the employees who have worked the day shift.

QUERY 18
Challenges=NONE
Explantion: Matching Owner id regNum of airplane purchased by a corporation at the present date and then matchin the regnum ownerid of the the airplane purchased by the same corporation in the past month

QUERY 19
Challenges=NONE
Explanation: Counting the hangar number on which the airplanes are stored in


QUERY 20
Challenges=NONE
Explanation: Counting the the number of airplanes each model has

QUERY 21
Challenges=NONE
Explanation: Counting the number of services performed on each airplane

QUERY 22
Challenges=NONE
Explanation: Avg salary of the employees working on the night or te day shift


QUERY 23
Challenges=NONE
Explanation: Counting the number of airplanes each owner own

QUERY 24
Challenges=NONE
Explanation: counting the number of planes each pilot is authorized to fly.

QUERY 25
Challenges=NONE
Explantion:1)--Query to find the average salary of employees working on a particular plane type
		2)--Query to find the total number of hours of service performed by each employee
		3)--Query to find Most Used Airplane
		4)--Query retrieves the registration number of each airplane in the database, along with the airplane's model and the name of its owner



ERD EXPLANATION

We have 9 entities in this erd diagram Owner which has subtype entities as Person and corporation and we have a union relation between the super and sub entities as it was not possible to mention union relation in erd plus so i just mentioned disjoint. Person has to subentities Employee and pilot and we have disjoint relation between them. One planeType can have many airplanes and many airplanes can be stored in one hangar, many airplanes can be owned by 1 owner and many emplyees can work on many plane types and many pilots can fly many plane types, one employee maintain many service records




