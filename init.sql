CREATE TABLE COURSES (
	ID INT  NOT NULL AUTO_INCREMENT,
	Name VARCHAR(10) NOT NULL,
	Title VARCHAR(100) NOT NULL,
	Description VARCHAR(500),
	PRIMARY KEY (ID)
);

CREATE TABLE HANDBOOK_SECTIONS (
	ID INT NOT NULL AUTO_INCREMENT,
	Name VARCHAR(100) NOT NULL,
	PRIMARY KEY (ID)
);

CREATE TABLE PNW_HANDBOOK (
	ID INT NOT NULL AUTO_INCREMENT,
	Name VARCHAR(100) NOT NULL,
	Section INT NOT NULL,
	Information TEXT NOT NULL,
	PRIMARY KEY (ID),
	FOREIGN KEY (Section) REFERENCES HANDBOOK_SECTIONS (ID)
);

CREATE TABLE CEP_HANDBOOK (
	ID INT NOT NULL AUTO_INCREMENT,
	Name VARCHAR(100) NOT NULL,
	Information TEXT NOT NULL,
	PRIMARY KEY (ID)
);
	

CREATE TABLE CLUBS (
	ID INT NOT NULL AUTO_INCREMENT,
	Name VARCHAR(100) NOT NULL,
	President VARCHAR(100),
	Advisor VARCHAR(100),
	Description VARCHAR(500),
	Email VARCHAR(100), 
	PRIMARY KEY (ID)
);

CREATE TABLE TUTORING (
	ID INT  NOT NULL AUTO_INCREMENT,
	Course VARCHAR(50) NOT NULL,
	Title VARCHAR(100) NOT NULL,
	Monday VARCHAR(100) NOT NULL,
	Tuesday VARCHAR(100) NOT NULL,
	Wednesday VARCHAR(100) NOT NULL,
	Thursday VARCHAR(100) NOT NULL,
	Friday VARCHAR(100) NOT NULL,
	PRIMARY KEY (ID)
);

CREATE TABLE CAMPUS (
	ID INT NOT NULL AUTO_INCREMENT,
	Name VARCHAR(20) NOT NULL,
	Address VARCHAR(50) NOT NULL,
	PhoneNum VARCHAR(15) NOT NULL,
	PRIMARY KEY (ID)
);

CREATE TABLE BUILDINGS (
	ID INT NOT NULL AUTO_INCREMENT,
	Name VARCHAR(100) NOT NULL,
	Campus INT NOT NULL,
	Monday VARCHAR(20) NOT NULL,
	Tuesday VARCHAR(20) NOT NULL,
	Wednesday VARCHAR(20) NOT NULL,
	Thursday VARCHAR(20) NOT NULL,
	Friday VARCHAR(20) NOT NULL,
	Saturday VARCHAR(20) NOT NULL,
	Sunday VARCHAR(20) NOT NULL,
	PRIMARY KEY (ID),
    FOREIGN KEY (Campus) REFERENCES CAMPUS(ID)

);

CREATE TABLE POINT_INTEREST (
	ID INT NOT NULL AUTO_INCREMENT,
	Name VARCHAR(100) NOT NULL,
    Campus INT NOT NULL,
	Address VARCHAR(100) NOT NULL,
	Contact VARCHAR(100),
	PhoneNum VARCHAR(15),
	Description VARCHAR(500),
	Link VARCHAR(50),
	PRIMARY KEY (ID),
    FOREIGN KEY (Campus) REFERENCES CAMPUS (ID)
);

CREATE TABLE FAQ (
	ID INT NOT NULL AUTO_INCREMENT,
	Question VARCHAR(100) NOT NULL,
	Answer VARCHAR(500) NOT NULL,
	PRIMARY KEY (ID)
);

CREATE TABLE ADMINISTRATORS (
	adminID INT NOT NULL AUTO_INCREMENT,
	emailAddress VARCHAR(100) NOT NULL,
	password VARCHAR(255) NOT NULL,
	firstName VARCHAR(20) NOT NULL,
	lastName VARCHAR(40) NOT NULL,
	PRIMARY KEY (adminID)
);

INSERT INTO ADMINISTRATORS (emailAddress, password, firstName, lastName)
VALUES ('testadmin@email.com', sha1('testing123'), 'Test', 'Admin');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES ('ACC 20000/20100', 'Introductory Accounting/Management Accounting I', 
'9:00am-10:30am\n12:30pm-3:00pm', '12:30pm-3:00pm', '1:30pm-3:00pm', '1:30pm-3:00pm', 'N/A');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES ('ASL 10200', 'American Sign Language II', 
'6:00pm-9:00pm', '6:30pm-9:00pm', '5:00pm-6:00pm', '6:30pm-9:00pm', '5:00pm-9:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES ('BIOL 10100/10200', 'Introductory Biology', 
'9:30am-12:30pm', '1:30pm-7:00pm', '3:00pm-4:30pm', 'N/A', '10:00am-1:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES ('BIOL 21300', 'Human Anatomy & Physiology I', 
'9:30am-12:30pm', '1:30pm-9:00pm', '3:00pm-9:00pm', 'N/A', '10:00am-1:00pm\n5:00pm-9:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES ('BIOL 21400', 'Human Anatomy & Physiology II', 
'9:30am-12:30pm', '1:30pm-9:00pm', '3:00pm-9:00pm', 'N/A', '10:00am-1:00pm\n5:00pm-9:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES ('BIOL 22100', 'Introductory Microbiology', 
'9:30am-12:30pm', '1:30pm-7:00pm', '3:00pm-4:30pm', 'N/A', '10:00am-1:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('BIZA 22500', 'Fundamental Managerial Statistics', 
'N/A', '1:30pm-3:00pm', '1:30pm-3:00pm', '1:30pm-3:00pm', 'N/A');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('CE 11500/11600/27101', 'Engineering Drawing I/Engineering Drawing II/Basic Mechanics I', 
'5:00pm-6:00pm', '3:00pm-7:00pm', 'N/A', '4:00pm-7:00pm', 'N/A');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('CGT 14100', 'Internet Foundations Technologies & Development', 
'8:00am-1:30pm\n2:00pm-6:00pm', '8:00am-1:30pm\n2:00pm-6:00pm', 
'8:00am-10:30am\n7:30pm-9:00pm', '8:00am-1:30pm\n2:00pm-6:00pm', 'N/A');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('CHM 11500', 'General Chemistry', 
'9:00am-10:30am\n12:30pm-1:30pm\n5:00pm-6:00pm', 
'12:30pm-7:00pm', 'N/A', '4:00pm-7:00pm', 'N/A');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('CHM 11600', 'General Chemistry', 
'9:30am-12:30pm', '1:30pm-7:00pm', '3:00pm-4:30pm', 'N/A', '10:00am-1:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('CHM 11900', 'General Chemistry', 
'9:30am-12:30pm', '1:30pm-7:00pm', '3:00pm-4:30pm', 'N/A', '10:00am-1:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('CS 12300', 'Programming I Java', 
'7:00am-7:00pm', '7:00am-7:00pm', '7:00am-7:00pm', '7:00am-7:00pm', '8:00am-2:00pm\n4:00pm-7:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('CS 12400', 'C++', 
'8:00am-7:00pm', '8:00am-7:00pm', '8:00am-7:00pm', 
'8:00am-2:00pm\n4:00pm-7:00pm', '8:00am-4:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('ECE 15200', 'Programming for Engineers', 
'8:00am-4:00pm', '8:00am-4:00pm', '8:00am-4:00pm', '8:00am-2:00pm', '8:00am-2:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('ECE 20100', 'Linear Circuits Analysis I', 
'7:00am-11:30am\n12:30pm-5:00pm', '7:00am-7:00pm', 
'7:00am-11:30am\n12:30pm-5:00pm', '7:00am-7:00pm', '7:00am-7:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('ECE 20200', 'Linear Circuits Analysis II', 
'9:00am-10:30am\n12:30pm-4:30pm', '12:30pm-2:30pm\n5:30pm-7:00pm', 
'12:30pm-4:30pm', '5:30pm-7:00pm', '12:30pm-2:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('ENGR 15100', 'Software Tools for Engineers', 
'7:00am-6:00pm', '7:00am-7:00pm', '7:00am-5:00pm', '7:00am-7:00pm', '8:00am-2:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('ENGR 19000', 'Elementary Engineering Design', 
'9:00am-10:30am\n12:30pm-1:30pm\n5:00pm-6:00pm', 
'12:30pm-7:00pm', 'N/A', '4:00pm-7:00pm', 'N/A');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('FR 10100/10200', 'French I/II', 
'4:00pm-6:00pm', '4:00pm-6:00pm', '4:00pm-6:00pm', '4:00pm-6:00pm', 'N/A');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('HIST 10400/10500', 'Intro to the Modern World/Survey of Global History', 
'4:00pm-6:00pm', '4:00pm-6:00pm', '4:00pm-6:00pm', '4:00pm-6:00pm', 'N/A');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('MA 11500', 'Intermediate Algebra', 
'12:30pm-2:30pm', '2:00pm-5:00pm', 'N/A', '2:00pm-5:30pm', '3:00pm-6:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('MA 14700/14800', 'Algebra & Trigonometry for Technology I/II', 
'8:00am-4:30pm', '8:00am-4:00pm', '8:00am-4:30pm', '8:00am-2:00pm', '8:00am-2:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('MA 15300', 'College Algebra', 
'7:00am-9:00pm', '7:00am-9:00pm', '7:00am-9:00pm', '7:00am-9:00pm', '7:00am-9:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('MA 15400', 'Algebra & Trigonometry II', 
'7:00am-7:00pm', '7:00am-7:00pm', '7:00am-7:00pm', '7:00am-7:00pm', '8:00am-4:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('MA 15910', 'Introductory Calculus', 
'7:00am-5:00pm', '7:00am-5:00pm', '7:00am-5:00pm', '7:00am-5:00pm', '8:00am-4:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('MA 16019', 'Applied Calculus I for Technology', 
'8:00am-4:30pm', '8:00am-4:00pm', '8:00am-4:30pm', '8:00am-3:00pm', '8:00am-4:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('MA 16021', 'Applied Calculus II & Differential Equations', 
'8:00am-10:30am\n1:30pm-4:30pm', '1:30-3:00pm', '8:00am-10:30am\n1:30pm-4:30pm', '1:30-3:00pm', 'N/A');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('MA 16031', 'Calculus I for Life Sciences', 
'8:00am-6:00pm', '8:00am-9:00pm', '8:00am-9:00pm', 
'8:00am-2:00pm\n4:00pm-7:00pm', '8:00am-2:00pm\n5:00pm-9:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('MA 16032', 'Calculus II for Life Sciences', 
'12:30pm-6:00pm', '3:00pm-9:00pm', '12:30pm-9:00pm', 
'12:30pm-9:00pm', '12:30pm-2:00pm\n5:00pm-9:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('MA 16300', 'Integrated Calculus Analytic Geometry I', 
'8:00am-7:00pm', '8:00am-7:00pm', '8:00am-7:00pm', '8:00am-7:00pm', '8:00am-4:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('MA 16400', 'Integrated Calculus Analytic Geometry II', 
'8:00am-7:00pm', '8:00am-10:30am\n12:30pm-7:00pm', '8:00am-7:00pm', 
'8:00am-10:30am\n12:30pm-8:00pm', '8:00am-4:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('MA 26100', 'Multivariate Calculus', 
'9:00am-6:00pm', '12:30pm-7:00pm', '11:00am-4:30pm', 
'1:30pm-3:00pm\n4:00pm-7:00pm', '10:00am-4:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('MA 26400', 'Differential Equations', 
'9:00am-4:00pm\n5:00pm-6:00pm', '12:30pm-7:00pm', 
'10:00am-1:00pm\n2:00pm-4:00pm', '4:00pm-7:00pm', '10:00am-12:00pm\n2:00pm-4:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('MA 26500', 'Linear Algebra', 
'9:00am-4:00pm\n5:00pm-6:00pm', '12:30pm-7:00pm', 
'10:00am-1:00pm\n2:00pm-4:00pm', '4:00pm-7:00pm', '10:00am-12:00pm\n2:00pm-4:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('ME 11500', 'Engineering Drawing', 
'9:00am-10:30am\n12:30pm-1:30pm', '12:30pm-2:30pm', 'N/A', 'N/A', 'N/A');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('ME 27100', 'Basic Mechanics I', 
'12:30pm-4:30pm', '5:30pm-7:00pm', '12:30pm-4:30pm', '5:30pm-7:00pm', '12:30pm-2:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('ME 10101', 'Introduction to Parametric Modeling', 
'8:00am-10:30am\n2:00pm-4:30pm', 'N/A', '8:00am-10:30am\n1:00pm-4:30pm', 'N/A', 'N/A');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('MET 10200/11800/14100', 
'Production Design & Specifications/Applied Mechanics: Statics/Materials I', 
'8:00am-10:30am\n2:00pm-4:30pm', 'N/A', '8:00am-10:30am\n1:00pm-4:30pm', 'N/A', 'N/A');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('MET 21101', '', 
'8:00am-10:30am\n2:00pm-4:30pm', 'N/A', '8:00am-10:30am\n1:00pm-4:30pm', 'N/A', 'N/A');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('MET 21300/24200', 'Dynamics/Manual Processes II', 
'8:00am-10:30am\n2:00pm-4:30pm', 'N/A', '8:00am-10:30am\n1:00pm-4:30pm', 'N/A', 'N/A');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('NUR 18800', 'Foundations of Physical Assessment', 
'9:00am-12:30pm\n2:00pm-4:00pm', '1:30pm-7:00pm', 
'3:00pm-4:30pm', 'N/A', '10:00am-1:00pm\n3:00pm-5:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('NUR 19202', 'Foundations of Nursing', 
'9:00am-12:30pm\n2:00pm-4:00pm', '1:30pm-7:00pm', 
'3:00pm-4:30pm', 'N/A', '10:00am-1:00pm\n3:00pm-5:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('NUR 19600', 'Foundations of Psychosocial Nursing', 
'9:30am-12:30pm', '1:30pm-7:00pm', '3:00pm-4:30pm', 'N/A', '10:00am-4:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('NUR 27400', 'Essential Pharmacokinetics for Nursing', 
'8:00am-7:00pm', '8:00am-7:00pm', '3:00pm-4:30pm', 
'N/A', '10:00am-1:00pm\n3:00pm-5:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('NUR 27500', 'Alternative Therapies for Nursing Practice', 
'9:00am-11:00am\n2:00pm-4:00pm', 'N/A', 'N/A', 'N/A', '3:00pm-5:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('NUR 28201', 'Adult Health I', 
'9:30am-12:30pm', 'N/A', '3:00pm-4:30pm', 'N/A', '10:00am-1:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('NUR 28600', 'Mental Health Nursing', 
'9:00am-12:30pm', '1:30pm-7:00pm', '3:00pm-4:30pm', 'N/A', '10:00am-1:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('NUR 29400', 'Essential Pharmacotherapeutics for Nursing', 
'9:00am-12:30pm\n2:00pm-4:00pm', '1:30pm-7:00pm', 
'3:00pm-4:30pm', 'N/A', '10:00am-1:00pm\n3:00pm-5:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('NUR 31702', 'Nursing Care of Women Through the Lifespan', 
'11:00am-11:00am', '9:00am-11:00am', 'N/A', 'N/A', '9:00am-1:00pm\n3:00pm-5:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('NUR 41500', 'Pathophysiology', 
'8:00am-7:00pm', '8:00am-7:00pm', '3:00pm-4:30pm', 'N/A', '9:00am-5:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('PHIL 11000/11100', 'Introductory Philosophy/Ethics', 
'N/A', '8:00am-12:00pm', '6:00pm-9:00pm', '8:00am-12:00pm', '8:00am-9:00am\n12:00pm-4:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('PHYS 15200', 'Mechanics', 
'8:00am-7:00pm', '12:30pm-7:00pm', '8:00am-7:00pm', '4:00pm-7:00pm', '12:30pm-4:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('PHYS 22000', 'General Physics', 
'8:00am-7:00pm', '4:00pm-7:00pm', '8:00am-7:00pm', '4:00pm-7:00pm', '1:00pm-4:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('PHYS 22100', 'General Physics', 
'8:00am-1:30pm\n3:30pm-7:00pm', '4:00pm-7:00pm', 
'8:00am-1:30pm\n4:30pm-7:00pm', '4:00pm-7:00pm', '1:00pm-4:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('PHYS 25100/26100', 'Heat, Electricity, & Optics', 
'8:00am-7:00pm', '12:30pm-7:00pm', '8:00am-7:00pm', '4:00pm-7:00pm', '12:30pm-4:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('PSY 12000', 'Elementary Psychology', 
'12:30pm-2:30pm\n4:00pm-6:00pm', '2:00pm-6:00pm', 
'4:00pm-6:00pm', '2:00pm-6:00pm', '3:00pm-6:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('SCI 10500/11400', 'Invitation to Human Biology/Introduction to Life Sciences', 
'9:30am-12:30pm', '12:00pm-9:00pm', '3:00pm-9:00pm', 
'12:00pm-3:00pm', '10:00am-1:00pm\n5:00pm-9:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('SCI 11200', 'Introduction to the Physical Sciences I', 
'9:00am-10:30am\n12:30pm-1:30pm\n5:00pm-6:00pm', 
'12:30pm-7:00pm', 'N/A', '4:00pm-7:00pm', 'N/A');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('SOC 10000', 'Introductory Sociology', 
'4:00pm-6:00pm', '4:00pm-6:00pm', '4:00pm-6:00pm', '4:00pm-6:00pm', 'N/A');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('SOC 38200', 'Introduction to Statistics in Sociology', 
'4:00pm-6:00pm', '4:00pm-6:00pm', '4:00pm-6:00pm', '4:00pm-6:00pm', 'N/A');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('SPAN 10100/10200/20100/20200', 'Spanish I/II/III/IV', 
'8:00am-7:00pm', '8:00am-7:00pm', '10:00am-12:00pm', 
'8:00am-12:00pm', '8:00am-9:00am\n12:00pm-4:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('STAT 13000', 'Statistics & Contemporary Life', 
'12:00pm-4:30pm\n6:30pm-9:00pm', '7:00am-12:00pm\n1:00pm- 9:00pm', 
'12:00-4:30pm\n6:30pm-9:00pm', '7:00am-2:00pm', '7:00am-12:00pm\n1:00pm- 9:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('STAT 30100', 'Elementary Statistical Methods', 
'8:00am-4:30pm\n6:30pm-9:00pm', '7:00am-12:00pm\n1:00pm-9:00pm', 
'8:00am-4:30pm\n6:30pm-9:00pm', '7:00am-2:00pm', '7:00am-12:00pm\n1:00pm- 9:00pm');

INSERT INTO TUTORING (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
VALUES('STAT 34500', 'Statistics', 
'10:00am-12:00pm\n2:00pm-4:00pm\n5:00pm-6:00pm',
'3:00pm-7:00pm', '10:00am-1:00pm\n2:00pm-4:00pm', 
'4:00pm-7:00pm', '10:00am-12:00pm\n2:00pm-4:00pm');

INSERT INTO CAMPUS (Name, Address, PhoneNum)
VALUES ('Hammond', '2200 169th Street', '(219)989-2400');

INSERT INTO CAMPUS (Name, Address, PhoneNum)
VALUES ('Westville', '1401 S. U.S. 421', '(219)785-5200');

INSERT INTO BUILDINGS (Name, Campus, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday)
VALUES ('E. D. Anderson Building (ANDR)', 1, '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 7:00 PM', '7:00 AM - 5:00 PM', 'CLOSED');

INSERT INTO BUILDINGS (Name, Campus, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday)
VALUES ('Classroom/Office Building (CLO)', 1, '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 7:00 PM', 'CLOSED', 'CLOSED');

INSERT INTO BUILDINGS (Name, Campus, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday)
VALUES ('Millard E. Gyte Science Building (GYTE)', 1, '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 7:00 PM', 'CLOSED', 'CLOSED');

INSERT INTO BUILDINGS (Name, Campus, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday)
VALUES ('Hospitality & Tourism Management Building (HTMB)', 1, '7:00 AM - 7:00 PM', '7:00 AM - 7:00 PM', '7:00 AM - 7:00 PM', '7:00 AM - 7:00 PM', '7:00 AM - 5:00 PM', 'CLOSED', 'CLOSED');

INSERT INTO BUILDINGS (Name, Campus, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday)
VALUES ('Nils K. Nelson Bioscience Innovation Building (NILS)', 1, '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 7:00 PM', '7:00 AM - 5:00 PM', 'CLOSED');

INSERT INTO BUILDINGS (Name, Campus, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday)
VALUES ('Gene Stratton Porter Hall (PORT)', 1, '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 7:00 PM', 'CLOSED', 'CLOSED');

INSERT INTO BUILDINGS (Name, Campus, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday)
VALUES ('Andrew A. Potter Laboratories Building (POTT)', 1, '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 7:00 PM', 'CLOSED', 'CLOSED');

INSERT INTO BUILDINGS (Name, Campus, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday)
VALUES ('Donald S. Powers Computer Education Building (PWRS)', 1, '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 7:00 PM', 'CLOSED', 'CLOSED');

INSERT INTO BUILDINGS (Name, Campus, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday)
VALUES ('Student Union and Library Building (SULB)', 1, '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 5:00 PM', '9:00 AM - 3:00 PM', 'CLOSED');

INSERT INTO BUILDINGS (Name, Campus, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday)
VALUES ('David Roberts Center for Innovatrion & Design (IDET)', 1, '8:00 AM - 4:30 PM', '8:00 AM - 4:30 PM', '8:00 AM - 4:30 PM', '8:00 AM - 4:30 PM', '8:00 AM - 4:30 PM', 'CLOSED', 'CLOSED');

INSERT INTO BUILDINGS (Name, Campus, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday)
VALUES ('Commercialization & Manufacturing Excellence Center (CMEC)', 1, '5:00 PM - 8:00 PM', 'CLOSED', '5:00 PM - 8:00 PM', '5:00 PM - 8:00 PM', 'CLOSED', 'CLOSED', 'CLOSED');

INSERT INTO BUILDINGS (Name, Campus, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday)
VALUES ('Indianapolis Boulevard Counseling Center (IBCC)', 1, '8:00 AM - 4:30 PM', '8:00 AM - 4:30 PM', '8:00 AM - 4:30 PM', '8:00 AM - 4:30 PM', '8:00 AM - 4:30 PM', 'CLOSED', 'CLOSED');

INSERT INTO BUILDINGS (Name, Campus, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday)
VALUES ('Hammond Fitness & Recreation Center (FNRC)', 1, '7:00 AM - 7:00 PM', '7:00 AM - 7:00 PM', '7:00 AM - 7:00 PM', '7:00 AM - 7:00 PM', '7:00 AM - 7:00 PM', '9:00 AM - 12:00 PM', '12:00 PM - 3:00 PM');

INSERT INTO BUILDINGS (Name, Campus, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday)
VALUES ('C. H. Lawshe Hall (LAWS)', 1, '8:00 AM - 4:30 PM', '8:00 AM - 4:30 PM', '8:00 AM - 4:30 PM', '8:00 AM - 4:30 PM', '8:00 AM - 4:30 PM', 'CLOSED', 'CLOSED');

INSERT INTO BUILDINGS (Name, Campus, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday)
VALUES ('Charlotte R. Riley Center (RILY)', 1, '8:00 AM - 4:30 PM', '8:00 AM - 4:30 PM', '8:00 AM - 4:30 PM', '8:00 AM - 4:30 PM', '8:00 AM - 4:30 PM', 'CLOSED', 'CLOSED');

INSERT INTO BUILDINGS (Name, Campus, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday)
VALUES ('Schneider Avenue Building (SAB)', 1, '8:00 AM - 4:30 PM', '8:00 AM - 4:30 PM', '8:00 AM - 4:30 PM', '8:00 AM - 4:30 PM', '8:00 AM - 4:30 PM', 'CLOSED', 'CLOSED');

INSERT INTO BUILDINGS (Name, Campus, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday)
VALUES ('University Services Building (UNSV)', 1, '8:00 AM - 4:30 PM', '8:00 AM - 4:30 PM', '8:00 AM - 4:30 PM', '8:00 AM - 4:30 PM', '8:00 AM - 4:30 PM', 'CLOSED', 'CLOSED');

INSERT INTO BUILDINGS (Name, Campus, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday)
VALUES ('Library Student Faculty Building (LSF)', 2, '7:00 AM - 9:00 PM', '7:00 AM - 9:00 PM', '7:00 AM - 9:00 PM', '7:00 AM - 9:00 PM', '7:00 AM - 5:00 PM', '9:00 AM - 3:00 PM', 'CLOSED');

INSERT INTO BUILDINGS (Name, Campus, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday)
VALUES ('Robert F. Schwarz Hall (SWRZ)', 2, '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 5:00 PM', 'CLOSED', 'CLOSED');

INSERT INTO BUILDINGS (Name, Campus, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday)
VALUES ('Technology Building (TECH)', 2, '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 10:30 PM', '7:00 AM - 5:00 PM', 'CLOSED', 'CLOSED');

INSERT INTO BUILDINGS (Name, Campus, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday)
VALUES ('Physical Facilities/Campus Police (PFCP)', 2, '8:00 AM - 4:00 PM', '8:00 AM - 4:00 PM', '8:00 AM - 4:00 PM', '8:00 AM - 4:00 PM', '8:00 AM - 4:00 PM', 'CLOSED', 'CLOSED');

INSERT INTO BUILDINGS (Name, Campus, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday)
VALUES ('James B. Dworkin Student Services & Athletic Complex (DSAC)', 2, '7:00 AM - 7:00 PM', '7:00 AM - 7:00 PM', '7:00 AM - 7:00 PM', '7:00 AM - 7:00 PM', '7:00 AM - 7:00 PM', 'CLOSED', 'CLOSED');

INSERT INTO CEP_HANDBOOK (Name, Information)
VALUES('Office of Concurrent Enrollment Staff', 
'Dr. Anne Gregory\nDirector of the School of Education and Counseling\nConcurrent Enrollment Program Executive Director\n219-989-2086 / anne.gregory@pnw.edu\n\nRachel Clark\nCoordinator of Students and School Partnerships\n219-785-5236 / raweaver@pnw.edu\n\nKatie Bowers\nCoordinator of Academics and Accreditation\n219-989-2192 / bowers31@pnw.edu\n\nTracey Radtke\nRegistration Coordinator\n219-785-5782 / radtket@pnw.edu\n\nVicki Jankowski\nOffice Support Staff\n219-785-5780 / vjankow@pnw.edu\n\nPeter Bailey\nSecretary\n219-785-5590 / pgbailey@pnw.edu
');

INSERT INTO CEP_HANDBOOK (Name, Information)
VALUES('Mission Statement', 
'The Purdue University Northwest’s Concurrent Enrollment Program works in partnership with school districts to ensure that exceptional high school students receive a high quality educational experience.\n\nThe Purdue University Northwest’s Concurrent Enrollment Program will serve the Northwest Indiana region by providing high quality courses to high school students, first rate professional development to dual credit instructors, and collaborative programming to partner schools.
');

INSERT INTO CEP_HANDBOOK (Name, Information)
VALUES('Student Benefits & Academic Resources', 
'PNW Library\nFull on-campus and online access to the PNW Library\n\nWriting Center\nOne-on one consultations on any writing project.\n\nOther Tutoring\nFree academic assistance and tutoring.\n\nAcademic Advising\nHave the most accurate information on your courses, credits,and enrollment.
');

INSERT INTO CEP_HANDBOOK (Name, Information)
VALUES('Purdue Probation Policy', 
'All students shall be placed on academic probation if his/her fall/spring semester or cumulative Purdue GPA at the end of any fall/spring semester is less than a 2.0. A student may be removed from probationary status at the end of the first subsequent fall/spring semester in which they achieve both semester and cumulative GPAs equal to or greater than 2.0.If a student raises their semester GPA above a 2.0 but their cumulative GPA remains below, or vice-Versa, they shall remain on probation.\n\nA student on academic probation shall be academically dropped from the University at the close of any fall or spring semester in which both his/her semester and cumulative GPA is still less than a 2.0.A student who is academically dropped from the University for the first time is not eligible to enroll for at least one fall or spring semester. A student who is academically dropped for the second time is not eligible to enroll for at least one year. If there is a grade change caused by an error in reporting there will be a recalculation of GPA and academic standing. The summer semester does not factor into the assessment of academic standing.\n\nIf applying for readmission, the fee is $100 and admission is not guaranteed.
');

INSERT INTO CEP_HANDBOOK (Name, Information)
VALUES('Academic Misconduct', 
'Students are expected and required to abide by the laws of the state of Indiana and the rules and regulations of Purdue University, to conduct themselves in accordance with accepted standards of social behavior, to respect the rights of others, and to refrain from any conduct that tends to obstruct the work of the University or to be injurious to the welfare of the University. Examples of misconduct would include dishonesty, cheating, plagiarism, lying, stealing, forgery, falsifying information, etc.\n\nThis policy functions in addition to / parallel with any policies for misconduct, academic or otherwise, which are already in place at your school. PNW CEP will work in concert with your school on issues of misconduct, and will respect decisions made on it by your school as well.\n\nThe following webpage addresses student misconduct and disciplinary actions taken, if necessary:\n\nhttps://www.pnw.edu/dean-of-students/student-code-of-conduct/
');

INSERT INTO CEP_HANDBOOK (Name, Information)
VALUES('Boilerkey Two Factor Authentication', 
'Please visit: https://www.pnw.edu/information-services/services/boilerkey/
');

INSERT INTO CEP_HANDBOOK (Name, Information)
VALUES('Activating myPNW Account', 
'To activate or access your student account, you will need your Career Account(PNW Username) and PUID. \n\nIMPORTANT: Please keep the password current, it will expire every 90 days.\n\nFollow these easy steps to active your account and set password:\n\nGo to password.pnw.edu\n\nSelect Activate Account(New Students Only)\n\nYou will need your career account/ username and PUID.\nKeep your password confidential\n\nLog out after password creation and log in again at www.pnw.edu to enter your student portal\n\nAccess your academic and student account information by Selecting “Bills & Payment Tab” then clicking the Student Self Service hyperlink\n\n
You will use your student account to check your classes, grades, credits, pay online for your classes, and check your PNW email. Keep your password current, it expires every 90 days. You will need your student account password to order your official Purdue transcript.
');

INSERT INTO CEP_HANDBOOK (Name, Information)
VALUES('Important Information', 
'1.\tMemorize your PUID Number and Username \n\na.\tThese will allow you to access and activate your myPNW account, set your own password, see your classes/semester grades and pay your tuition fees online.\n\n2.\tGet to know your myPNW account:\n\na.\tYou will have access to email, calendars, tuition statements, announcements, classes, registration, and student records. Everyone is encouraged to log into their Banner account regularly.\n\n3.\tHow to pay Tuition (tuition is due as stated on the tuition statement and as stated in the student’s myPNW account).\n\na.\tOn - line through your student account\n\nb.\tOn campus with cash or check(no credit/ debit cards) at the Bursar’s Office in Schwarz Hall(Westville), or in Lawshe Hall(Hammond).\n\nc.\tBy check through US mail. There is a payment plan available, which allows two separate payments to be made.\n\n4.\tConsequences if not paid on time:\n\na.\tIf tuition is not paid, those classes will be dropped from the student’s record.\n\nb.\tIf tuition is not paid and classes are dropped, those classes cannot be re-registered if payment is received after the deadline.\n\nc.\tDropped CEP classes could affect the receipt of the Indiana Academic Honors Diploma.\n\n5.\tKnow the Pre-Requisites\n\na.\tPre-requisites are courses that need to be taken before registering for a particular course. For instance, SPAN 101 must be completed with at least a ‘C’ before moving on to SPAN 102.\n\nb.\tForeign Language courses need to have Placement Exam results indicating competency if wanting to start at 201 and 202.\n\n6.\tMore CEP information can be found at our website at https://academics.pnw.edu/academic-affairs/concurrentenrollment/
');

INSERT INTO CEP_HANDBOOK (Name, Information)
VALUES('Drop & Withdrawal Policy', 
'Students will have the opportunity to drop a course by the drop deadline. If the student drops the course, the record will be removed from their transcript and they will be absolved of their responsibility for the course tuition. The last day to drop will be provided in advance to the school. If a student decides that they do not wish to continue with the course after the drop date, they will be considered a withdrawal.\n\nStudents who are struggling in a course may choose to withdraw by the approved date for each term. Withdrawals will not be processed after the provided date[without an appeal].When a student withdraws from a course they will receive a “W” on their transcript and will be responsible for the course tuition; if they have already paid the tuition they will not receive a refund.\n\nTo drop or withdraw from a course, the student can pick up a drop/withdrawal form from their high school guidance office. The form will have the important dates listed for each school year, so the student will know if they are in the “drop” or “withdrawal” period when completing the form. The form must be signed by the student, the student’s parent/guardian, course instructor, and school guidance counselor. Once complete, the guidance counselor will fax or email a copy of the form to the CEP office.\n\nIf a student is not able to complete the course due to circumstances outside of their control(e.g.serious illness resulting in hospitalization/ homebound status, withdrawal from school, etc.) the record will be removed from their transcript. The high school guidance office should notify the CEP office of these instances when they occur.\n\n
Text = "Students who fail to notify their high school and the CEP office of their intent to withdraw from a course will receive their final course grade on their transcript.
');

INSERT INTO CEP_HANDBOOK (Name, Information)
VALUES('Important Dates & Deadlines', 
'1.\tJuly 29th: Placement Exams Open\n\n2.\tAugust 16th: Course Registration Forms due by 12:00 pm for Fall Semester\n\n3.\tAugust 26th: Last day to add course registration, take Placement Exams, and last day to submit Transfer Student Application & Registration Forms\n\n4.\tSeptember 27th: TUITION DUE(Fall / Tri 1) * Classes will be dropped for nonpayment. \n\n5.\tSeptember 27th: Last day to drop Fall Course Registration without penalty\n\n6.\tNovember 25th: Accepting Spring applications, Placement Exams open for Spring Semester\n\n7.\tNovember 29th: Last day to withdraw from Fall Semester\n\n8.\tDecember 27th: Last day for Spring applications and Placement Exams\n\n9.\tJanuary 27th: Last day to add course for Spring / Tri 3 and last day to submit Transfer Student Application & Registration Forms\n\n10.\tMarch 27th: TUITION DUE(Spring / Tri 2 & 3) * Classes will be dropped for nonpayment.\n\n11.\tMarch 27th: Last day to drop Spring or Year - long Courses without penalty\n\n12.\tApril 24th: Last day to withdraw from Spring Semester/ yearlong courses / Tri 3)
');

INSERT INTO CEP_HANDBOOK (Name, Information)
VALUES('How Does Concurrent Enrollment Help Me?', 
'Get a jump-start on college.\n\nCredits are easily transferable to most universities.\n\nGain a competitive edge.\n\nCompetition in college admissions means that admissions officers now look for evidence of rigorous coursework on high school transcripts.\n\nEnjoy more flexibility in college.\n\nCompleting college classes in high school gives you greater flexibility as a full - time college student.\n\nLearn college - level skills before your freshman year of college.\n\nThe critical thinking, writing, and reading skills developed in Concurrent Enrollment courses will prepare you for success in college.\n\nReduce the overall cost of a college education
');

INSERT INTO CEP_HANDBOOK (Name, Information)
VALUES('Applying to PNW After High School Graduation', 
'You may have earned multiple college credits in high school through PNW; however, all graduating seniors must still apply as a “first time college student.” \n\nApply:\nVisit the PNW Admissions website for details on admission and how to apply!\nhttps://admissions.pnw.edu/undergraduate/first-time-collegestudents/\n\nPNW Tuition Costs:\nFind out more about the costs associated with attending PNW at \nhttps://www.pnw.edu/bursar/tuition-and-fees/\n\nCEP Student Scholarship:\nFive $1000 scholarships will be awarded to PNW CEP students attending PNW after high school graduation.See website for more details:\nhttps://academics.pnw.edu/academic-affairs/concurrent-enrollment/\n\nUndergraduate Scholarships:\nPNW offers a variety of scholarships.Please visit the link below to be aware of scholarships as they become available:\nhttps://admissions.pnw.edu/financial-aid/scholarships/
');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Actively Moving Forward (A.M.F.)', 'Kayla Vasilko', '', '', 'kvasilko@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Alpha Phi Alpha Fraternity Inc.', 'Anthony Byrd II', '', 'Alpha Phi Alpha develops leaders, promotes brotherhood and academic excellence, while providing service and advocacy for our community.', 'abyrdii@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Alpha Psi Lambda', 'Mia Sistrunk', 'Gisele M. Casanova', '', 'csistrun@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('American Sign Language Club', 'Gabrielle Dillard', 'Karen Donah', 'The ASL Club is devoted to bringing hearing, deaf, and hard of hearing students and families together through the events we hold both on and off campus.', 'gdillard@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('American Society of Civil Engineers', 'Alec Schaar', '', 'The PNW ASCE student chapter is nationally recognized and aims to provide student members with opportunities to learn, network, and compete in regional ASCE student competitions.', 'schaar@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('American Society of Mechanical Engineers', 'Jose Martinez', 'Hansung Kim', 'The objective to ASME at PNW is to advance and disseminate knowledge of theory and practice of mechanical engineering, the presentation of a proper perspective of engineering work, and the opportunity to become acquainted with personnel and activities of the Society as well as to promote a professional awareness and fellowship.', 'ASME@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('American Institute of Steel Construction Steel Bridge Team', 'Anthony Fadke', 'Chien-Chung Chen', '', 'afadkegi@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('American Society of Heating, Refrigerating, and Air Conditioning Engineers', 'John Resa', '', 'The ASHRAE Student Chapter provides access to new technologies, offers professional development opportunities, creates opportunities for networking, and hosts career development programs.', 'ASHRAE@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Aspiring Educators', 'Brittnie Beach', 'Anastasia Trekles', '', 'beach19@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Best Buddies', 'Alexis Ahrens', 'Pam Ayala', 'Best Buddies is an organization that focuses on building lifelong friendships between those with and without intellectual, physical, and emotional disabilities! The organization is build on friendship, acceptance, and inclusion of those with disabilities!', 'acahrens@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Beta Alpha Psi', 'Patrick Petruf', 'Jaclyn Barkow', '', 'ppetruf@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Beta Gamma Sigma', '', '', 'Beta Gamma Sigma is an elite international business honor society for programs accredited by the AACSB International. It is currently recognized in over 160 countries.', 'studentlife@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Black Student Union', 'Shania Mitchell', '', 'The purpose of the BSU is to provide encouragement and support for academic and social growth at PNW.', 'mitch281@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Boots and Bridles Club', 'Kassidy Wilbourn', '', 'The Boots and Bridles Club is a fun place for those who wish to learn about different aspects of the equine industry. Students can compete in two disciplines, Western and English, with levels ranging from beginner to open/advanced.', 'bootsandbridlespnw@gmail.com');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Brother 2 Brother', 'Calvin-Charles Mead', '', 'Student African American Brother (SAAB) is an organization that was established by Tyrone Bledsoe on Octover 17, 1990 on the campus of Georgia Southwest State University.', 'mead2@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Chemistry and Physics Club', 'Zakyra Jordan', 'Harold Pinnick', 'The Chemistry and Physics Club provides access to new technologies; offers professional development opportunities; creates opportunities for networking; and hosts career development programs.', 'chemistryphysicsclub@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Chi Sigma Iota', 'Kimberly Keon', '', 'Chi Sigma Iota is an international honor society that promotes academic excellence and professionalism for graduate students and professionals in the field of counseling.', 'pnw_csi@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Chinese Student Association', 'Xintong Liu', 'Shuhui Yang', 'PNW Chinese Student Association is an official PNW-recognized non-profit organization.', 'liu2054@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('ChiroClub', '', 'Scott Simerlein', 'The ChiroClub is here to provide information about the field of chiropractic and to serve as a support system and social outlet for those who have decided up chiropractic as a career.', 'ssimerle@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Circle K', 'Kyle Stowers', 'Cindy Robbins', 'Circle K International is the largest student led collegiate organization in the world. You will be able to explore a multitude of clubs and activities and explore your creativity or your leadership skills.', 'kstower@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Computer Science Club', 'Will Stratton', 'Roger Craft', '', 'wstratto@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Criminal Justice Club', 'Casey Austin', 'Nicky Jackson', 'The Criminal Justice Club works towards giving back to the community. We believe that if we have the opportunity to help the community, then why not?', 'austin75@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Critter Club', 'Kaitlyn Wilcher', 'Vanessa Quin', '', 'kwilche@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Cygnets of Gamma Phi Omega', 'Betsaida Fernandez', 'Liliana Andarcia', '', 'fernanb@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Debate Club', 'Mason Crist', 'Deanna Francoeur-Schmidt', '', 'mrcrist@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Digital Studio', 'Luis Romero', 'David Andre', '', 'lsromero@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Economics Club', 'Taylor Kroon', 'Amlan Mitra', 'The purpose of the Economics Club is to stand as a student resource for educational and job success, and serve as an approachable forum for economic, business, and public policy discussions.', 'kroon@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Environmental Club', 'Fernando Plata', 'John Bachman', 'The Environmental Club champions the multifaceted campus sustainability initiative and collaborates with students, faculty, staff, and administrators to create a culture of conservation. By conserving today, we preserve the promise of tomorrow.', 'fplata@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Finance and Accounting Club', 'Zachary Eng', '', 'The Finance and Accounting Club assists with the professional, educational, and social development of members by providing opportunities for interaction between business practitioners, faculty, and fellow students on topics relating to finance and accounting.', 'engz@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('First Friday Wordsmiths', 'Autumn MacCartney', 'Bethany Lee', 'FFW is dedicated to giving fiction and nonfiction writers, poets, scriptwriters, and all lovers of the written word a place to share their work and discuss literature.', 'firstfridaywordsmiths@gmail.com');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('F.I.T.E. Human Trafficking', 'Amanda De Jesus', '', '', 'dejesua@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Fluid Power Club', 'Sean Slouber', '', '', 'sslouber@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Gamma Theta Kappa', 'Bryan Rucinski', '', 'We as a fraternity exist for several reasons. Our main goal is to broaden the horizons for all interested men, and to ensure that they have a meaningful path through college and life.', 'brucinsk@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('German Club', 'Bonnie Hamstra', '', 'This club serves to be a resource for students who have interst in German language, culture, and history. We strive to create an active face on campus and to spread our love for Germany.', 'benne151@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('History Club', 'David Klein', '', '', 'dsklein@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('HTM Club', 'Curtis Hunt', '', 'HTM of PNW will seize the chance to have fun and get involved, meet others, sharpen skills, serve the community, and prepare students for their future career in the hospitality industry.', 'htmclub@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Human Development and Family Studies Student Group', 'Kayla Duesing', 'Patty Rodda', 'The HDFS Student Group promotes the field of human development and family studies through students networking while providing ideas for professional opportunities and development, along with service projects to aid the community.', 'kduesing@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Humane Society of US at PNW', 'Dustin Thibideau', '', 'The purpose and mission of HSUS at PNW is to educate students about animal welfare issues and engage in the protection for animals through advocacy, education, events, and hands-on programs. HSUS at PNW strives to be pursuant in bringing change for the voiceless and defenseless.', 'dthibide@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Information Systems Student Association', 'Nelly Chango', '', 'The purpose of ISSA is to help members in their professional, educational, and social development through interactions with business practitioners, faculty, and fellow students on information systems topics.', 'nchangot@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Institute of Electical and Electronics Engineers', '', '', 'The IEEE is an international professional society devoted to advancing the theory and application of electrical engineering, electronics, and computing. Maximize your understanding and education at PNW through our IEEE student branch.', 'IEEEPNW@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('InterVarsity Christian Fellowship', 'Michael Jerde', 'Morgan Folgers', 'The purpose of the InterVarsity Christian Fellowship is to build a collegiate fellowship that engages PNW with the gospel of Jesus Christ and makes disciples who live out Biblical values.', 'mjerde@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Invisible Strings: Orchestra Club', 'Autumn MacCartney', 'Jenne Carey', 'The musicians in this orchestra focus on fundamental string techniques, alternative string styles, as well as traditional string repertoire and developing advanced techniques.', 'amaccar@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Iota Phi Theta', 'Daketawatu Mable', '', '', 'dwmable@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Kmusic Club', 'Makayla Hampton', 'Hyungjo Hur', '', 'hampto23@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('LGBTQ+ Alliance', 'Aaliyah Colon', '', 'LGBTQ+ Alliance strives to create a safe and fun environment for LGBTQ+ members of our community to meet and congregate with one another, as well as allies and students who have not yet come out. We also strive to educate others on LGBTQ+ terminology, issues, and better ways to be an ally.', 'arcolon@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Material Advantage', 'Sam Nielson', '', '', 'snielson@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Medical Careers Club', 'Amanda Deaner', '', '', 'adeaner@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('MET Budget Race Car Club', 'Caleb Bublitz', '', '', 'cbublitz@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('National Society of Black Engineers', 'Christian Bland', '', 'Welcome to the PNW chapter of the National Society of Black Engineers. Our mission is to increase the number of black engineers who succeed professionally, excel academically, and positively impact the community.', 'president.nsbepuc@gmail.com');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('National Society of Leadership and Success', 'Rita Willcox', '', 'NSLS is the largest leadership honor society in the nation. In addition to honoring excellence, the Society provides a step-by-step program for members to build their leadership skills through participation on their campus.', 'Invitation Only');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Nursing Club', 'Christina Foy', '', 'The purpose of the Nursing Clun is to promote nursing within the university community as well as surrounding communities. To assist in philanthropic endeavors. To support the education of all nursing students.', '');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('One Up Entrepreneurial Club', 'Nikolas Kritikos', 'Alexandra Moran', '', 'nkritiko@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('The Pioneer', '', '', 'The Pioneer is the student-operated newspaper and website for PNW. The Pioneer is a member of the Indiana Collegiate Press Association and has won several awards in its annual competition in recent years.', 'pioneer@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Philosophy Club', 'Matthew Hansen', 'David Detmer', '', 'hansenme@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Phi Xi Psi', 'Shelby Rodriguez', '', 'Phi Xi Psi Sorority was founded on the values of education, success, and community; we are centered on the academic and professional success of women. Created to empower, encourage, and strengthen women to better themselves and those around them.', 'PhiXiPsi@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Pi Sigma Alpha', 'Emily Weber-Brokke', 'Yu Ouyang', '', 'eweberbr@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('PNW Aerosolar Engineering Club', 'Todd Coffeen', 'Yun Liu', 'The PNWAEC is the premiere club on campus for talented Engineering students. As a club we are focused on harvesting Solar Energy, with the purpose of charging electic car batteries at an unprecedented efficiency.', 'tcoffeen@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Pre-Pharmacy Club', 'Karim Ali', 'Radmila Stanic', '', 'ali69@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Pre-Veterinary Club', 'Ellery Pazanin', '', 'The goal of the Pre-Veterinary Club is to educate students about the profession of Veterinary Medicine. Members will have the opportunity to interact with others who have similar goals, learn about the application process, and speak with practicing Veterinarians.', 'epazanin@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('PNW Gamers Guild', 'Daniel Olanda', '', 'PNW Gamers Guild exists to provide gaming enthusiasts from all aspects of gaming access to other players, information, and resources. PNW Gamers Guild allows those from different academic backgrounds a chance to interact in a fun and safe environment.', 'dolanda@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('PNW Improv', 'CieAna Marsh', 'Paul Hecht', 'The Ranting Llamas Improv Troupe is an organization that practices improvisation, which is more than acting. With improv you do not follow a script, you follow your gut.', 'marsh11@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('PNW Motorsports Formula SAE', 'David Garza', '', 'Formula SAE revolves around designing, funding, manufacturing, and racing a formula style, open-wheel race car. Our organization encompasses engineering, technology, finance, marketing, and many more majors.', 'fsae@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('PNW National Organization for the Reform of Marijuana Laws', '', '', 'PNW NORML strives to change marijuana laws in Indiana. We work with other Indiana based legalization groups such as The Higher Fellowship.', 'studentlife@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Psi Chi', '', '', 'We are the PNW chapter of the International Honor Society in Psychology. Our members are Psychology majors who have been invited to join our organization.', 'Invitation Only');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Psychology Club', 'Rebecca Hasley', '', 'The Psychology Club is a student led organization with the intention of providing supplemental material and outside experiences to both psych majors/minors and any other students interested in learning about the field of psychology.', 'rhasley@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Public Relations Club', 'Raven Chant', 'Tyler Malec', 'Public Relations Club is filled with students who have interests in the public relations field or a similar one. Our club usually consists of Communication majors, but we are open to new members from any major.', 'prclub@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Purdue Indian Student Association', 'Dhyey Patel', '', '', 'pateldb@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Purdue Northwest Biology Club', 'Jordan Nikkel', 'Barbara Mania-Farnell', 'Biology Club is open to students of all majors and works to keep students informed about volunteer, internship, and career opportunities in the field all while providing a comfortable environment for students to relax and network with peers and faculty members.', 'jnikkel@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Purdue Northwest Software Engineering Club', 'Benjamin Jumche', 'George Stefanek', 'The purpose of PNWSEC is to be a student software project development collective. Members will have access to collaborative resources and development technology not otherwise available.', 'bjumche@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Purdue University Marketing Association', 'Frank Sek', 'Ceren Turendi', 'PUMA teaches students about the many aspects of marketing. Members gain practical experience by participating in activities and listening to guest speakers in the marketing profession.', 'fsek@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Qollective Art Club', 'Emma DeGroot', 'Michael Shallow', '', 'emdegroo@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('R.O.A.R. Cyber Club', 'Giana Ciuffetelli', 'Michael Tu', 'We are a club at PNW centered around gaining knowledge and experience with Computer Science.', 'gciuffet@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Residence Hall Association', 'Jacqueline Cabrera', 'Jasmine Hester', 'Represents the residents of the University Village community in all aspects of campus life, creating opportunities for students to interact, and to provide leadership for change in accordance with the goals of the Department of Housing and Residential Education.', 'jccabrer@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Rugby Club', '', 'Michael Pelter', 'The Rugby Club aims to promote the sport of Rugby in the area. We welcome people at any level of expertise to join in, whether you know nothing of the sport and are curious, or you have played for years.', 'mwpelter@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Saudi Student Association', 'Majed Noor', '', 'The main purpose of this organization is to make the communication between the Saudi student, the university, and Saudi Arabio clearer.', 'mnoor@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Sigma Gamma Rho', 'Raven White', '', '', 'etachipnw@gmail.com');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Sigma Lambda Beta', 'Antinio Garcia', 'Catalina Rodriguez', '', 'garci487@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Sisters with a Purpose', 'Destiny Jones', 'Tatiana Colby', '', 'jone1819@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Students Helping Ignite Needed Esteem', 'Kayla Vasilko', 'Amy Libauskas', '', 'kvasilko@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Social Justice Club', 'Kourtney Olive', 'Alan Spector', 'The Social Justice Club is open to all members of the campus community. The club sponsors many events and activities intended to make the world a more humane place.', 'kolive@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Social Work Club', 'Caitlyn Kalisik', 'Robin Miller', 'The Student Social Work Club is an integral component of professional education as it is a component of the implicit curriculum. Student association officers help with the formulation and modification of policies affecting student affairs, writing student grants, and implementing student-related projects and functions.', 'ckalisik@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Society for Creative Anachronisms', '', '', 'The SCA is an international non-profit educational organization, dedicated to the preservation, research, and recreation of the crafts, arts, and experiences of the Middle Ages and Renaissance.', '');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Society of Automotive Engineers Baja', '', 'iakhmadu@pnw.edu', 'The SAE Baja is about more than engineering and manufacturing. It is an adventure for all PNW students.', 'pnwbajamotorsports@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Society of Hispanic Professional Engineers', 'Myriam Chagoluisa', 'Dell Dumas', 'HPE changes lives by empowering the Hispanic community to realize its fullest potential and to impact the world through STEM awareness, access, support, and development.', 'mchangol@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Society of Human Resource Management', 'Kenneth Whittle', 'Jane Thomas', 'The purpose of this organization is to provide and promote a better understanding of the functions and values of Human Resource Management. The group informs students of current developments in the field and endeavors to develop a nucleus of truly professional human resource managers.', 'kwhittle@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Society of Women Engineers', 'Sydney Valiska', 'Xiaoli Yang', 'The purpose of this organization is to inform young women, their parents, counselors, and the public of the qualifications and achievements of women in engineering and the opportunities available to them.', 'svaliska@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Spanish Club', 'Madeline Clement', 'Cindy Torres', 'The Spanish Club at PNW is dedicated to maintaining and expanding Latin American and Spanish culture and language through our activities.', 'clemen29@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Spotlight Theatre Guild', 'Laura Pankowski', 'Theresa Carilli', 'The PNW Theatre Company provides students a fun and educational opportunity to express themselves through theatre performance and production, both onstage and backstage, as well as provide an environment where students can connect with other students who share a common interest in theatre arts.', 'lpankow@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Star Wars Club', 'James Ragosta', 'Michael Connolly', 'The mission of the Star Wars Club is to unify students of all backgrounds under a common interest in the Star Wars Universit by further exploring the stories, characters, and technologies represented within the franchise, all while making real world connections.', 'jragosta@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Student Athlete Advisory Committee', 'Elizabeth Huston', '', 'The mission of the SAAC is to enhance the total student athlete experience by promoting opportunity for all student athletes; protecting athlete welfare; and fostering a positive student athlete image.', 'huston6@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Taiwanese Student Association', 'Szu Chi', 'Wei-tsyi Ting', 'The purpose of the Taiwanese Student Association of PNW is dedicated to providing encouragement and support for academic and social growth.', 'chi52@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Tau Alpha Pi', '', '', 'Tau Alpha Pi is the national honor society for Engineering Technology and is open to baccalaureate candidates from Engineering Technology programs that are accredited by ABET.', 'Invitation Only');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Tau Phi Sigma Multicultural Fraternity', 'Christian Miller', '', 'Tau Phi Sigma actively pursues the infinite opportunities of higher education and scholarship that are paramount for all people.', 'mill2006@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('The Mane Event', 'Dwayne Hunter', '', '', 'hunter71@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Theta Kappa Pi Sorority', 'Emily Glover', '', 'Theta Kappa Pi is a regional sorority with a foundation built on friendship, service, and integrity. The women of Theta Kappa Pi hold high standards of scholastic performance while working to enhance the college experience for all students and give back to the community.', 'glover33@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Tribeta National Biological Honor Society', 'Adam Rich', 'Scott Bates', '', 'rich22@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Unidos', 'Martha Gallegos', 'Catalina Rodriguez', 'Our mission is to promote educational, cultural, and social awareness to all students who are open to learning about the Hispanic/Latino heritage in a safe environment.', 'gallego6@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Veterans and Enlisted Students Association', 'Jeremy Ogrizovich', 'Anthony Pilota', '', 'jogrizov@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Vocal Company', 'Natalia Salazar', 'Jenne Carey', '', 'jcarey@pnw.edu');

INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
VALUES ('Women in Business', 'Alexis Ford', 'Joelynn Stephen', '', 'ford120@pnw.edu');

INSERT INTO CLUBS  (Name, President, Advisor, Description, Email)
VALUES ('Women of Distinction', 'Kimberly Lozano', '', '', 'klozano@pnw.edu');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('ACC 20000', 'Introductory Accounting', 
'An examination of the system by which accounting data is gathered from economic events. Construction and uses of financial statements.
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('AD11300', 'Basic Drawing', 
'An introduction to drawing and sketching as a means of communication of ideas.
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('AD 25500', 'Art Appreciation', 
'Understanding and appreciation of the problems overcome by mankind in the origins and growth of art.
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('BIO 11000', 'Fundamentals of Biology I', 
'This course is designed primarily to provide an introduction to the principles of biology for students in agriculture and health sciences. Principles of biology, focusing on diversity, ecology, evolution, and the development, structure, and function of organisms.
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('BIO 11100', 'Fundamentals of Biology II', 
'This course is designed primarily to provide an introduction to the principles of biology for students in agriculture and health sciences. Continuation of BIOL 11000. Principles of biology, focusing on cell structure and function, molecular biology, and genetics.
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('BUSM 10100', 'Introduction to Business', 
'An introduction to the internal operations and external environment of contemporary business. Consideration is also given to the social economic role of business in our society. The basic business functions and role of management are also discussed.
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('CHM 11500', 'General Chemistry', 
'Stoichiometry; atomic structure; periodic properties; ionic and covalent bonding; molecular geometry; gases, liquids, and solids; thermochemistry. Required of students majoring in science and students in engineering. Preparation equivalent to one year of high school chemistry is strongly recommended for students enrolling in this course.
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('CHM 11600', 'General Chemistry', 
'A continuation of CHM 11500. Solutions; quantitative equilibria in aqueous solution; introductory thermodynamics; oxidation-reduction and electrochemistry; chemical kinetics; qualitative analysis; crystal structure; nuclear chemistry
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('COM 11400', 'Fundamentals of Speech Communication', 
'A study of communication theories as applied to speech; practical communicative experiences ranging from interpersonal communication and small group process through problem identification and solution in discussion to informative and persuasive speaking in standard speaker-audience situations.
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('COM 26100', 'Introduction to Digital Video Production', 
'Basic production principles and practices. Emphasis on preplanning and conceptualizing skills in addition to practical production techniques
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('EAS 11300', 'Introduction to Environmental Science', 
'An introduction to environmental science, including issues such as climate change, energy resources, air and water pollution, toxic waste disposal, soil erosion, natural hazards, and environmental planning. Includes extensive in-class discussion of case studies.
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('ECON 21000', 'Principles of Economics', 
'Economics is the study of decision making under conditions of scarcity. This course looks at the behavior of the individual consumer and firm and their interaction with the government. The second half of the course studies the macroeconomy and focuses on the causes of inflation, unemployment, and interest rate changes. The international economy also will be studied.
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('ECON 25100', 'Microeconomics', 
'The course develops a theoretical framework permitting an analysis of the forces affecting national income, employment, interest rates, and the rate of inflation. Emphasis is placed upon the role of government fiscal and monetary policy in achieving full employment and stable prices
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('ECON 25200', 'Macroeconomics', 
'Introduction to macroeconomic theory. The course develops a theoretical framework permitting an analysis of the forces affecting national income, employment, interest rates, and the rate of inflation. Emphasis is placed upon the role of government fiscal and monetary policy in promoting economic growth and stable prices
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('EDCI 27600', 'Child, Family, School, & Community Partnerships', 
'Examines the life of the young child within the context of the family, community and cultural systems.  Explores the issues and characteristics of diversity within families and communities.  Students develop strategies for fostering  positive family/teacher/provider-child relationships.  Students will gain exposure to community early childhood resources through a service learning component.
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('EDST 27000', 'Early Childhood Education', 
'An introduction to the field of early childhood care and education including career options and variety of early childhood settings. The history, philosophy, current trends and issues of early childhood will be explored.  Students will observe and interact with children and early childhood professionals.
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('ENG 10400', 'English Composition I', 
'Emphasis on the organization of the expository theme. Directed writings of themes based on personal experience, on the relationship between experience and language, and on the relationship between experience and ideas
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('ENG 23100', 'Introduction to Literature', 
'Reading and discussion of English, U.S. and international literature to develop a basic understanding of ideas, forms, genres, and styles associated with diverse literary traditions. Writing about literature to foster skill in critical analysis.
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('FR 10100', 'French Level I', 
'A beginning French course with emphasis on communicative skills (listening and speaking), literacy skills (reading and writing) and culture.
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('FR 10200', 'French Level II', 
'Continuation of FR 10100
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('FR 20100', 'French Level III', 
'A lower intermediate French course with emphasis on communicative skills (listening and speaking), literacy skills (reading and writing) and culture
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('FR 20200', 'French Level IV', 
'Continuation of FR 20100
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('GER 10100', 'German Level I', 
'A beginning course in German reserved exclusively for students who have had less than two years of German at the ninth-grade level or above.
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('GER 10200', 'German Level II', 
'Continuation of GER 10100
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('GER 20100', 'German Level III', 
'Readings from the works of nineteenth-century and contemporary German writers; practice in speaking and writing German
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('GER 20200', 'German Level IV', 
'Continuation of GER 20100
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('HDFS 21600', 'Introduction to Early Childhood Education', 
'A survey of early education programs, including center based, infant/toddler, family child care, and kindergarten. Course will include consideration of the history & theory of early childhood programs; program routines and organization for the healthy intellectual, social & physical growth of young children; professional relationships with parents and staff.
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('HIST 10400', 'Introduction to the Modern World', 
'Traces the historical, political, and geographical expansion of European society and culture into the Americas, Africa, and Asia. Examines such topics as the major political revolutions, nationalism, the development of the European states, and the environmental impact from the era of the Reformation to the present
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('HIST 10500', 'Survey of Global History', 
'A survey of the interaction between the civilizations of Asia, Africa, Europe, and the Americas since 1500, with attention to cultural comparisons over time, and to the implications of global interdependence for the environment, health, economy, and geopolitics
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('HIST 15100', 'American History to 1877', 
'A study of the development of American political, economic, and social institutions from the early explorations and colonial settlements through Reconstruction.
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('HIST 15200', 'United States Since 1877', 
'A study of the growth of the United States from 1877 to the present. The new industrialism, agrarian problems, depression, the New Deal, the two world wars, the Cold War, and similar topics are analyzed.
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('MA 15300', 'College Algebra', 
'Covers algebra and trigonometry for students with inadequate preparation for calculus.
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('MA 15400', 'Trigonometry', 
'Continuation of MA 15300
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('MA 16300', 'Integrated Calculus Analysis Geometry I', 
'Topics from plane analytic geometry. Introduction to differentiation and integration. Applications.
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('MA 16400', 'Integrated Calculus Analysis Geometry II', 
'Completion of introductory study of topics in plane analytic geometry and the calculus of one variable, infinite series
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('MUS 25000', 'Music Appreciation', 
'The traditions, forms, and styles of classical music. Other types of music may be examined as well.
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('POL 10100', 'American Government and Politics', 
'A study of the nature of democratic government, the U.S. Constitution, federalism, civil rights, political dynamics, the presidency, Congress, and the judiciary
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('PHYS 22000', 'General Physics', 
'Algebra-based. Mechanics, heat, and sound, for science students not specializing in physics, chemistry, or engineering.
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('PHYS 22100', 'General Physics', 
'Algebra-based. Electricity & magnetism, light, and modern physics, for students not specializing in physics
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('SPAN 10100', 'Spanish Level I', 
'A beginning Spanish course with emphasis on communicative skills (listening and speaking), literacy skills (reading and writing) and culture.
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('SPAN 10200', 'Spanish Level II', 
'Continuation of SPAN 10100
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('SPAN 20100', 'Spanish Level III', 
'An intermediat Spanish course with emphasis on communicative skills (listening and speaking), literacy skills (reading and writing) and culture.
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('SPAN 20200', 'Spanish Level IV', 
'Continuation of SPAN 20100
');

INSERT INTO COURSES (Name, Title, Description)
VALUES ('STAT 30100', 'Elementary Statistical Methods', 
'A basic introductory statistics course with applications in various fields and emphasis placed on assumptions, applicability, and interpretation of various statistical techniques. Subject matter includes frequency distributions, descriptive statistics, elementary probability, normal distribution applications, sampling distribution, estimation, hypothesis testing, linear regression.
');

INSERT INTO FAQ (Question, Answer)
VALUES ('What happens if I do not pay by the deadline?', 'If full payment is not received by the deadline, you will be dropped from the college credit portion of the class. This could affect your Academic Honors Diploma. Once dropped, a student cannot be re-registered (even if payment is made after the deadline). No exceptions.');

INSERT INTO FAQ (Question, Answer)
VALUES ('How will I be billed?', 'You will be billed twice each academic year, through both the mail and online - once in the fall, and again in the spring.');

INSERT INTO FAQ (Question, Answer)
VALUES ('How do I get my transcript?', 'Contact Tracey Radtke in the Office of the Registrar to request either electronic instructions for requesting via your myPNW account or a paper form. Transcripts are free of charge. Transcripts will not be send without you ordering them first.');

INSERT INTO FAQ (Question, Answer)
VALUES ('Where can I find which classes transfer where?', 'Either by calling us, checking online at www.transferIN.net, or by calling the out-of-state/private college you are interested in.');

INSERT INTO FAQ (Question, Answer)
VALUES ('Is grading similar to that of advanced placement (AP)?', 'PNW Concurrent Enrollment courses are graded using a PNW letter grade (A-F), similar to your high school grading scale. The final grade is submitted to PNW by your high school instructor.');

INSERT INTO FAQ (Question, Answer)
VALUES ('Do I need to apply after high school graduation?', 'You may have earned multiple college credits in high school through PNW; however, all graduating seniors must still apply as a first time college student.');

INSERT INTO HANDBOOK_SECTIONS (Name)
VALUES('Academic Resources');

INSERT INTO HANDBOOK_SECTIONS (Name)
VALUES('Emergency');

INSERT INTO HANDBOOK_SECTIONS (Name)
VALUES('Campus Resources');

INSERT INTO HANDBOOK_SECTIONS (Name)
VALUES('Policies & Procedures');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Academic Colleges', 1, 
'College of Business\nL. Hamer, Dean\nHammond Campus:  Anderson Building 356, (219)989-2595\nWestville Campus:  Technology Building 186, (219)785-5263\n\n
College of Humanities, Education, and Social Sciences\nE. Carey, Dean\nHammond Campus:  Classroom Office Building 152, (219)989-2401\nWestville Campus:  Technology Building 341, (219)785-5647\n\n
College of Engineering and Science\nN. Latif, Interim Dean\nHammond Campus: Gyte Building 181, (219)989-2468\nWestville Campus:  Schwarz Building 160, (219)785-5736\n\n
College of Nursing\nL. Hopp, Dean\nHammond Campus:  Classroom Office Building 313, (219)989-2814\nWestville Campus:  Technology Building 357, (219)785-5454\n\n
College of Technology\nN. Latif, Dean\nHammond Campus:  Anderson Building 202, (219)989-8324\nWestville Campus:  Technology Building 269, (219)785-5619\n\n
Honors College\nJ. Swarts, Dean\nHammond Campus:  Student Union Library 320, (219)989-3160\nWestville Campus:  Library Student Faculty 069, (219)785-5366
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Academic Calendar', 1, 
'See PNWs Academic Schedule:\n\nhttps://www.pnw.edu/registrar/academic-schedule/
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Degrees', 1, 
'Please check the online listing of current degrees offerd.\n\nhttps://www.pnw.edu/program-finder/
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Academic Advising', 1, 
'The responsibility for all academic decisions belongs to the student.\n\nhttps://www.pnw.edu/advising/\n\nhttps://www.pnw.edu/advising/exploratory-advising/\n\n
Purdue University Northwest recognizes academic advising as a critical component of the educational experience of students. Upon admission to the university, all students are assigned to an academic advisor.\n\nAcademic advisors at Purdue University Northwest are committed to providing students accurate and timely academic advisement delivered through academic departments and colleges, as well as through Exploratory Advising.\n\nThrough collaborative relationships with assigned academic advisors, students learn to define and implement strategic and efficient educational plans that are consistent with their personal values, goals, abilities and career plans.\n\nEffectiveness in advising requires that students and advisors jointly engage in this process together.It is recommended that students consult with their advisors at least once a semester to clarify effective progress towards a degree.\n\nAcademic Advisors also serve as a resource to students in many other ways, including assisting students in:\n\n
Clarifying life and career goals\n\nAssessing individual academic abilities\n\nDeveloping suitable educational plannSelecting appropriate courses and complementary educational experiences\n\nInterpreting institutional requirements\n\nEnhancing awareness of available educational resources(such as internship opportunities, honors curriculum, service learning, experiential learning, supplemental instruction, and tutoring programs)\n\nEvaluating progress toward established goals\n\nAssisting with completing degree requirements in a timely manner\n\nIdentifying barriers to academic success\n\nSeeking out and referring to support services in the institution and the community
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Student Academic Support', 1, 
'Location\nHammond Campus: Gyte Building, room 102\n\nWestville Campus: Library - Student - Faculty(LSF) Building, room 202\n\n
Phone\nHammond: (219)989-3227\n\nWestville: (219)785-5628\n\nWebsite: pnw.edu/sas\n\nE - mail: sas@pnw.edu\n\n
Student Academic Support(SAS) provides Supplemental Instruction(SI), Walk-in and online tutoring to PNW students on both the Hammond and Westville campuses.\n\nSupplemental Instruction is offered to all students enrolled in specific undergraduate courses.SI sessions are interactive review sessions and are facilitated by an SI Leader(a student that has already successfully completed the class and sits in on it again with you) usually twice per week.SI sessions provide students with an opportunity to actively participate, ask questions, learn new study techniques, compare notes and predict test questions with other students from the course.\n\nWalk-in tutoring is a drop-in tutoring service conducted in small groups by peer tutors.No appointment is needed and schedules are available online or by visiting the SAS office on your campus.\n\nPeer tutors also offer Individual, online tutoring, by-appointment through Zoom.\n\nSAS is also a major employer for academically successful students seeking on-campus employment as tutors and/or SI leaders.For more information, visit the Student Academic Support website.
');


/*--------------------------------------------------------*/


INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('PNW Police Department', 2, 
'The University Police Department operates 24/7.\n\nThe University Police strives to provide a safe and secure environment for students, faculty, staff, and visitors.Purdue University Northwest Police Department is a fully jurisdictional Police Department of the State of Indiana and is empowered with lawful authority to enforce all Criminal and Traffic Laws of the State of Indiana, as well as University rules and regulations as they relate to the Motor Vehicle, Bicycle, and Traffic Regulations.\n\nIn addition to regular law enforcement duties, the department assists with all other areas of campus safety and security, reporting hazardous conditions and unsafe practices.\n\nPurdue University Northwest police officers are graduates of the Indiana Law Enforcement Training Academy and are experienced law enforcement professionals from city, county and state police departments.  Each officer is required by State mandate to attend annual training courses in law enforcement to maintain current with changes in law and training practices.\n\nCampus security facts and figures are available from the University Police Department or can be viewed online.\n\nhttps://www.pnw.edu/public-safety/\n\n
How to Reach University Police (Hammond Campus):\nStation is located in the Schneider Avenue Building (SAB) on the northeast end of campus and can be best accessed from the corner of Osborne and 169th St.\n\nEmail: Unpol@pnw.edu\n\nOffice Business Hours:  8 a.m.to 4:30 p.m., Monday to Friday\n\nNon - Emergency: (219)989-2220, (219)989-2221\n\nEmergency: From a campus telephone, dial direct 2220.\n\nAnonymous Hotline: (219)989-2912\n\nFrom a non - campus telephone or a cellular telephone, dial 911 for any emergency.\n\n
How to Reach University Police (Westville Campus):\nStation is located in the Physical Facility/Campus Police Building, Room 101\n\nEmail: Campus_Police@pnw.edu\n\nOffice Business Hours: 8 a.m.to 4:30 p.m., Monday to Friday\n\nNon - Emergency: (219)785-5220\n\nEmergency: From a campus telephone, dial direct 5220 or 911.\n\nA Campus Emergency Preparedness Guide and an Emergency Preparedness Quick Glance are available on the website and throughout campus as well as an Emergency Preparedness Overview in three language: English, Chinese and Spanish.These publications are designed to assist faculty, staff, and students in the preparation of a campus emergency.\n\nWhile these publications do not cover every conceivable situation, they do provide the basic guidelines necessary to respond to and cope with the most common campus emergencies.Please become familiar with these documents.\n\nhttps://www.pnw.edu/public-safety/emergency-guides-and-procedures/
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Emergency Telephone Locations', 2, 
'Hammond Campus: Emergency Phones:\nThe Campus Emergency “Blue Light Phones” are located near building entrances or parking lots as follows:\n\nAnderson Elevator\n\nClassroom / Office Bldg.North Elevator(Inside Call Box)\n\nClassroom / Office Bldg.South Elevator(Inside Call Box)\n\nFounders Plaza West\n\nFounders Plaza Center Sidewalk\n\nFounders Plaza East\n\nGyte Elevator\n\nGyte North Entrance\n\nGyte / Annex West Parking Lot – Between Annex & Gyte Doors\n\nGyte / Annex South Handicapped Chair Stair Lift(Inside Call Box)\n\nGyte / Annex North Handicapped Chair Stair Lift(Inside Call Box)\n\nLawshe North Elevator(Inside Call Box)\n\nLawshe South Elevator(Inside Call Box)\n\nLawshe South Parking Lot\n\nLawshe West Sidewalk South of Lawshe Building\n\nLawshe Crosswalk Between Lots Southeast of Lawshe\n\nFitness & Recreation Center Sidewalk Southwest of Building\n\nPolice Station Parking Lot Front of Police Station\n\nPorter Outside North Entrance\n\nStudent Union & Library South Entrance\n\nStudent Union & Library Elevator(Inside Call Box)\n\nParking Garage All Levels\n\nUniversity Village(Housing) West and East Parking Lots\n\nUniversity Village(Housing) Sidewalk on the North Side of the Building\n\n
Westville Campus: Emergency Phones:\nAll campus elevators\n\nSchwarz Hall – “Red Phone” Outside Room 38\n\nLibrary - Student - Faculty Building – “Red Phone” Inside North main entrance and basement hallway by locker rooms\n\nTechnology Building –“Red Phone”  Inside northeast doors\n\nDSAC Building – "Red Phone"\n\n
Using Campus Emergency Phones:\n1. Press button.\n\n2. Telephone automatically dials the emergency number for the University Police.\n\n3. Once the Police Department answers, speak clearly INTO the box.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('House Telephone Locations', 2, 
'Hammond Campus: House Telephones:\nHouse telephones are University phones located across campus and part of the University’s internal phone system. They are located within the buildings as listed below.  The restricted telephones may also be used for intra-campus communication.  These telephones may be used in an emergency by dialing “9-911” for assistance from the University Police.\n\nAnderson: 1st Floor Vending Area\n\nClassroom / Office: 1st Floor Vending Lounge\n\nClassroom / Office: 1st Floor near Northwest Elevator\n\nClassroom / Office: 2nd Floor Southeast near 298\n\nClassroom / Office: 2nd Floor near Northwest Elevator\n\nClassroom / Office: 3rd Floor Southeast near 398\n\nClassroom / Office: 3rd Floor near Northwest Elevator\n\nComputer: 1st Floor Desk\n\nGyte: Ground Floor Lounge / Vending Area near Advising Center\n\nGyte: 1st Floor Southeast Lobby near 170\n\nGyte: Near 131\n\nGyte: Near 231\n\nLawshe: 1st Floor near Enrollment Services Center\n\nLawshe: 2nd Floor Elevator\n\nFitness and Recreation Center: North Lobby\n\nFitness and Recreation Center: North / South Hallway near 147\n\nFitness and Recreation Center: Gym / Upstairs Running Track West Wall\n\nPorter: 1st Floor Southwest Lobby near 110\n\nPorter: 2nd Floor Southwest Hallway near 212\n\nPotter: 1st Floor Northwest Hallway\n\nPotter: Hallway near 325\n\nPowers: Common Hall near Potter\n\nStudent Union and Library: Near Elevator/ Center North\n\nStudent Union and Library: 3rd Floor Hallway Near Alumni Hall(309)
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Campus Maps', 2, 
'https://www.pnw.edu/getting-to-pnw/hammond-campus-map/\n\nhttps://www.pnw.edu/getting-to-pnw/westville-campus-map/
');


/*--------------------------------------------------------*/


INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('21st Century Scholars', 3, 
'Hammond Campus Location\nStudent Union & Library - 343\nHours\nMonday – Friday, 8 a.m. to 4:30 p.m.\n\n
Westville Campus Location\nSchwarz – 35D\nHours\nTuesday & Thursday, 9 a.m. to 4:30 p.m.\n\n
Phone: (219)989-8414\n
Fax: (219)989-2179\n\n
https://www.pnw.edu/educational-opportunity-programs/21st-century-scholars/\n\n
The mission of the 21st Century Scholars Collegiate Support Program is to provide quality academic support programs and services that will enhance the academic progress and personal development of every 21st Century Scholar enrolled at Purdue University Northwest. Through collaboration and integration with campus resources, programs and services are designed to enhance each Scholar’s overall development, well-being, and undergraduate experience
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Admissions - Undergrad', 3, 
'Hammond Campus Location: Lawshe – 130\n
Phone: (219) 989 - 2213\n\n
Westville Campus Location: Schwarz – 40\n
Phone: (219) 785 - 5505\n\n
Hours: Monday through Friday   8:00 am – 4:30 pm\n\n
Email: admissions @pnw.edu\n\n
The Office of Undergraduate Admissions provides information about Purdue University Northwests undergraduate programs, admission procedures, and requirements to prospective students.  The office serves prospective Purdue University Northwest students and former or currently enrolled students.\n\nVarious activities to help acquaint prospective students with the educational opportunities at Purdue Northwest are scheduled throughout the year.In addition to processing students’ initial applications, the office handles the required Re - entry applications for students who have not registered and received grades within the last calendar year and also Re - admit applications for students who have been academically dropped.\n\nThe Office of Undergraduate Admissions offers several ways for prospective students to visit Purdue Northwest.Prospective students can attend one of our Open House programs(which are held in the fall and spring at both the Hammond and Westville campuses) or an Individual Campus Tour.Campus Tour Dates can be viewed on the web.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Athletics', 3, 
'Locations\n
Fitness and Recreation Center (Hammond Campus)\n
James B.Dworkin Student Services and Activities Complex(Westville Campus)\n
Dowling Park(Hammond Campus)\n\n
Phone: (219) 989 - 2540\n
Fax: (219) 989 - 2558\n\n
Purdue Northwest Athletics consists of 300 student athletes and 15 sports and is a member of the Great Lakes Intercollegiate Athletic Conference(GLIAC) and NCAA Division II.\n\nIntercollegiate athletic teams are fielded in men’s and women’s basketball, men’s and women’s soccer, men’s and women’s cross country, men’s and women’s tennis, women’s volleyball, men’s and women’s golf, softball and baseball. PNW Esports is in its first year of varsity competition. Men’s Ice Hockey is offered as a non - varsity sport.Purdue Northwest has recently developed new basketball, volleyball, soccer, softball, baseball, tennis, esports and ice hockey facilities.\n\nFor more information on the Purdue University Northwest Athletics program please go to www.PNWathletics.com
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Bookstore', 3, 
'Hammond Campus Location: Student Union Library Building – 110\n\nPhone: (219) 844 - 1081\n\nWe offer a wide variety of course materials: Rental / Digital / Used and New books.We also have reference materials along with supplies, health and beauty items, snacks, PNW clothing and gift ware.\n\nWe offer graduation regalia, diploma frames and alumni gear. Textbook buyback is offered throughout the year to our PNW students.\n\nHours may vary throughout the year depending on where we are in the semester. Please check out our website for the most up to date hours information.Visit us in store or online at www.pnw.edu / bookstore.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Bursar Office', 3, 
'Hammond Campus Location: Lawshe-130\n\nPhone: (219) 989 - 2560\n\nWestville Campus Location: Schwarz Hall – 127\n\nPhone: (219) 785 - 5338\n\nProvides information on payments and deadlines, student bills and refunds\n\nSends out notification of new student bills electronically\n\nAccepts check or cash payments for tuition and fees, parking fines, etc.\n\nStudents not signed up for e - Refunds will be mailed their refund check\n\nOnline access: Log into myPNW, select Bills and Payments tab\n\nTouchNet Bill + Payment ™ offers students, parents and other authorized users the convenience of self - service access to online bills and bill payments, including web - based bill presentment, secure online payments and deposits, electronic disbursement of student refunds, and tuition payment plan enrollments.\n\nVisit the Bursar’s web page for current fee information, frequently asked questions and important information and deadlines.\n\nhttps://www.pnw.edu/bursar/
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Business Managers Office', 3, 
'Hammond Campus Location: SAB-47\n\nHours: Monday to Friday, 7:30 a.m.to 4:30 p.m.\n\nPhone: (219) 989 - 4138
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Campus Tours', 3, 
'Campus Ambassadors conduct walking tours for individuals and groups. Tours can be customized to the students’ individual needs and/or interests. Visit the Campus Tours website to schedule a free tour. For more information, email admissions@pnw.edu.\n\nhttps://www.pnw.edu/admissions-financial-aid/undergraduate/schedule-a-visit/
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Career Center', 3, 
'Hammond Campus Location: Student Union Library Building (SUL), Room 349\n\nPhone: (219) 989 - 2600\n\nWestville Campus Locations: Library Student Faculty Building(LSF), Room 104\n\nPhone: (219) 785 - 5451\n\nHours: Monday to Friday, 8 a.m.to 4:30 p.m.\n\nThe Career Center assists students and alumni of Purdue University, regardless of their campus affiliation. As a bridge from college life to the world of work, it is our mission to facilitate connections between employers and students that lead to successful outcomes and satisfying futures.\n\nhttps://www.pnw.edu/career-center/career-center-services/
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('College Bound', 3, 
'Location: Schwarz Hall – 38C\n\nPhone: (219) 785 - 5414\n\nThe PNW College Bound Program is a pre - college program on the Westville campus which supports selected students who have met academic, financial and additional PNW College Bound requirements.The program will continue to supports its participants, after high school, for up to 8 consecutive semesters at PNW as long as all mandatory criteria are met.\n\nUpon completion of the PNW College Bound Program high school requirements, each CB student will receive(upon admission to PNW) the following:\n\nTuition and fee assistance, not covered by the 21st Century Scholars Program and / or Frank O’Bannon awards\n\nAdditional stipends awarded at the end of each college semester as well
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Counseling Center', 3, 
'Hammond Campus Location: Riley Center\n\nHours *\n\nMonday to Thursday,\n\n8 a.m.to 5 p.m.\n\nFriday,\n\n8 a.m.to 4 p.m.\n\nWestville Campus Location: TECH 101\n\nHours*\n\nMonday to Friday, 9 a.m.to 3 p.m.\n\n* Please call for summer and break hours.In case of emergency, dial 911 or go to your local emergency room.\n\nPhone: (219) 989 - 2366(For both Hammond and Westville Campuses)\n\nWebsite: www.pnw.edu/counseling/\n\nThe Counseling Center’s mission is to encourage, support, and assist students in their educational pursuit by providing a broad range of psychological counseling and educational services to deal with personal, interpersonal, vocational, and academic issues.\n\nCounseling services are provided by licensed mental health professionals and externs under their supervision and are confidential, as protected by law.Additionally, all services are FREE to currently enrolled students.\n\n
Services Provided\n\n
Personal Counseling\n
Addresses personal concerns that may interfere with productive emotional functioning and academic success.\n\nPersonal concerns including: anger management, family and relationship problems, depression, anxiety, and stress, adjustment to college, body image, self - esteem and more.\n\n
Psychological Testing\n
The Counseling Center provides psychological, psycho-educational, and neuropsychological assessments as medically necessary for students seeking diagnostic clarity and assistance with treatment planning.\n\nStudents with a history of learning challenges, difficulties with attention, traumatic brain injury(e.g., concussion), developmental delays, etc.often benefit testing services to identify strengths and weaknesses and provide accommodations in coordination with the PNW Disability Access Center, as appropriate.\n\n
Mental Health Outreach\n
National Stalking Awareness\n\nNational Eating Disorder Awareness\n\nNational Alcohol Awareness Week & Screening Days\n\nNational Suicide Prevention\n\nNational Depression Screening Day\n\nNational Coming Out Day\n\nDomestic Violence Awareness\n\nMovember\n\nSelf - Injury / Self - Harm Awareness\n\nSTD Awareness Week\n\nPlay Day\n\nFeel free to stop by the Counseling Center to browse and choose from a wide variety of free self - help brochures.\n\n
Eligibility\n
All currently registered and enrolled PNW students are eligible for all services offered by the Counseling Center. Staff and faculty are eligible for consultations.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Couple & Family Therapy Center', 3, 
'Location\nIndianapolis Boulevard Counseling Center – IBCC\n\n7030 Indianapolis Boulevard\n\nHammond,\n\nIN 46324\n\nPhone: (219) 989 - 2027\n\nFax: (219) 989 - 2777\n\n
Therapy Appointments Available\n
Monday to Thursday, 9 a.m. to last appointment time 8 p.m.\n
Friday, 9 a.m.to last appointment time 4 p.m.\n\n
The Couple and Family Therapy Center is part of the Master’s Program in Couple and Family Therapy.The center is staffed by graduate students in training who are supervised by faculty members.Faculty are Clinical Fellows and Approved Supervisors in the American Association for Marriage and Family Therapy.\n\nThe Center provides individual, couple, and family therapy, substance abuse recovery and anger management therapy.Premarital therapy and couple enrichment groups are available.The Center operates on a sliding fee scale based on family size and income.Bilingual services are often available.\n\nhttps://www.pnw.edu/couple-family-therapy-center/\n\nhttps://www.pnw.edu/program-finder/couple-and-family-therapy/
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Dean of Students', 3, 
'Hammond Campus Location: Student Union & Library – 313\n\nHours: Monday to Friday, 8 am to 4:30 pm\n\nPhone: (219) 989 - 4141\n\nWestville Campus Location: Library, Student, Faculty Building – 103\n\nHours: Monday to Friday, 8 am to 4:30 pm\n\nPhone: (219) 785 - 5230\n\nEmail: dos@pnw.edu\n\nWebsite: www.pnw.edu/dean-of-students\n\nThe staff of the Office of the Dean of Students provides many opportunities for students through the provision of an array of services and programs as listed below.In addition, the Dean of Students supports individual student rights and upholds the Student Code of Conduct.\n\nThe Office of the Dean of Students promotes responsibility and encourages honesty, integrity, and respect among Purdue Northwest students through education, compliance with behavioral standards, and support of individual rights.To sustain this mission we are committed to:\n\nWorking collaboratively with students, faculty, and staff to create an ethical and safe environment in which scholarship may flourish\n\nPromoting good citizenship among students and administer conduct standards in a fair, respectful, and equitable manner\n\nDisseminating and interpreting University regulations and standards to students, faculty, staff, parents, and the general community\n\nPromoting compliance with the spirit and intent of the Bill of Student Rights and University Code of Conduct\n\nServing as a resource and information agency for students, faculty, staff, parents and others concerning student rights and standards\n\nGuiding students toward a greater sense of personal responsibility and mature and ethical behavior that enhances the quality of the University and community environment\n\nProviding guidance and educational experiences to assist students in making appropriate choices concerning behavior\n\nEncouraging students to understand the consequences of the decisions they make and the actions they take in an attempt to help their holistic development for good citizenry\n\nStudent Advocates are located on each campus in the Office of the Dean of Students.Advocates work to address a wide variety of student needs and guide within university resources, policies and procedures.\n\nReferral to community resources can be made as necessary and appropriate.Specialized support and advocacy are available to students who have experienced sexual assault, relationship violence, or stalking.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Disability Access Center', 3, 
'Email: dac@pnw.edu\n\nWebsite: www.pnw.edu/dac/\n\nPhone: (219) 989 - 2455\n\nFax: (219) 989 - 2736\n\nHammond Campus Location: Student Union &Library - 341\n\nAcademic - Year Hours: Monday to Friday, 8 a.m.to 4:30 p.m.\n\nWestville Campus Location: TECH 101\n\nAcademic - Year Hours: Monday to Thursday, 8 a.m.to 4:30 p.m. (Call for Friday Hours)\n\nThe Disability Access Center provides registered students with documented disabilities equal access to Purdue University Northwest. It is our goal that students with disabilities have an equal opportunity to participate in PNW while maintaining the same academic standards for all students. We collaborate with students, their families, faculty, and staff to promote a welcoming environment for college ready students with documented disabilities.\n\nTo register as a student with a disability at Purdue University Northwest\n\n1. Complete the DAC intake form by clicking Request DAC Services on the Disability Access Center website pnw.edu/dac/\n\n2. Schedule a confidential intake consultation with the Disability Access Center by calling 219 - 989 - 2455.\n\n3. Bring current documentation from a qualified medical provider to your meeting *\n\n4. During the intake consultation, the DAC staff will review the student’s current disability documentation; engage in an interactive process with the student to discuss disability, barriers caused by the disability, and appropriate accommodations based on the documentation provided and additional factors.\n\n5. Each time you register for classes complete an Authorization to Distribute choosing which professors and staff will receive your Access Plan\n\nAll students concerned about a possible disability impacting their university experience should contact the Disability Access Center at 219 - 989 - 2455.\n\n* In some situations, we may be able to assist the student with securing the needed documentation.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Educational Talent Search', 3, 
'Hammond Campus Location: Schneider Avenue Building – 1132\n\nHours: Monday to Friday, 8 a.m.to 4:30 p.m.\n\nAdditional hours available by appointment\n\nPhone: (219) 989 - 2460\n\nFax: (219) 989 - 2094\n\nWestville Campus Location: Schwarz Building – 35A\n\nPhone: (219) 785 - 5423\n\nWebsite: www.pnw.edu / talent\n\nEducational Talent Search identifies and assists individuals from eligible backgrounds who have the potential to succeed in higher education. The program provides academic, career, and financial counseling to its participants and encourages them to graduate from high school and continue on to and complete their post-secondary education.\n\nWe work collaboratively within targeted schools and with parents, teachers, counselors, and community outreach organizations. Educational Talent Search is a U.S.Department of Education federally funded TRIO program.\n\n
Our Mission\n
The mission of the Purdue University Educational Talent Search Program is “to enable targeted individuals an opportunity to enhance their overall quality of life by providing comprehensive involvement in academic and career-related services.”\n\n
Our Vision\n
At Educational Talent Search, we envision a program which works efficiently to offer a high quality of services and resources in a warm, positive, encouraging, and engaging environment that fosters equitable, healthy student/participant development.\n\n
Our Services\n
Academic, financial, career, and personal counseling\n\nAdvice about entry or re - entry to secondary or Post - secondary programs\n\nCareer exploration and aptitude assessment\n\nTutorial services on - site and online\n\nInformation on post - secondary education\n\nExposure to college campuses\n\nInformation on student financial assistance\n\nAssistance in completing college admissions and financial aid applications\n\nAssistance in preparing for college entrance exams\n\nSpecial activities for sixth, seventh, and eighth graders\n\nWorkshops for the families of participants
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Enrollment Services', 3, 
'Enrollment Services.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Financial Aid', 3,
'Hammond Campus Location: Enrollment Services Center (ESC), Lawshe Hall – 130\n\nPhone: (219) 989 - 2301\n\nFax: (219) 989 - 2141\n\nEmail Address: finaid@pnw.edu\n\nWestville Campus Location: Technology Building – 157\n\nPhone: (219) 785 - 5460\n\nFax: (219) 785 - 5653\n\nEmail: finaid @pnw.edu\n\nFor complete and current information on financial aid policies, procedures, and important deadlines please visit the Office of Financial Aid website.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Facilities Services', 3, 
'Hammond Campus Location: University Services Building\n\nWestville Campus Location: Facilities Services Campus Police Building\n\nHours: Monday to Friday, 7 a.m.to 4:30 pm\n\nThis area is responsible for the maintenance of all buildings, parking lots, walkways, mechanical and electrical systems, and underground utilities.Also, building housekeeping, grounds maintenance, snow removal, and furniture / equipment relocation are handled by this department.\n\nAll facilities issues requiring immediate attention should be reported directly to 989 - 2285 - Hammond and 785 - 5347 - Westville.All other requests can be submitted through PNW Fix It at the Facilities Services website.\n\nhttps://www.pnw.edu/facilities/
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Fitness, Recreation, & Intramurals', 3, 
'Hammond Campus Location: Fitness and Recreation CenterHours: Posted in the Fitness and Recreation Center\n\nPhone: (219) 989 - 2175\n\nFax: (219) 989 - 2558\n\nWestville Campus Location: Dworkin Student Services & Activity Center\n\nHours: Posted in the Dworkin Student & Activity Center\n\nPhone: (219) 785 - 5282\n\n
Intramurals\n
Over 40 intramural sports and recreational activities that include individual and team leagues as well as one-night tournaments and open plays.  There is something for everyone from your traditional sports; flag football; volleyball and basketball to your non-traditional; baking, fishing and dodgeball.  For more information call (219) 989-2050.\n\n
Fitness Centers\n
Purdue University Northwest has a fitness center located on each campus.  Both facilities are multi-dimensional, state of the art training and teaching facilities featuring high-tech, computerized equipment, convenient hours, and a professional staff of degreed exercise physiologists and exercise specialists.\n\nBoth centers are staffed while open to provide individual assistance, demonstrate equipment usage and provide the needed guidance and training to help members achieve their personal fitness goals.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Food Services', 3, 
'For the current hours of operation, please see www.pnw.edu/dining/\n\nOaken Arbor Market Café\n\nLocation: East end of Student Union & Library, Ground floor\n\nMarket @ CLO\n\nLocation: Classroom Office Building, First floor\n\nAll food and beverage provided on Hammond campus is prepared by Chartwells Dining.  There are three types of food service available:  Cafe Style full breakfast, hot entrees, soup, salad, sandwich, dessert, grill items, and pizza.\n\nCatering is available seven days a week.Please see / www.pnw.edu / dining / catering / to view our catering guide.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Graduate Studies', 3, 
'Location: Lawshe-242\n\nHours\n\nMonday to Thursday, 8:30 a.m.to 4:30 p.m.\n\nFriday, 8 a.m. – 4:00 p.m.\n\nPhone: (219) 989 - 2257\n\nEmail: grad@pnw.edu\n\nWebsite: www.pnw.edu/graduate-studies/\n\nThe Graduate Studies Office provides general information about Purdue University Northwest Graduate Studies and the graduate degree programs available at Purdue Northwest at the Hammond location: Doctor of Nursing Practice(DNP); Master’s degrees in Communication, Computer Science, History, Couple and Family Therapy, Education, Biological Sciences, Nursing, Technology, Interdisciplinary Engineering(MSE) with a concentration in Civil Engineering, Electrical and Computer Engineering(MSECE), Mechanical Engineering(MSME), Accountancy(MAcc), Master of Business Administration(MBA), and Modeling, Simulation and Visualization(MSMSV).\n\nNon - degree graduate study and graduate certificates in some programs are also available.Some programs or concentrations may be available online. Program and course descriptions, and information about the online application for admission to graduate study, can be obtained from this office or on the website listed above.\n\nThe Graduate Studies Office also assists students with other matters related to graduate education, such as admissions and deferrals of admission, fee remissions for graduate staff positions, issues involving the electronic Plan of Study system(ePOS) and approval of plans of study, and final degree approvals and thesis deposit.Detailed information about the services provided by the Graduate Studies Office can be found on the website listed above.\n\nYou may conveniently apply on - line as a non - degree, certificate, or degree - seeking student.\n\nPurdue Northwest also offers graduate courses in areas other than those in which complete degree programs are available.The Office of Graduate Studies can provide further information about these courses.Basic information about the Graduate Record Examination(GRE) and the Graduate Management Admission Test(GMAT) is available online. Students are encouraged to check the website for information about the GRE and GMAT tests.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Health Centers', 3, 
'LaPorte Physician Network at Westville Campus\n\nPhone: (219) 304 - 6100\n\nFax: (219) 785 - 6055\n\nWebsite: www.pnw.edu/health-centers/
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Housing & Residential Education', 3, 
'Hammond Campus Location: Central Office located in Griffin Hall, 2440 173rd Street\n\nHours: Monday to Friday, 8 am to 4:30 pm\n\nPhone: (219) 989 - 4150\n\nEmail: housing@pnw.edu\n\nWebsite: www.pnw.edu/housing\n\nUniversity Village offers a unique living environment designed to enrich the academic experience of Purdue University Northwest students and support the campus’ diverse student body both academically and socially.The apartments at University Village are fully furnished and feature four individual bedrooms, four personal vanity areas, two full baths, a common living area and a kitchen.\n\nUniversity Village combines the independence of apartment - style living with the guidance and assistance afforded by Resident Assistants, administrative personnel and maintenance staff. The Resident Assistants provide weekly events and activities to ensure the experience each resident obtains outside of the classroom is just as beneficial as the learning that occurs in the classroom.\n\nThe University Village community also offers quiet study rooms, conference rooms, large meeting rooms, computer labs, laundry facilities on each floor and vending machines.  The Resident Handbook, a guide to living on campus, can be found on the Housing website.\n\nhttps://www.pnw.edu/dean-of-students/policies/student-handbook/
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Information Services', 3, 
'Information Services provides a number of resources for students to facilitate success in your academic program. Some of these services include:\n\n
Customer Service Center (CSC)\n
Hammond Campus Location: Powers Building – 216\nWestville Campus Location: Tech Building – 265\nWebsite: www.pnw.edu/csc\nPhone Number: (219) 989 - 2888\nEmail: csc @pnw.edu\n The Customer Service Center is the single point of contact and the channel between users and Information Services for dealing with a variety of technology service activities.This includes incidents, inquiries, outages, access and service requests for assistance.The CSC logs and monitors incidents and service requests in the centralized ticket system.\n\nFor hours of operation, please visit our website.\n\n
Walk-In Knowledge Bar and Tech Support\n
Easily accessible at both campuses\nWalk-up support\nUpdated comfortable seating\nCharging stations, power outlets and data ports to keep you powered up\n\nPassword changes\n\nOutlook Support, etc.\n\n
Wireless Network (eduroam)\n
eduroam is Purdue University Northwest’s secure wireless network\n\nConnects wireless - ready laptops, tablets, and phones to the PNW network and the Internet\n\nAccessible throughout all campus buildings and select green spaces\n\nAll connections to eduroam are authenticated and encrypted in order to help protect your data\n\nLogin with careeraccount@pnw.edu as your username and your career account password\n\n
Email\n
Each student is provided with a university email account.\n\nwww.pnw.edu/mypnw\n\nEmail is an essential communication tool used by faculty, staff, and students on campus. We encourage you to check your university e-mail account regularly to ensure you do not miss receiving important information related to your classes and status within the University.\n\n
Computer Labs\n
Locations: Various (see below)\n\nWebsite: www.pnw.edu/information-services/labs-and-classrooms/\n\nTelephone: (219) 989 - 2888\n\nFor hours of operation, please visit our website.\n\n
Open-Access Computers\n
Provide basic computing services such as Microsoft Office\n\nOpen to all students\n\nLoaded with software that can be utilized for homework, research and class projects\n\n
Hammond Campus Locations\n
Gyte Learning Commons, Gyte 035, 040, 044, 045 & 048\n\nAnderson, Classroom Office(CLO) and Porter Buildings\n\nUniversity Village – Peregrine and Griffin Hall\n\nLibrary – Student Union Library (SUL) Building\n\nSpecialized computer labs available through your academic department\n\n
Westville Campus Locations\n
Tech Building 053\n\nTech Building 265\n\nLibrary – Library Student Faculty(LSF) Building\n\nLSF 014 – Lounge\n\nLSF 114 – Cyber Café Lounge\n\nSpecialized computer labs available through your academic department
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Intercollegiate Student Athlete Services', 3, 
'Hours: Monday to Friday, 8 a.m. to 4:30 p.m.\n\nAdditional hours available by appointment\n\nPhone: (219)989-2728\n\nWebsite: www.pnwathletics.com/athletics/academicsupport/\n\nStudent - Athlete Academic Support’s(SAAS) goal is to cultivate the development of student-athletes as they balance academics with athletics while pursuing a postsecondary and / or graduate degree. A number of services, such as academic monitoring, referral services, webinars, academic advising and academic / personal development workshops are employed within the Student - Athlete Academic Support to aid student - athletes in successfully pursuing their academic goals.\n\nThe Associate Athletic Director of Academic Services / SWA asks for progress reports from the Executive Director of Academic Success and Transition, Academic Center for Excellence and will share that information with student - athletes and coaches once a semester during the mid - term.\n\nAll student - athletes are subject to academic monitoring and may be referred to other service areas on campus for assistance in academic areas, Student - Athlete Academic Support strongly encourages student - athletes to become familiar with, and to utilize, all of the services and programs offered on PNW’s campus.This academic monitoring provides faculty with an opportunity to briefly evaluate the student - athletes’ overall performance.  Student - athletes who receive a 2.0 or below are encouraged to meet with the Student - Athlete Academic Support Staff to develop programming which will help the student - athlete to receive the highest grade possible in the respective course.This programming may include faculty - student conferences, faculty - student - SAAS Advisor conferences, tutorial assistance, and/or referral services.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('University Library', 3, 
'Hammond Campus Location: Student Union & Library, Second Floor\n\nTelephone: (219)989-2224\n\nWestville Campus Location: Library Student Faculty Building, Second Floor\n\nTelephone: (219)785-5248\n\nWebsite: www.pnw.edu/library/\n\nFor hours of operation, please visit our website.\n\nAccessible, trusted, and indispensable learning environment, fundamental to student academic achievement in college\n\nDeliver high quality information, provide excellent guidance in its use\n\nzPromote learning in attractive, technologically advanced, and personally comfortable environment
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Marketing & Communications', 3, 
'Hammond Campus: Lawshe Hall – 310\n\nWestville Campus: Dworkin Center – 1114B\n\nHours: Monday to Friday, 8 a.m.to 5 p.m.\n\nPhone: (219) 989 - 2217\n\nEmail: marketing @pnw.edu\n\nThe Office of Marketing and Communications is the official marketing and news source for Purdue Northwest. We work with the Colleges and units throughout PNW to advance the university’s brand and promote student achievements and success, inside and outside the classroom.\n\nStudent Organizations looking to publicize activities and events should work through the Office of Student Life.You will learn about a variety of media available to you including: social media, the PNW website, posters, signs including LCD screens, and email to students, faculty and staff.\n\nYou will find a wide range of resources and information including brand guidelines on the Marketing and Communications website.\n\nhttps://www.pnw.edu/marketing-communications/
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('McNair Achievement Program', 3, 
'Hammond Campus Location: Student Union & Library – 343\n\nHours: Monday to Friday, 8 a.m.to 4:30 p.m.\n\nAdditional hours available by appointment\n\nPhone: (219) 989 - 2779\n\nFax: (219) 989 - 2179\n\nWebsite: www.pnw.edu/mcnair\n\nThe Ronald E.McNair Post-Baccalaureate Achievement Program is a program designed to prepare and encourage Purdue University Northwest students who are first-generation, low - income or from groups under-represented in graduate education for doctoral study (not necessarily at Purdue).\n\nScholars in the program benefit from a support system that enhances their academic as well as social experiences at Purdue Northwest through summer research internships, seminars designed to prepare them for doctoral study, learning assistance, counseling, and graduate admission and financial aid assistance.\n\nhttps://www.pnw.edu/educational-opportunity-programs/mcnair-achievement-program/
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('New Student Orientation', 3, 
'After receiving an admission letter and accepting their offer of admission, students can register online for orientation. Several orientation sessions are offered prior to each semester.\n\nAt New Student Orientation students have the opportunity to meet new people, learn how to navigate Purdue University Northwest’s technology, and hear about resources to help them be more successful students.Students also meet with their academic advisor and register for semester classes.\n\nSpecial events are sponsored to check on students’ progress at the University and to encourage peer networking.Learn more about New Student Orientation including how to register for an Orientation event.\n\nhttps://www.pnw.edu/admissions-financial-aid/undergraduate/admitted-students/new-student-orientation/
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Print/Mail Services', 3, 
'Hammond Campus Location: University Services Building – 6\n\nHours: Monday to Friday, 7 a.m.to 4:30 p.m.\n\nPhone: (219)989-2359\n\nFax: (219) 989-2659\n\nWestville Campus Location: Technology Building – 131\n\nHours: Monday to Friday, 8 a.m.to 4:30 p.m.\n\nPhone: (219)785-5550\n\nFax: (219)785-5466\n\nEmail: printservices@pnw.edu\n\nMail Website: www.pnw.edu/business-services/mail-services/\n\nPrint Website: www.pnw.edu/business-services/duplicating/\n\nPrint/Mail Services provides a wide array of services including black & white copies, color copies, carbonless forms, business cards, presentations, letterhead, envelopes, letters, note pads, flyers, booklet production, posters, three-hole punching, spiral binding, thermo binding, shrink wrap, laminating, collating, staple, folding, cutting, and padding.Price quotes upon request.\n\nWe also handle a list of supply items:\n\nCopy Paper 8 ½ x 11(per case), Copy Paper 8 ½ x 14(per ream), Copy paper 11 x 17(per ream), Color Copy Paper(per ream), PNW Logo Pocket Folders(each), NCS Exam Sheets(per ream), PNW Logo Address Labels(6 per sheet), PNW Logo Name Tags(8 per sheet), Recycled Scratch Pads(each), Moving Boxes(each), Banker Boxes(each)\n\nWalk - up copying is available in all lounges, on the Hammond campus in ANDR - Anderson Bldg. / CLO - Classroom Office Bldg. / LAWS - Lawshe Hall Bldg. / PORTER - Porter Hall Bldg. / GYTE - Gyte Bldg., and on the Westville campus in SWRZ - Schwarz Hall 130 Vending Room and LSF 243.In addition to student labs, student printing is also available in the Cyber Café LSF 114.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Recreational Sports', 3, 
'A variety of Recreational Activities and Sports are offered for all students who are fitness center members and hold a valid Purdue University Northwest student ID card.  Programs include basketball, volleyball, Ping-Pong, and badminton, and air hockey, use of indoor track, weightlifting, handball, racquetball, and specialty classes.\n\nThere is a charge for reserved racquetball court use; advance reservations are suggested and can be made up to seven days in advance.Call(219) 989 - 2550 to reserve a court.\n\nLockers, locks, towels, etc.may be rented at the Recreation Desk.Fees are posted.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Registrar', 3, 
'Hammond Campus Location: Lawshe Hall Room 130\n\nPhone: (219)989-2210\n\nWestville Campus Location: Schwarz Hall Room 40\n\nPhone: (219)785-5342\n\nHours: Monday – Friday 8:00 a.m. – 4:30 p.m.\n\nEmail: registrar @pnw.edu\n\nWebsite: www.pnw.edu/registration\n\nThe major functions coordinated by the Office of the Registrar are:\n\nRegistration for classes\n\nSchedule revisions(drops and adds)\n\nGrade processing\n\nMaintaining and updating academic records\n\nProcessing transcript requests\n\nCertification for graduation / commencement planning\n\nEnrollment verification\n\nAcademic scheduling and room assignment\n\nGraduation/degree verification\n\nDiplomas\n\nThe personnel in the Office of the Registrar are responsible for recording pertinent information about each student who attends Purdue University Northwest.Personal data such as address, phone number, ID number, residence classification, school and major, as well as records of academic performance, are maintained in historical format in this office.The online computer system facilitates the quick and easy processing of registration and schedule changes.\n\nSome of the services that students may obtain in the Office of the Registrar are:\n\nAdvisor listing\n\nCertification of good standing / enrollment\n\nVeteran’s certification; benefits information\n\nCopies of academic record(transcripts)\n\nChange of address, name, and residence classification\n\nTransfer to other Purdue campuses\n\nChange of major or degree objective\n\nClass schedules\n\nGrade changes/ removal of incomplete grades\n\nAuditing classes\n\nInformation about in-state tuition requirements\n\nStaff members in the Office of the Registrar are available to assist students in understanding University policies and procedures and interpretation of the academic regulations.\n\n
Privacy of Student Records\n
In compliance with the Family Educational Rights and Privacy Act of 1974 (FERPA), Purdue University agrees to protect the privacy of educational records of all students.  No personally identifiable information, other than Directory Information as designated in the formal institutional policy, will be disclosed outside the University without prior written consent of the student.\n\nAll students have the right to inspect the information contained in their own education records and to formally challenge the contents of the records.Copies of the formal institutional policy, which provides detailed information for implementation of the Act, may be obtained in the Office of the Registrar or on the Registrar’s website.\n\n
Residence Classification\n
A student’s initial residency classification is determined by the appropriate Office of Admission (Undergraduate Office of Admission or Graduate School Office of Admission).\n\nContinuing undergraduate level students, and all graduate level students, interested in a residency classification review should contact the Office of the Registrar or visit the Registrar’s website.\n\nPersons responsible for determining residence classification are authorized to require such certificates, affidavits, documents, or other evidence, as they deem necessary.In all cases, the burden of proof shall be upon the student making a claim of resident student status.\n\nIn addition to the required proof to be considered domiciled in Indiana, a person must reside continuously in the state for a predominant purpose other than attending an institution of higher educations for at least 12 consecutive months immediately preceding the first day of classes of the term for which resident classification is sought.\n\n
Transfers\n
Students wishing to change their curriculum of study at Purdue Northwest or wishing to transfer to another Purdue campus, must follow appropriate procedures. Procedures for each process may be obtained in the Office of the Registrar.  Staff members will explain the process and will advise the students of any deadlines involved in transferring and/or changing majors.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Respect Boundaries', 3, 
'Purdue Northwest is committed to maintaining a positive and safe environment free from all forms of harassment, including sexual harassment. In addition, the University complies with several federal laws, including the Campus Sexual Violence Elimination (SaVE) Act. SaVE requires students to receive primary prevention and education awareness about sexual violence.\n\nPNW provides Respect Boundaries online training to new incoming and transfer students via our Learning Management System, Brightspace.Respect Boundaries consists of four modules: Purdue University Policies and Procedures, Risk Reduction and Prevention, Relationship Violence, and Supporting Survivors: Resources and Services.\n\nPlease contact the Office of the Dean of Students at dos @pnw.edu or call the Hammond campus, (219) 989 - 4141, or the Westville campus, (219) 785 - 5230, for questions regarding the Respect Boundaries Program.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Student Employment', 3, 
'Hammond Campus Location: Student Union Library Building, Room 349\n\nPhone: (219)989-2600\n\nWestville Campus Location: Library, Student Faculty Building, Room 104\n\nPhone: (219)785-5451\n\nHours:\n\nMonday through Friday, 8 to 4:30 p.m. (Hammond)\n\nMonday through Thursday, 8 to 4:30 p.m.* (Westville)\n\n* Fridays by appointment only\n\nWebsite: www.pnw.edu/career-center/student-employment\n\n
Student Employment: Learn Here, Work Here, Graduate Here\n
Each year Purdue University Northwest students work in many different departments all across our campus, as well as off-campus community partners. Students work in a variety of roles including information technology, research, campus communications, office administration, reading or math tutors and more. They act as an integral part of making the university run smoothly, while gaining skills that will help them in their future professional positions.\n\n
How to Find Student Employment\n
Incoming and actively enrolled students can seek out on campus student employment opportunities through the SuccessFactor’s student employment portal. You must create a profile and upload your resume in the system to apply to jobs.\n\nLog onto: careers.purdue.edu/PNW\n\nClick “View Profile”\n\nNew Users select “Create an account to apply for career opportunities”\n\nOnce your account has been created, you need to create a profile to apply to open positions on campus.You can do this by clicking the “My Profile” tab, and make sure you upload your resume.\n\nSearch jobs by clicking on the “Students” portal.Please make sure you pay attention to the location of the position that is listed.\n\n
How to find a Job or Internship Off Campus\n
Handshake is a modern career development platform that provides students and alumni with advanced online tools, available on all devices, including mobile technology. This system provides:\n\nRelevant feed of job and internship opportunities\n\nNews feeds containing the latest information from the Career Center and your favorite employers\n\nResources that specifically match your interests\n\nAppointment scheduling with select Career Center staff.\n\nAccess to the Handshake is available to actively enrolled, degree seeking students and alumni of Purdue on the first day of your first semester and will be maintained as long as you are actively enrolled and degree seeking, including after graduation!\n\nYou can login to your Handshake account at www.hirePNWpride.com.\n\nQuestions ? Come see us in the Career Center anytime Monday through Thursday between 1 to 4 p.m.and we can help!
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Student Government Association', 3, 
'Hammond Campus Location: Student Union & Library – 324F\n\nPhone: (219)989-2885\n\nWestville Campus Location: Dworkin Student Services & Activities Complex – 1021\n\nPhone: (219) 785 - 5479\n\nWebsite: www.pnw.edu/student-life/organizations-listing/student-government-association/\n\nThe Student Government Association(SGA) of Purdue University Northwest serves as the chief advocate for student interests at the University.As one of the four governance groups, SGA represents students’ perspectives to faculty, staff and administrators; provides representatives to University committees; and catalyzes inventive projects by which to improve students’ college experiences.\n\nSGA is comprised of the Executive Board, which supports the Student Body President and advances the objectives of their administration, and the Student Senate, whose delegates are elected from and represent the five Colleges.\n\nThe impressive capabilities of Student Government depend on student support and engagement, so all students are encouraged to become involved!  Participation may be as simple as posting messages to their social media pages or as dedicated as running for office.\n\nAnnual elections take place in the spring semester, at which time students have the opportunity to elect their president, vice president, and senators for the coming year.Students who wish to make more flexible commitments to Student Government may join as representatives and support officers in their projects.\n\nWhile students gain invaluable leadership experience by being contributing members of their Student Government Association, they simultaneously enrich campus life.All Purdue University Northwest students are members by nature of their enrollment in the University.\n\nIf you have comments or suggestions that you would like to share with your SGA representatives, please feel free to stop by or call, they look forward to hearing from you!
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Students IDs', 3, 
'The Office of New Student Orientation on the Hammond campus manages the student ID system. The Office of Admissions on the Westville campus manages the student ID system.\n\nStudents can use their student ID to check out library books, work out at the Fitness Center, obtain a meal plan, live at Housing and Residential Life and attend select events.To obtain a student ID students should bring a photo ID and current class schedule to each campus’s designated ID area.\n\nYour first ID is free so be sure to hold on to it! You’ll use the same ID your entire time at Purdue Northwest.The replacement fee for lost IDs is $15, which must be paid at the Bursar’s Office prior to obtaining another PNW ID.\n\nhttps://www.pnw.edu/admissions-financial-aid/undergraduate/admitted-students/id-card/
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Student Life', 3, 
'Hammond Campus Location: Student Union Library – 325\n\nPhone: (219)989-2369\n\nWestville Campus Location: Dworkin Student Services & Activities Complex – 1021\n\nPhone: (219)785-5479\n\nEmail: studentlife@pnw.edu\n\nWebsite: www.pnw.edu / student - life\n\nThe Office of Student Life is a dynamic office that provides opportunities for students to grow and learn outside of the classroom.We provide diverse programming that supports student’s professional, academic, and personal goals.\n\nOur office connects students with the Purdue University Northwest community, as well as outreach into the communities surrounding our campuses.\n\nPlease join us for events like: Welcome Week, Pride Stride, Play Day, Pancake Study Break, Alternative Spring Break, and many others.\n\nStudents who are interested in planning events are encouraged to join the Student Programming Board.The Student Programming Board assists the Office of Student Life in planning Purdue Northwest student events.Students will gain experience in marketing, event planning, communications, and budget management.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Student Organizations', 3, 
'Hammond Campus Location: Student Union Library Building – 325\n\nPhone: (219)989-2369\n\nWestville Campus Location: Dworkin Student Services and Activities Complex\n\nPhone: (219)785-5479\n\nMake the most of your college experience! Getting involved is easy with more than 100 student organizations that include departmental, professional, multicultural, performing arts, Greek, spiritual, recreational, and social organizations.\n\nStudents are also encouraged to join the Pioneer(student newspaper) and Student Government Association. Joining a student organization will enhance your leadership skills, establish connections with faculty, staff and students, and further develop your resume.\n\nFor more details, go www.pnw.edu/student-life/organizations-listing/.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Testing Services Center', 3, 
'Hammond Location\n
Student Union Library, Room 318\n\n2200 169th Street\n\nHammond, IN  46323\n\n(219)989-2504\n\ntestingcenter@pnw.edu\n\n
Westville Location\n
Technology Building, Room 265\n\n1401 S.US 421\nWestville, IN 46391\n(219)785-5326\n\ntestingservices@pnw.edu\n\nWebsite: www.pnw.edu/testing-center/\n\nPNW’s testing centers are certified test sites for national, institutional, placement and certification exams.We also offer academic(classroom) exams, proctored testing, CLEP exams and the ACT Residual.Photo ID is required for all testing.\n\nAll exams are scheduled using our online registration system, RegisterBlast. Use the following link to schedule an exam: www.registerblast.com/pnw/Exam/List.\n\nPlacement testing is provided by appointment at both campuses for math, English and foreign language(Spanish, German and French).There is no cost for the English placement test, cost for foreign language placement is $10.00 and cost for math placement is $25.00.For more information on placement testing, please see our website.\n\nInformation on other tests, including CLEP exams, make - up or proctored testing, ACT Residual or certification exams can be found at www.pnw.edu / testing - center / services, or please contact either center at the phone or email listed above.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Transfer Students', 3, 
'Location: Lawshe-130, Hammond Campus\n\nHours: Monday to Friday, 8 a.m.to 4:30 p.m.\n\nPhone: (219)989-2213\n\nEmail: admissions@pnw.edu\n\nThe Office of Undergraduate Admissions is committed to provide transfer students with a seamless transfer experience to Purdue University Northwest.  It provides information about Purdue University Northwest undergraduate programs and transfer student admission requirements.\n\nTransfer admission staff is available for pre - admission counseling by phone or in person appointments.Transfer student scholarships are administered through this department as funds are available.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('TRIO Student Support Services', 3, 
'Location: Schwarz Building – 38\n\nPhone: (219)785-5312\n\nEmail: triosss@pnw.edu\n\nWebsite: www.pnw.edu/triosss\n\nTRIO Student Support Services(SSS) is a federally funded program focused on serving first-generation, income - eligible, college students. TRIO SSS will provide a comprehensive set of services that emphasize academic excellence, cultural awareness, and life - long learning.\n\n
Mission\n
Guiding first-generation students to graduation. Our mission is to provide learning, discovery, and engagement opportunities through quality academic, career, and personal support. The goal is simple—lead students to the successful completion of a bachelor’s degree!\n\n
Eligibility\n
TRIO SSS serves 195 students a year. Eligible students must be enrolled or accepted for enrollment at Purdue University Northwest, be a U.S. citizen or meet residency requirements, and have an academic need. In addition, participants must also meet one of the following requirements:\n\nis a first - generation college student;\n\neligible for state or federal grants; or\n\nhave a documented disability.\n\n
Services\n
TRIO Student Support Services provides academic, social, and cultural opportunities. Support is provided through one-on-one advising and program sponsored events. Services include, but are not limited to:\n\nOne - on - one tutoring\n\nAcademic advising and coaching\n\nCareer advising\n\nStudent leadership opportunities\n\nFinancial aid guidance & financial literacy\n\nScholarship search assistance\n\nGraduate school admission advising\n\nSuccess skills building(i.e.study strategies, testing techniques, and time management)\n\nSocial, cultural, and service activities\n\nAccess to a private computer lab and laptops available for rent
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Upward Bound', 3, 
'Hammond Campus Location: Schneider Avenue Building – 1112\n\nHours\n\nMonday to Friday, 8 a.m.to 4:30 p.m.\n\nSaturday, 8:30 a.m.to 1 p.m.\n\nEvenings by appointment\n\nPhone: (219)989-2392\n\nFax: (219)989-2036\n\nWebsite: www.pnw.edu/upward-bound/\n\nUpward Bound is a continuous four - year pre - college program for students in target area high schools in Lake County Indiana.It is a federally funded TRIO program that provides supportive academic instruction, including but not limited to, tutoring, college tours, career seminars, pre college entrance exams - SAT, ACT, admissions, financial aid and special interest workshops.\n\nIt is designed to generate skills and motivate low income - first generation high school students with the necessary activities and curriculum for a successful post - secondary education including enrollment in college credit classes at Purdue University Northwest - Hammond Campus.\n\nIt has been in existence at Purdue University Northwest - Hammond Campus since 1965.In addition to the academic year in which students attend 20 - 22 Saturdays, six to eight week summer programs are also offered through Purdue University Northwest.A summer Bridge component is also offered which allows students to take college classes immediately after high school graduation.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Veteran Services', 3, 
'Hammond Campus Location: Student Union & Library – 335\n\nHours: Monday to Friday, 8 a.m.to 4:30 p.m.\n\nAdditional hours available by appointment for both campuses\n\nPhone: (219)989-2772\n\nWestville Campus Location: Leonard J.Brown Veteran Student Center, Dworkin Student Activities Complex – 1002\n\nHours: Monday to Friday, 8 a.m.to 8 p.m.\n\nPhone: (219)989-2772\n\nWebsite: www.pnw.edu/veteran-services/\n\nAlong with university services including Priority Registration, Fee Deferment, and assistance with VA certification, the Office of Veteran Services offers a combination of services to aid in successful degree completion by providing support in the transition from the military environment into the academic environment with referrals to appropriate university support services and guidance during military deployment.\n\nBoth locations on the Hammond(SUL 335) and Westville(DSAC 1002) campuses offer a dedicated space with access to computers, CAC Readers, television, complimentary coffee and an informal location to network and study.\n\nPurdue Northwest has been designated a Military Friendly institution, which means the University makes a commitment and effort to have a benefit to the campus and military community.The Office of Veteran Services may be contacted at 219 - 989 - 2772 or via email at veteranservices@pnw.edu.\n\nTo ensure veterans educational benefits can be processed in a timely manner, veterans planning on using their educational benefits should communicate early with the Veterans Certifying Officials in the Office of the Registrar
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Vice Chancellor for Enrollment', 3, 
'Locations\nLawshe-352, Hammond Campus\nSchwarz – 136, Westville Campus\n\nHours: Monday to Friday, 8 a.m.to 5 p.m.\n\nPhone: (219)989-2367\n\nStudents are encouraged to visit the Office of the Vice Chancellor for Enrollment Management and Student Affairs(VCEMSA) regarding any questions concerning University policies and procedures, discrimination / harassment by any University employee, or general questions concerning student life on campus.\n\nThe Office of Vice Chancellor for Enrollment Management and Student Affairs is responsible for coordinating all non - academic services which are designed to recruit and enroll students in a supportive campus environment in which students are able to develop and succeed — academically, intellectually and personally.\n\nEnrollment Management and Student Affairs includes the following offices: Admissions, Financial Aid and Scholarships, Registrar’s Office, EMSA Reporting and Operational Intelligence, Housing and Residential Education, Office of the Dean of Students, Student Support and Advocacy, Campus Life and Student Activities, Student Organizations and Leadership Development, Student Government, Counseling Center, Disability Access Center, Student Conduct, Career Services Center, TRIO / Educational Opportunity Program, Lions Cub Childcare Center, Office of Veterans Services, McNair Achievement Program, 21st Century Scholars Program, Upward Bound and College Bound Programs, New Student Orientation and Testing Services, and University Welcome Centers.\n\nThe Division of Enrollment Management and Student Affairs assists with creating a student - centered environment designed for student success through services and programs administered outside of and in conjunction with academic programs.The staff, faculty and the student leaders with whom they partner are committed to a team approach to creating this supportive environment that is the hallmark of a Purdue University Northwest.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Writing Center', 3, 
'Hammond Campus Location: Classroom Office Building (CLO) 265\n\nPhone: (219)989-2200\n\nWestville Campus Location: Library Student Facility(LSF) 211\n\nPhone: (219)785-5383\n\nWebsite: www.pnw.edu/writing-center\n\nThe Writing Center at Purdue University Northwest offers one - to - one and group tutorial assistance to all University students. The Writing Center is staffed by graduate and undergraduate peer tutors who are trained to help with any stage of the writing process.\n\nThe Writing Center also offers workshops throughout the semester, as well as a quiet space to work on all types of writing, privately or with assistance. To meet with a tutor, students may either make an advanced appointment through the website www.mywco.com / pnw or drop by for a walk-in appointment.Computer workstations are also available in the Writing Center.
');


/*--------------------------------------------------------*/

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Academic Honors', 4, 
'Deans List\nThe Dean’s List is Purdue University Northwest’s way of recognizing undergraduate students for outstanding scholastic achievement. At the conclusion of each semester, the registrar shall indicate which undergraduate students are scholastically eligible to be included on the Dean’s List. To be cited on the Dean’s List for any semester, one must:\n\nhave at least 12 hours included in the cumulative GPA\n\nhave at least 6 hours included in the semester GPA\n\nattain at least a 3.5 cumulative GPA\n\nhave at least a 3.0 current semester GPA\n\n
Semester Honors\nSemester Honors recognize undergraduate students who:\n\nhave at least six credit hours in the semester with a semester GPA of at least 3.5, and\n\nhave at least a 2.0 overall GPA\n\nStudents whose names are placed on the Dean’s List shall be entitled to the following special privileges during the semester following the designation of distinction :may be assigned to more than 18 credit hours upon request.\n\nwith the instructors permission, a full - time Dean’s List student may audit one class without assessment or additional fee\n\nIt would be possible to earn both Dean’s List and Semester Honors standing if the student has a really outstanding semester.\n\nNote: Pass/no-pass grades and credits do not count in hours totals for either category of honors.For the most current information on Academic Honors, visit the Registrar’s website at www.pnw.edu/registration/policies-and-regulations/
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Academic Integrity Policy', 4, 
'The Academic Integrity process is one component of an overall system promoting academic integrity at Purdue University Northwest. Appeals of alleged academic dishonesty will operate in accordance with the Purdue University Northwest Code of Student Conduct, the Student and Faculty Handbooks on Academic Integrity, and other initiatives related to the promotion of academic integrity. These initiatives will be coordinated by the PNW Academic Integrity Committee, which reports to the Student Affairs Committee of the Faculty Senate.\n\nPurdue University Northwest’s Academic Integrity Policy can be found at www.pnw.edu/dean-of-students/policies/academic-integrity-policy/.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Alcohol & Drug Policy', 4, 
'Purdue University Northwest follows the Purdue University system Alcohol and Other Drug Policy\n\nhttps://www.purdue.edu/aod/?_ga=2.213936343.1587113600.1617473456-49765116.1616626803\n\nIn Fall 2011, Purdue implemented a new policy: Medical Amnesty for Student Intoxication\n\nhttps://www.purdue.edu/policies/west-lafayette/wl-7.html\n\nUniversity policy prohibits the use or possession of alcoholic beverages on campus and while involved in University sponsored activities while traveling.Consumption, outside of university - related events, of alcoholic beverages by students of legal drinking age will be governed by the guidelines set out for the trip.\n\nFor example, if students are participating in a graduate visitation program at the University of Iowa and the official structured program ends at 5 p.m., students of legal drinking age may go out for an unsupervised dinner and have an alcoholic beverage if allowed by guides as expressed by the university representative in charge.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Amorous Relationships Policy', 4, 
'Purdue University prohibits Amorous Relationships between a student and any University employee who has educational responsibility over the student, and supervisors and subordinates where there is a supervisory or evaluative relationship.  Amorous Relationships should be reported to the department or unit head who will ensure that arrangements are made to sever the supervisory or evaluative relationship between the parties.\n\nhttps://www.purdue.edu/policies/ethics/iiia1.html?_ga=2.247621575.1587113600.1617473456-49765116.1616626803
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Anti-Harassment Policy', 4, 
'Purdue University is committed to maintaining an educational and work climate for faculty, staff, and students that is positive and free from all forms of Harassment.  Harassment is unacceptable and will not be tolerated.  Harassment is conduct that has the purpose or effect of:\n\nCreating an intimidating or hostile environment\n\nUnreasonably interfering with or affecting a person’s:\n\nEducational environment\n\nWork environment\n\nParticipation in a University activity\n\nIncludes Racial Harassment, Sexual Harassment and Stalking.\n\nhttps://www.purdue.edu/policies/ethics/iiic1.html
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Attendance', 4, 
'Students are expected to attend every meeting of the classes in which they are enrolled. At the beginning of a semester, all instructors should make a statement to each of their classes regarding the handling of unavoidable absences.\n\nhttps://catalog.pnw.edu/content.php?catoid=1&navoid=11&hl=attendance&_ga=2.42101349.1587113600.1617473456-49765116.1616626803#class-attendance\n\nAll matters relative to such absences, including making up of work missed, shall be arranged by the student and instructor involved.A student who is absent may be denied credit for work missed. The instructor will be responsible for counseling with the student whose absences endanger the student’s academic performance.\n\n
When Attendance Becomes a Problem\n
A problem related to excessive absences may be referred to the Office of the Dean of Students by either the instructor or the student if further information is needed or if either feels that further discussion would resolve the problem.\n\nA student’s absence from all meetings of any regularly scheduled class as defined by an instructor’s absence policy may be reported to the Dean of Students or his/her designee for appropriate action.If excessive absences occur, the instructor can request that the student be administratively withdrawn from the course by the Office of the Registrar.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Bill of Student Rights', 4, 
'The Bill of Student Rights can be found on the West Lafayette webpage. Purdue University students enjoy the protections and freedoms afforded in the Bill of Student Rights. Privacy, expression, grades and more are addressed.\n\nhttps://catalog.purdue.edu/content.php?catoid=13&navoid=16335
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Classroom Disruption Policy', 4, 
'Purdue University Northwest supports the principles of freedom of expression for both faculty and students. The University respects the rights of faculty to teach and students to learn. Maintenance of these rights requires conditions in the learning environment that do not impede the learning process. Disruptive behavior will not be tolerated. An individual engaging in such behavior may be subject to disciplinary action.\n\nPurdue University Northwest’s Classroom Disruption Policy can be found at: www.pnw.edu/dean-of-students/faculty-and-staff-resources/classroom-disruption-policy/\n\n
Process for Addressing Student Issues, Concers or Problems\n
Purdue University Northwest seeks to help students with problems at the most appropriate level in the University.  Students should proceed through the appropriate department in which the student had the issue, concern or problem as outlined by following the appropriate chain-of-command.\n\n
Classroom/Academic Issues\n
Students should discuss classroom issues with their instructor.  If unresolved, students should follow the academic-chain-of-command for that department.\n\n
Non-class Issue\n
Students should discuss University issues with the appropriate staff member or supervisor. If unresolved, students should follow the non-academic-chain-of-command for that department.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Complaints', 4, 
'Students have the opportunity to submit complaints to the Office of Dean of Students. The complaint will be forwarded to the appropriate department.  Please contact the Office of the Dean of Students for further assistance at (219) 989-4141 for the Hammond campus or (219) 785-5230 for the Westville campus.\n\nhttps://purdue.qualtrics.com/jfe/form/SV_9n4WFFnYZ9udeQJ
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Copyrights & Patents', 4, 
'Purdue University Northwest follows the Purdue University system policy for Copyrights and Patents.\n\nhttps://www.purdue.edu/policies/academic-research-affairs/ia1.html?_ga=2.49876966.1587113600.1617473456-49765116.1616626803\n\nFaculty are in the best position to help students understand ownership rights related to outside funding or other support within a specific course.Persons requiring further information regarding this University policy should contact the Vice Chancellor for Finance and Administration, Stephen R.Turner, Lawshe - 334, (219)989-2232.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Discrimination & Harassment', 4, 
'Any employee, student, campus visitor, or person participating in a University activity, whether on or off campus, who believes they have experienced or witnessed discrimination and/or harassment is encouraged to report the incident(s) promptly to the Office of Equity, Diversity, and Inclusion (edi@pnw.edu) or to the Office of the Dean of Students (dos@pnw.edu) if the Respondent involves a student.\n\nhttps://www.purdue.edu/ethics/resources/resolving-complaints.php
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Equal Opportunity, Equal Access, & Affirmative Action', 4, 
'Purdue University is committed to maintaining an inclusive community that recognizes and values the inherent worth and dignity of every person.\n\nPurdue University views, evaluates and treats all persons solely as individuals on the basis of their own personal abilities and qualifications.\n\nPurdue does not condone and will not tolerate discrimination against any individual and ensures all persons have equal access to its employment and educational opportunities, services, and activities.\n\nhttps://www.purdue.edu/policies/ethics/iiic2.html?_ga=2.43149157.1587113600.1617473456-49765116.1616626803
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Final Exams', 4, 
'Each class is scheduled for a two-hour meeting during the final exam period. Courses not scheduled for an exam period are those classified as workshop, practice teaching, individual study, and those offered for zero credit. However, any such course is included in the schedule by specific request of the appropriate schedule deputy.\n\nFinal exam week consists of six scheduled days in regular semesters, which comprise the 16th week of the semester.Two - hour class meetings during the final period will be scheduled on the advice of the Office of the Registrar.Scheduling of final exams during the summer session is scaled appropriately to meet demands.\n\nThe guiding principles of final exam scheduling include:\n\n1. Minimize the number of direct student examination conflicts.\n\n2. Minimize the number of students who have more than two examinations on the same day.\n\n3. Minimize the number of students who have consecutive (back-to-back) exams.\n\n4. In the case of exam conflict or more than two exams on one day, the affected student after consultation with the instructors involved, may elect which of the exams are to be taken at the scheduled time(s). Saturday of the exam period may be used for solving these scheduling problems.\n\n
Final Exam Schedule:\n
Final exam schedules are posted online one month after the beginning of each semester. The schedule can be viewed on the Registrar’s website.\n\nhttps://www.pnw.edu/registrar/academic-schedule/final-exam-schedule/
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Grades', 4, 
'Please refer to the University’s Academic Catalog for the most current information on Grades.\n\nhttps://catalog.pnw.edu/
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Grade Appeal Policy', 4, 
'Purdue University Northwest’s complete Grade Appeals Policy can be found at www.pnw.edu/dean-of-students/policies/grade-appeal-policy/.\n\nIn the academic community, grades are a measure of student achievement toward fulfillment of course objectives.The responsibility for assessing student achievement and assigning grades rests with the instructor and, except for unusual circumstances, the course grade given is final.\n\nThe PNW Grade Appeals Policy affords recourse to a student who has evidence or believes that evidence exists to show that he or she has been assigned an inappropriate grade.Additionally, a student may challenge the reduction of a grade for reason of alleged academic dishonesty.\n\nA student who wishes to appeal a grade must file a written notice of intention to appeal with the Chair of the University Committee for Grade Appeals. This written notice must be filed by the twenty - first calendar day from the start of classes of the semester session(exclusive of summer) following the session in which the grade was given.The written intention to appeal must include the date, course, section, semester, name of the course instructor, and a statement as to why the grade given was inappropriate.The Chair shall forward a copy of this written notice to the instructor.\n\nIn appealing a grade, the burden of proof is on the student, except in the case of alleged academic dishonesty, where the instructor must support the allegation of academic dishonesty.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Grief Absence Policy', 4, 
'Purdue University recognizes that a time of bereavement is very difficult for a student. The University therefore provides the following rights to students facing the loss of a family member through the Grief Absence Policy for Students (GAPS).\n\nGAPS Policy: Students will be excused for funeral leave and given the opportunity to earn equivalent credit and to demonstrate evidence of meeting the learning outcomes for missed assignments or assessments in the event of the death of a member of the student’s family.\n\nScope: This policy applies to all full-time and part-time students currently enrolled in the Purdue University System.\n\nPurdue University Northwest’s complete Grief Absence Policy can be found at: www.pnw.edu/dean-of-students/policies/grief-absence-policy-for-students/
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Honor Code', 4, 
'The University Honor Code can be found on the West Lafayette webpage at www.purdue.edu/studentregulations/student_conduct/codeofhonor.html.\n\nI understand that academic dishonesty will not be tolerated at Purdue University Northwest.I am here to learn.Through learning, I will strive to become a better person and a more valuable contributor to society.\n\nI understand that dishonesty in the classroom, through cheating, plagiarism or other dishonest acts, defeats this purpose and disgraces the mission and quality of a Purdue University Northwest education.\n\nTherefore, I make the following pledge: in accordance with the Honor Code, I will not engage in dishonesty in my academic activities, and I will not tolerate such dishonesty by other students.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Information Technology Policies', 4, 
'All Purdue Information Technology Policies are maintained in West Lafayette.  Information regarding these policies can be found by going to the links below.\n\nEmail Policy: www.purdue.edu/policies/information-technology/s7.html\n\nTechnology Acceptable Use Policy: www.purdue.edu/policies/information-technology/viia4.html\n\nAll Purdue Information Technology Policies: www.purdue.edu/policies/information-technology/
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Nepotism in the Classroom', 4, 
'Purdue University has an Anti-Nepotism Policy, per Executive Memorandum C-37, 29 September 2014, concerning nepotism for persons who have employment status. The Purdue University Nepotism Policy states that, “Employment opportunities with the University are not and should not be based upon or influenced by family relationships. In addition, the University maintains policies guarding against employment relationships from which nepotism may arise.” This policy can be found at on Purdue’s Nepotism Policy page.\n\nWhereas this policy does not apply to students and faculty relationships in the classroom, the Office of the Dean of Students has the following tips regarding students who are attending classes or labs, etc.that are taught by those who are considered family members, or relatives. “Family members” are defined as those who are spouses, parents or siblings, grandparents, grandchildren, uncles, aunts, nephews, nieces, and cousins; this includes those who are related by blood or by marriage.\n\n
Office of the Dean of Students Statement\n
Likewise, the Office of the Dean of Students issues the following statement about students being taught in the classroom by relatives:\n\nTeaching one’s relatives makes it difficult for one to be objective in one’s treatment of the relative.It is for this reason that it is strongly discouraged.  Further, faculty who finds themselves in this predicament, to avoid the appearance of impropriety, should take one of the following actions\n\nWork with department head to transfer student to another section of the same class, or\n\nWork with the department head to have student take an Independent Study with a different professor, or\n\nWork with department head for other options.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Nondiscrimination Policy', 4, 
'Purdue University prohibits discrimination against any member of the University community on the basis of race, religion, color, sex, age, national origin or ancestry, genetic information, marital status, parental status, sexual orientation, gender identity and expression, disability, or status as a veteran.\n\nhttps://www.purdue.edu/purdue/ea_eou_statement.php
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Parking Regulations', 4, 
'For more information on Parking Regulations, please visit the University Police website.\n\nOpen parking exists for all students in an area not restricted for handicapped parking, staff parking, or reserved parking.Parking in handicapped areas will be restricted to those vehicles which display a valid state issued placard or plate, or valid temporary handicapped permit issued by Purdue University Police Department.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Personal Injury, Accident, or Illness', 4, 
'For more information on Personal Injury, Accident, or Serious Illness procedures please visit the University Police website.\n\nhttps://www.pnw.edu/public-safety/\n\nGuidelines to follow in case of personal injury, accident or serious illness may be found on the Purdue University Northwest Emergency Preparedness page.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Posting Policy', 4, 
'Designated posting locations for both campuses can be found at www.pnw.edu/facilities/public-posting-policy-and-locations/.
General Display Postings\n
Several public display boards, kiosks, and areas are available on campus and will be labeled as such.  Be advised all public display areas will be cleared at the end of each semester.\n\nItems posted improperly and / or displayed in unapproved locations, including entrance doors, will be removed and discarded.\n\nQuestions regarding the location of public display areas should be directed to PNW Facilities Services.\n\n
Information for Students\n
The small bulletin boards located near each classroom and lab door are for the exclusive use of the registrar and the faculty teaching in that space.  Postings on these boards will generally be limited to class cancellation and related academic scheduling issues.\n\nAll bulletin boards inside general purpose classrooms and instructional labs are reserved for instructional materials posted by faculty.Timely removal of the material is encouraged.Unless otherwise indicated on the material, these boards will also be cleared at the end of each semester.\n\n
Posting Personal Items\n
If you wish to post or mount personal items inside a private office or other location not visible to the general public, please refrain from using adhesives, tape or tacks on any wooden or painted surface.  Doing so may cause significant damage.\n\nPoster putty is recommended for temporary paper displays.If you have a bulletin board, favorite photo, artwork or any other item to be mounted, please submit a work order request in PNW Fix It on the PNW website or via email to PNWfixit@pnw.edu.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Schedule Revisions', 4, 
'For the most current information, please view the Academic Regulations on our Academic Catalog.\n\nhttps://catalog.pnw.edu/\n\n
Adding Courses\n
Students may add courses during the first four weeks of the semester by submitting a completed drop/add card to the Office of the Registrar. The signatures of both the academic advisor and instructor of the class being added are required during the second, third, and fourth weeks of the semester.\n\nStudent Athletes must contact the Athletic Department in order to process changes to their semester schedule.Signatures are required for these changes.\n\nWeek 1: No approval required.\n\nWeek 2 - 4: Approval of academic advisor and instructor.\n\nWeek 5 - 9: Extenuating circumstances only.Approval of academic advisor, instructor and head of the department in which the course is listed.\n\nWeek 10 - 16: Not permitted.\n\n
Dropping courses\n
Students may withdraw from courses by submitting a drop/add card to the Office of the Registrar.\n\nThe time period in which a student withdraws from a course determines the recording of the course on the student’s transcript.The following guidelines apply to the sixteen week Fall and Spring semesters only.Accelerated term and Summer term refund schedules are calculated based upon a modified schedule.\n\nWeek 1 - 2: No grade recorded on academic record\n\nWeek 3 - 12: W grade recorded on academic record\n\nWeek 13 - 16: No withdrawals are allowed*\n\n*Exceptions.Exceptions to the preceding regulations for registration, schedule revision, and cancellation of assignment may be made for courses that do not span the regular semester or summer session\n\nSchedule revisions are completed only after they have been processed in the Office of the Registrar.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Scholastic Deficiency', 4, 
'For the most current information, please view the Academic Regulations on our Academic Catalog.\n\nhttps://catalog.pnw.edu/\n\n
Academic Probation and Deficiency = 2.0 Good to Go\n
A student at Purdue University shall be placed on academic probation if his/ her fall or spring semester or cumulative GPA at the end of any fall or spring semester is less than a 2.0.\n\nA student on academic probation shall be removed from that standing at the end of the first subsequent fall or spring semester in which he / she achieves semester and cumulative GPAs equal to or greater than 2.0.Any grade change due to a reporting error will result in a recalculation of the GPA and determination of probation standing.Academic standing will not be assessed in summer sessions.\n\nA student on academic probation shall be dropped from the University at the close of any fall or spring semester in which his / her semester and cumulative GPA is less than a 2.0.Any grade change due to a reporting error will result in a recalculation of the index and determination of drop status.\n\nWhen academically dropped a student is required to sit out one regular semester.If dropped more than once, a student is required to sit out at least one calendar year.After completing the required sit out period, a student may petition for readmission to the Purdue campus he or she wishes to attend.A fee is assessed for processing the readmission application.\n\nReadmission is not guaranteed, but any student who gains readmission is readmitted on probation and is subject to stipulations in effect as a condition of readmission.Purdue students requesting readmission must complete an online readmission application through our website at www.pnw.edu/admissions-financial-aid/undergraduate/how-to-apply/.
');

INSERT INTO PNW_HANDBOOK (Name, Section, Information)
VALUES ('Student Conduct, Discipline, & Appeals', 4, 
'Purdue University Northwest’s policies on Student Conduct, Disciplinary Proceedings and Appeals can be found on the Office of the Dean of Students website.\n\nhttps://www.pnw.edu/dean-of-students/policies/code-of-conduct/\n\nhttps://www.pnw.edu/dean-of-students/
');

