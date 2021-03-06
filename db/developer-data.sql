INSERT INTO Logins VALUES("admin", "21232f297a57a5a743894a0e4a801fc3", "administrator", "test", "test",  "test");

INSERT INTO Allergy(Type) VALUES ("Food Allergy");
INSERT INTO Allergy(Type) VALUES ("Skin Allergy");
INSERT INTO Allergy(Type) VALUES ("Insect Sting Allergy");
INSERT INTO Allergy(Type) VALUES ("Dust Allergy");
INSERT INTO Allergy(Type) VALUES ("Pet Allergy");

INSERT INTO Classes(Class_Name) VALUES ("First Class");
INSERT INTO Classes(Class_Name) VALUES ("Second Class");
INSERT INTO Classes(Class_Name) VALUES ("Third Class");
INSERT INTO Classes(Class_Name) VALUES ("Fourth Class");
INSERT INTO Classes(Class_Name) VALUES ("Fifth Class");

INSERT INTO Contact(Prefix, First_Name, Last_Name, Phone_Cell, Phone_Home, Address, City, State, Zip, Email) VALUES ("Mrs.", "Marilee", "Muller", "630-350-4389", "630-833-8899", "454 Royal Oaks Drive", "Wooddale", "IL", 60105, "muller@gmail.com");
INSERT INTO Contact(Prefix, First_Name, Last_Name, Phone_Cell, Address, City, State, Zip, Email) VALUES ("Mr.", "Bruce", "Alder", "773-240-0223", "250 Red Oaks Drive", "Bensenville", "IL", 60103, "bruce@yahoo.com");
INSERT INTO Contact(Prefix, First_Name, Last_Name, Phone_Cell, Phone_Home, Address, City, State, Zip, Email) VALUES ("Mr.", "Paul", "Shall", "630-567-3322", "630-483-2234", "350 Forest Preserve Drive", "Wooddale", "IL", 60105, "shall@gmail.com");
INSERT INTO Contact(Prefix, First_Name, Last_Name, Phone_Cell, Phone_Home, Address, City, State, Zip, Email) VALUES ("Mrs.", "Pamela", "Ellery", "630-333-2453", "630-889-3299", "400 S Mason St", "Bensenville", "IL", 60103, "pam1@gmail.com");
INSERT INTO Contact(Prefix, First_Name, Last_Name, Phone_Cell, Phone_Home, Address, City, State, Zip, Email) VALUES ("Mrs.", "Andrea", "Wisnowski", "630-924-4592", "630-321-1299", "323 Judson St", "Addison", "IL", 60101, "andrea@gmail.com");

INSERT INTO Programs(Program_Name) VALUES ("First Program");
INSERT INTO Programs(Program_Name) VALUES ("Second Program");
INSERT INTO Programs(Program_Name) VALUES ("Third Program");
INSERT INTO Programs(Program_Name) VALUES ("Fourth Program");
INSERT INTO Programs(Program_Name) VALUES ("Fifth Program");

INSERT INTO Classes_To_Programs(Program_Id, Class_Id) VALUES (1,4);
INSERT INTO Classes_To_Programs(Program_Id, Class_Id) VALUES (2,1);
INSERT INTO Classes_To_Programs(Program_Id, Class_Id) VALUES (3,5);
INSERT INTO Classes_To_Programs(Program_Id, Class_Id) VALUES (4,2);
INSERT INTO Classes_To_Programs(Program_Id, Class_Id) VALUES (5,3);

INSERT INTO Student(First_Name, Last_Name, Gender, Birth_Date, Address, City, State, Zip, School, Permission_Slip, Birth_Certificate, Reduced_Lunch_Eligible, IEP) VALUES ("Audrey", "Chapman", "F", '2007-05-14' , "640 George St", "Bensenville", "IL", 60103, "Fullerton Middle School", 1, 1, 1, 0);
INSERT INTO Student(First_Name, Last_Name, Gender, Birth_Date, Address, City, State, Zip, School, Permission_Slip, Birth_Certificate, Reduced_Lunch_Eligible, IEP) VALUES ("Evan", "Freemon", "M", "2005-08-22", "389 Catalpa Dr", "Wooddale", "IL", 60105, "Glen Ellyn Middle School", 1, 1, 1, 0);
INSERT INTO Student(First_Name, Last_Name, Gender, Birth_Date, Address, City, State, Zip, School, Permission_Slip, Birth_Certificate, Reduced_Lunch_Eligible, IEP) VALUES ("Frank", "Clarkson", "M", "2006-02-26" , "187 Georgia Ct", "Addison", "IL", 60101, "Joliet Middle School", 1, 1, 1, 1);
INSERT INTO Student(First_Name, Last_Name, Gender, Birth_Date, Address, City, State, Zip, School, Permission_Slip, Birth_Certificate, Reduced_Lunch_Eligible, IEP) VALUES ("Gavin", "Randall", "M", "2005-03-12" , "890 White Pines Rd", "Bensenville", "IL", 60103, "Bloomingdale Middle School", 1, 1, 1, 1);
INSERT INTO Student(First_Name, Last_Name, Gender, Birth_Date, Address, City, State, Zip, School, Permission_Slip, Birth_Certificate, Reduced_Lunch_Eligible, IEP) VALUES ("Grace", "Miller", "F", "2007-09-18" , "672 N Indiana St", "Elmhurst", "IL", 60107, "Blackhawk Middle School", 1, 1, 1, 0);

INSERT INTO Volunteer_Employee(Prefix, First_Name, Last_Name, Phone_Cell, Address, City, State, Zip, Email) VALUES ("Mrs.", "Anna", "Smith", "773-345-6372", "101 Woodlawn Ave", "Glen Ellyn", "IL", 60143, "smith43@gmail.com");
INSERT INTO Volunteer_Employee(Prefix, First_Name, Last_Name, Phone_Cell, Address, City, State, Zip, Email) VALUES ("Mr.", "Johnny", "Donofrio", "847-532-2135", "727 Howard Dr", "Elmhurst", "IL", 60107, "donofrio@gmail.com");
INSERT INTO Volunteer_Employee(Prefix, First_Name, Last_Name, Phone_Cell, Address, City, State, Zip, Email) VALUES ("Mrs.", "Catherine", "Lake", "630-943-1254", "612 Forest View Dr", "Addison", "IL", 60101, "lake@gmail.com");
INSERT INTO Volunteer_Employee(Prefix, First_Name, Last_Name, Phone_Cell, Address, City, State, Zip, Email) VALUES ("Mrs.", "Jamie", "Morgan", "630-777-1321", "221 Barron St", "Bensenville", "IL", 60103, "morgan@gmail.com");
INSERT INTO Volunteer_Employee(Prefix, First_Name, Last_Name, Phone_Cell, Address, City, State, Zip, Email) VALUES ("Mrs.", "Nancy", "Jacobs", "630-943-4422", "231 Breiter Ct", "Bensenville", "IL", 60103, "jacobs@gmail.com");

INSERT INTO Schedule(Class_Id, Volunteer_Id, Room_Number, Start_Time, End_Time, Day) VALUES (2, 1, "100", "3:30", "5:30", "Tuesdays");
INSERT INTO Schedule(Class_Id, Volunteer_Id, Room_Number, Start_Time, End_Time, Day) VALUES (1, 4, "101", "3:30", "5:30", "Thursdays");
INSERT INTO Schedule(Class_Id, Volunteer_Id, Room_Number, Start_Time, End_Time, Day) VALUES (4, 2, "102", "4:30", "6:30", "Mondays");
INSERT INTO Schedule(Class_Id, Volunteer_Id, Room_Number, Start_Time, End_Time, Day) VALUES (3, 5, "103", "4:30", "6:30", "Wednesdays");
INSERT INTO Schedule(Class_Id, Volunteer_Id, Room_Number, Start_Time, End_Time, Day) VALUES (5, 3, "104", "3:30", "5:30", "Fridays");

INSERT INTO School_Year(Student_Id, Term, Year, Pre_Test, Post_Test) VALUES (1, "Spring", 2018, 72.5, 85.3);
INSERT INTO School_Year(Student_Id, Term, Year, Pre_Test, Post_Test) VALUES (1, "Fall", 2018, 83.5, 89.3);
INSERT INTO School_Year(Student_Id, Term, Year, Pre_Test, Post_Test) VALUES (2, "Spring", 2017, 78.1, 82.8);
INSERT INTO School_Year(Student_Id, Term, Year, Pre_Test, Post_Test) VALUES (3, "Fall", 2018, 86.3, 92.1);
INSERT INTO School_Year(Student_Id, Term, Year, Pre_Test, Post_Test) VALUES (4, "Spring", 2018, 72.5, 85.3);

INSERT INTO Student_To_Allergy(Student_Id, Allergy_Id) VALUES (2, 1);
INSERT INTO Student_To_Allergy(Student_Id, Allergy_Id) VALUES (1, 4);
INSERT INTO Student_To_Allergy(Student_Id, Allergy_Id) VALUES (4, 2);

INSERT INTO Students_To_Classes(Student_Id, Class_Id) VALUES (1, 5);
INSERT INTO Students_To_Classes(Student_Id, Class_Id) VALUES (1, 2);
INSERT INTO Students_To_Classes(Student_Id, Class_Id) VALUES (2, 4);
INSERT INTO Students_To_Classes(Student_Id, Class_Id) VALUES (2, 1);
INSERT INTO Students_To_Classes(Student_Id, Class_Id) VALUES (3, 3);
INSERT INTO Students_To_Classes(Student_Id, Class_Id) VALUES (4, 2);
INSERT INTO Students_To_Classes(Student_Id, Class_Id) VALUES (5, 1);

INSERT INTO Students_To_Contacts(Student_Id, Conctact_Id, Relationship) VALUES (1, 3, "Uncle");
INSERT INTO Students_To_Contacts(Student_Id, Conctact_Id, Relationship) VALUES (2, 2, "Father");
INSERT INTO Students_To_Contacts(Student_Id, Conctact_Id, Relationship) VALUES (3, 4, "Aunt");
INSERT INTO Students_To_Contacts(Student_Id, Conctact_Id, Relationship) VALUES (4, 5, "Mother");
INSERT INTO Students_To_Contacts(Student_Id, Conctact_Id, Relationship) VALUES (5, 1, "Neighbor");

INSERT INTO Volunteer_To_Programs(Program_Id, Volunteer_Id) VALUES (1, 4);
INSERT INTO Volunteer_To_Programs(Program_Id, Volunteer_Id) VALUES (2, 3);
INSERT INTO Volunteer_To_Programs(Program_Id, Volunteer_Id) VALUES (3, 1);
INSERT INTO Volunteer_To_Programs(Program_Id, Volunteer_Id) VALUES (4, 2);
INSERT INTO Volunteer_To_Programs(Program_Id, Volunteer_Id) VALUES (5, 5);
