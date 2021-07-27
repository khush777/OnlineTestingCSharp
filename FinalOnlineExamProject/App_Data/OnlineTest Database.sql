create database OnlineExam
use OnlineExam

-- Members:
create table oe_Students
( sid  int primary key,
  uname varchar(10) unique,
  pwd   varchar(10) not null,
  fullsname varchar(50) not null,
  email    varchar(50) not null unique,
  dlv      datetime,
  dr       datetime
)

insert into oe_Students
  values(1,'BJY','bjy','Babita J Yadav','yadbabita@gmail.com',null,getdate())  

select * from oe_Students

-- Subjects
create table oe_subjects
( subid  int primary key,
  subname varchar(20) unique,
  noq   int
);

insert into oe_subjects 
 values(1,'Software Testing',5)

insert into oe_subjects 
 values(2,'UML',5)
 
insert into oe_subjects 
 values(3,'XML',5)
 delete from oe_subjects where subname = 'XML';
 
insert into oe_subjects 
 values(4,'ASP.NET',5)
 
 insert into oe_subjects 
 values(5,'C#',5)
 
 insert into oe_subjects 
 values(6,'ADO.NET',5)
 
  insert into oe_subjects 
 values(7,'JAVA',5)
 
 SELECT * FROM oe_subjects 

-- Questions
create table oe_questions
( qid  int primary key,
  question varchar(2000) not null,
  ans1   varchar(1000) not null,
  ans2   varchar(1000) not null,
  ans3   varchar(1000) not null,
  ans4   varchar(1000) not null,
  cans   char(1) not null,
  subid int references oe_subjects(subid)
 )
 
 -- SOFTWARE TESTING Questions:
 
 
    insert into OE_QUESTIONS values (1001,
  'Which of the following is a quality control activity?',
  'Quality audit ',
  'Tools selection',
  'Training',
  'Inspection',
  '4',1);
 
     insert into OE_QUESTIONS values (1002,
  'Which of the  following statistical tools can be used to represent a very large amount of data in simple chart form?',
  'Cause and Effect Diagram',
  'Histogram',
  'Pareto chart',
  'Control chart',
  '2',1);
 
     insert into OE_QUESTIONS values (1003,
  'Which of the following statistical tool is used to identity the causes of a problem?',
'Scatter plot',
'Cause and effect Diagram',
'Pareto chart',
'Run chart',
  '2',1);
  
       insert into OE_QUESTIONS values (1004,
  'Which risk can occur if a software application is released in the market before it is compete?',
'Business risk',
'Software risk',
'Premature release risk',
'Company risk',
  '3',1);
  
  
 insert into OE_QUESTIONS values (1005,
  'Statement A: An effect singnifies the underlying reason for the statement of condition.
  Statement B: A cause singnifies the sercurity of a statement condition.',
  'Both the statements A and B are true',
'Both the statements A and B are false',
'Statement A is true and Statement B is false',
'Statemet A is false and Statement B is true',
  '2',1);
  
  
  
  
--UML Questions:
 
 insert into OE_QUESTIONS values (2001,
  'Which of the following diagrams depicts the various processing devices on which the components of a software system execute?',
  'Package diagram',
  'Component diagram',
  'Deployment diagram',
  'Interaction Overview diagram',
  '3',2);
  
   insert into OE_QUESTIONS values (2002,
  'Which of the following patterns enables you to create separate objects for displaying the information in various forms?',
  'Observer',
  'Command',
  'Structural',
  'Creational',
  '1',2);


   insert into OE_QUESTIONS values (2003,
  'Which design pattern option allows you to create and manage the lifecycle of the objects?',
  'Creation ',
  'Structural',
  'Behavioral',
  'Singleton',
  '1',2);
 
 
    insert into OE_QUESTIONS values (2004,
  'Which structural pattern type provides the interface for simplifying software development?',
  'Composite',
  'Proxy',
  'Decorator',
  'Facade',
  '4',2);
  
    
    insert into OE_QUESTIONS values (2005,
  'Which of the following quality aspects refers to the quality of visual representation of the artifacts,diagrams,and models?',
  'Quality of Visualization',
  'Quality of Specification',
  'Quality of Construction',
  'Quality of Documentation',
  '1',2);
  
 
 
 
--ASP.NET Questions:
 
 insert into OE_QUESTIONS values (4001,
  'How do you make namespace available to ASP.NET page?',
  'imports statement',
  'import directive',
  'using directive',
  'None of the above',
  '2',4);

insert into OE_QUESTIONS values (4002,
   'Which method ends session',
   'session.end',
   'response.end',
   'session.abandon',
   'request.end',
   '3',4);

insert into OE_QUESTIONS values (4003,   'How do you execute a page and return control to calling page', 
   'server.transfer',
   'request.execute',
   'server.execute',
   'response.redirect',
   '3',4);

insert into OE_QUESTIONS values (4004,
   'What is a persistent cookie?',
   'One that is stored on the client even after session ended',
   'One that is stored on the server',
   'One that is stored both on server and client',
   'One whose value cannot be changed',
   '1',4);


insert into OE_QUESTIONS values (4005,
    'If a query returns only one value then which of the following is an appropriate method of SQLCommand?',
    'Execute',
    'ExecuteReader',
    'ExecuteScalar',
    'ExecuteValue',
    '3',4);

insert into OE_QUESTIONS values (4006,
     'Which command is used to send a cookie to client',
     'response.cookies.add',
     'cookies.add',
     'server.writecookie',
     'response..addcookie',
     '1',4);

insert into OE_QUESTIONS values (4007,
     'Which of the following is a property of  server object',
     'sessiontimeout',
     'scripttimeout',
     'variables',
     'iscookieless',
     '1',4);

insert into OE_QUESTIONS values (4008,
    'WSDL stands for',  
    'Webservice description langauge',
    'Webserver Data Language',
    'Web developer langaugae',
    'Webservice developers language',
1,4);


insert into OE_QUESTIONS values (4009,
    'Which property specifies primary key for Datagrid?',
    'primarykey',
    'datafieldkey',
    'datakey',
    'indexkey',
    2,4);

insert into OE_QUESTIONS values (4010,
      'Which property can be used to identify the first request of the client',
      'request.IsNewSession',
      'request.NewSession',
      'request.IsFirstRequest',
      'request.IsNew',
    1,4);

insert into OE_QUESTIONS values (4011,
      'How do you write Http headers to Client?',
      'response.WriteHeader',
      'response.AddHeader',
      'response.AppendHeader',
      'response.add',
    3,4);


   --C#
   
   insert into OE_QUESTIONS values (5001,
      'Consider the following statements:
Statement A: A record in a data file contains only one field.
Statement B: A field has two components, field name and field content.
Which of the following is true for the above statements?',
      'Statement A is True and Statement B is False.',
      'Statement A is False and Statement B is True.',
      'Both Statements A and B are true.',
      'Both Statements A and B are false.',
    2,5); 
    
  
     insert into OE_QUESTIONS values (5002,
      'James has prepared Sales Analysis report, analysisnorth for the north region of the company. A similar report for the south region of the company has to be prepared. This report should have the same format as that of analysisnorth. What is best way to retain the same format as that of analysisnorth?',
      'Using Smart Tag',
      'Using Style and Formatting Task Pane',
      'Using Auto Republish',
      'Using Office Document Imaging Tool',
    1,5); 
    
      
         insert into OE_QUESTIONS values (5003,
      'Sam has created an annual Sales Report. He wants to translate the entire document to French. What are the sequence of steps he need to follow to translate the document to French?',
      'Step1: Select the Language command in the Tools menu.
Step2:Click the Entire Document Radio button in the Translate section.
Step3: Select the English (US) to French(France) option from the drop down list of the Dictionary list box.
Step4: Click the Go button.
Step5: Double click the correct translated word and click the Replace button.',

      'Step1: Select the Language command in the Tools menu.
Step2: Click the Entire Document Radio button in the Translate section.
Step3: Select the English(US)to French(France) option from the drop down list of the Dictionary list box.
Step4: Double click the correct translated word.
Step5: Click the Replace button.',

      'Step1: Click the Entire Document Radio button in the Translate section.
Step2: Click the Go button.
Step3: Select the Translate command from the Language submenu.
Step4: Select the English (US) to French(France) option from the drop down list of the Dictionary list box.
Step5: Double click the correct translated word and click the Replace button.',

      'Step1: Select the Language command in the Tools menu.
Step2: Select the Translate command from the Language submenu.
Step3: Click the Entire Document Radio button in the Translate section.
Step4: Select the English(US) to French(France) option from the drop down list of the Dictionary list box.
Step5: Click the Go button.',
    1,5); 

   insert into OE_QUESTIONS values (5004,
      'Stephanie has created a word document, projectdetails. This document contain the details of the project completed by each team in the organization. She has also published this document on the web. This has considerably increased the file size. What should Stephanie do to reduce the file size?',
      'Use Data Connection Wizard',
      'Save Document as Filtered Web Page',
      'Use picture compression',
      'Use auto Republish',
    2,5); 
    
       insert into OE_QUESTIONS values (5005,
      'Henry wants to send a document standards.doc to all the employees in the organization. He wants to add his handwritten signature to this document. Which tool should he use to send the document with handwritten signature?',
      'Writing Pad',
      'Drawing Pad',
      'Write Anywhere',
      'Drawing Canvas',
    2,5); 
    
       insert into OE_QUESTIONS values (5006,
      'Goodwill electronics maintains a document "items", which stores the items available at a given period. A logo of the company has to be added to the background of this document. The background should also appear when the document is printed. Which feature should be used to add the logo to the background of the document?',
      'Photo Album',
      'Drawing Canvas',
      'Water Mark',
      'Drawing Pad',
    3,5);

--ADO.NET
insert into OE_QUESTIONS values (6001,
      'Which component of a data provider is used to transfer data to and from a database?',
      'Connection',
      'Command',
      'DataReader',
      'DataAdapte',
    4,6);
    
    
insert into OE_QUESTIONS values (6002,
      'John has to create a windows based application in which the details of the employees of his organization needs to be stored in the Employees table present in the HR database. To access this database, he needs to connect to a server, MyServ01. Which parameter value of the connection string will hold the name MyServ01?',
      'Provider',
      'Initial Catalog',
	'Data Source',
	'User ID',
    4,6);
    
 insert into OE_QUESTIONS values (6003,
      'The following code snippet is part of a code that is used for working with BLOB data:
SqlDataReader myReader = command.ExecuteReader(X);
What is X in the preceding code?',
	'CommandType.Text',
	'CommandType.StoredProcedure',
	'CommandBehavior.SequentialAccess',
	'CommandBehavior.CloseConnection',
    2,6);
    
            
    insert into OE_QUESTIONS values (6004,
      'WJohn has written a code to retrieve the id of all the employees in his organization. On execution, it takes some time to retrieve all the employee ids from the database because there are many entries in the database. Which member of the ConnectionState enumeration is active during this point of time?',
		'Connecting',
	'Executing',
	'Fetching',
	'Open',
1,6);


    insert into OE_QUESTIONS values (6005,
     'Peter has developed an application in which he tries to display the Employee ids of all his employees in his organization. He has used the DBDataReader object to read the employee ids from the table. Which method of the DbDataReader object would enable him to move to the next record from the result set?',
	'GetType()',
	'Read()',
	'RefereneceEquals()',
	'Equals()',
    2,6);
       
  insert into OE_QUESTIONS values (6006,
     'ABC university that offers a wide range of courses. A student can enroll for more than one course. The details relating to the students are stored in a centralized database system. The table, Student, contains all the details of all the students. Another table, StudentCourses, contains the information relating to what all courses have been opted by each student. As a part of the development team, John is assigned a task to implement relationship between these two tables on the field Student_id which is common in the two tables. Moreover, he also needs to keep track of a situation in which if the parent table, Student, is being updated then the same changes are reflected back in the child table, StudentCourses. To accomplish this task, he has written the following lines of code:

1. ForeignKeyConstraint fkc;
2. DataColumn StudentID1, StudentID2;
3. StudentID1 = DataSet1.Tables["Student"].Columns["StudentId"];
4. StudentID2 = DataSet1.Tables["StudentCourses"].Columns["StudentId"];
5. fkc = new ForeignKeyConstraint(StudentFK,StudentID1, StudentID2);
6. fkc.UpdateRule = Rule.Cascade;

Identify whether the preceding code will give the desired output or not.',
	'Line 5 is syntactically incorrect. The correct syntax is as follows:

	fkc = new ForeignKeyConstraint("StudentFK",StudentIDStudentID2);',

	'Line 6 is syntactically incorrect. The correct syntax is as follows:

	DataSet1.UpdateRule = Rule.Cascade;',

	'The code will execute but will not set the relationship among the two given tables.',

	'The code will give the desired output',
    1,6);
         


--JAVA
 insert into OE_QUESTIONS values (7001,
     
'You are developing a job site using Java EE. You have been assigned the task of creating EJBs for the application. Which of the following tasks do you need to perform for creating the EJBs?',
	'Coding the business logic using Session beans, Entity beans, and Message driven beans.',
	'Coding the business logic using Session beans, Entity beans, and Message driven beans as well as the ejb container in which the EJBs will be run.',
	'Coding the business logic using Session beans, Entity beans, and Message driven beans as well as the web container that will access the EJBs.',
	'Coding the business logic using Session beans, Entity beans, and Message driven beans as well as the applet container that will access the EJBs.',
    2,7);
    
   insert into OE_QUESTIONS values (7002,
     
'Sam is developing a Job Basket functionality, which will allow the registered users to store their searched jobs in one place till the client session is on. To implement this functionality he creates a session bean class namely the JobBasketBean, which will implement the local and remote interfaces namely JobBasketLocal and JobBasketRemote respectively. The remote interface has methods to add and remove jobs while the local interface has methods to find jobs. Observe the following code used for JobBasketBean class?

@Stateful
public class JobBasketBean implements JobBasketRemote, JobBasketLocal {
public boolean addJob(int jobId){ //code to add the job to the basket }
public boolean removeJob(int jobId){ //code to remove job from the basket}
public int findJob(int jobId){ //code to find the index of the job in the basket. }
}

Identify the output of the preceding code.',
	'The code will give a compile-time error, as you cannot implement two interfaces.',
	'The code will give a runtime error as two beans should have been created to implement each interface.',
	'The code will successfully create a stateful session bean.',
	'The code will successfully create a stateless session bean.',
2,7);

    insert into OE_QUESTIONS values (7003,
     
'Which of the following options instructs the persistence provider to defer the loading of the association target to the time association target is accessed?',
	'EAGER',
	'LAZY',
	'MERGE',
	'PERSIST',
3,7);
    insert into OE_QUESTIONS values (7004,
'Iidentify the state of an entity bean, where the database row and the entity bean data row is synchornized?',
	'New',
	'Managed',
	'Detached',
	'Removed',
   2,7);
   
   insert into OE_QUESTIONS values (7005,
     
'Simon has been assigned the task of implementing the registration module of an e-shopping site. To meet this requirement he has created two tables, USERS table to store the user related data and PERSON table to store their personal data. USER_ID and PERSON_ID are the respective primary keys for USERS and PERSON tables. Additionally, the USERS table also has a foreign key column for PERSON_ID. As per the design, one person can have more than one user accounts but one user account cannot be attached to more than one person. In such a case, which of the following options will you use to define cardinality in UserEntityBean entity class between USER and PERSON.',
	'@ManyToOne
	private PersonEntityBean person;',

	'@JoinColumn(name = "PERSON_ID", referencedColumn= "PERSON_ID")
	@ManyToOne
	private PersonEntityBean person;',

	'@JoinColumn(name = "PERSON_ID", referencedColumnName = "PERSON_ID")
	@ManyToOne(fetch=FetchType.EAGER)
	private PersonEntityBean person;',

	'@JoinColumn(name = "PERSON_ID", referencedColumn= "PERSON_ID")
	@ManyToOne(fetch=LAZY)
	private PersonEntityBean person;',
3,7);


    insert into OE_QUESTIONS values (7006,
     'Which of the following options defines the strategy which when used eliminates the requirement to annotate the root class with the Inheritance annotation?',
	'Table per class',
	'Single table per hierarchy',
	'strategy attribute of the Inheritance annotation',
	'Joined subclass',
	    2,7);
    
   
         

SELECT * FROM oe_questions

      
  -- Exams
  create table oe_exams
( examid  int primary key,
  sid    int references oe_Students(sid),
  subid  int references oe_subjects(subid),
  noq     int,
  nocans  int,
  stdate  datetime,
  enddate datetime
);  

