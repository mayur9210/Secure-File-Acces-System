
INTRODUCTION
1.1	Objective

The main aim of the project is to provide the user with secured file access system. Files are stored on cloud with security keys and user can download files from cloud to the destination mobile using internet services. When file is downloaded message is sent to user from cloud.

Some features of this application
•	Prevents unauthorized access.
•	Uploading files on cloud with security keys enables greater security.
•	User can download files while is on way or on work using mobile.
•	Allow group of registered users to communicate through mails and share the data.

1.2	Chapter wise summary
              The rest of this report is organized into ten chapters. First chapter talks about the introduction. In chapter two the Existing System, Proposed Systems and the Technologies used in this project are explained. Third chapter explains about the problem statements and feasibility study. In chapter four we discuss the requirements. The system design  is explained in chapter 5.  The description of the project, functional block diagram, activity flow diagrams are explained in chapter 6. In chapter seven the whole implementation is explained. Chapter eight contains the testing part. Next we explain the advantages and disadvantages of this application and shows the future enhancement of this application. And the lastly conclusion, references and snapshots are showed.
1.3	Scope of the project
	The scope of this project is to provide a Privacy and secured environment for file access only for registered users.  In our project, we use resources, namely registration forms for registering users which is required for authentication process for file downloading.  
1.4 	Goals of the project
       MBSFAS provides an easy way to download files between the server and client. The main goal of our project is to ensure better and secured file access within the cloud using security keys only for registered user. In today world all of them use smart phones the use of the SMS is pretty common so that it is little bit easy to implement on the phones. It is Easy to use, only user has to send filename and security keys associated with file through SMS.The advantage is that the mobile user need not require the system within him to download file from cloud.The first step is general user has to register himself to admin and then user can use user_id and password for login. Once he login he has authority to access file from cloud. The main objective is to provide a application that enables mobile based secured file access system which allow user to download files from cloud by sending message. 

1.5	  Significance of the project 
Since mobile phone is in use, this application is more thoroughly & efficiently used. 

1.5.1	 User-friendly 
Since in our application mobile phone has greater role and since it is user friendly and pretty common among user’s it is easy for user to access files just by sending message to cloud specifying filename and security keys associated with file. After  file is downloaded user gets conformation message from server. 
1.5.2	 Authentication 
Since user is provided with registration form initially by filling the form he will acquire user_id and password which is required for authentication or login in future. By this way the application provides safety and security avoiding malicious access by other users which is greater concern now day’s. 


1.5.3	 Communication
Since our application provides mailing services it allows group of registered users to communicate through mails and allow them to share their ideas, views and data which makes the application more friendly and popular globally.
1.5.4	 Accurate 
With the help of registration, login and security keys, The accuracy of achieving secured environment for file access can be achieved through proper authentication and validation.
1.5.5	 Accessible 
This application is ideal since mobile is pretty common in use Now days and user wants easy to access media. He can use this application to download files while system is present in other location using mobile phone. 













CHAPTER 2
LITERATURE SURVEY

2.1	 	Current problem statement
The present process of accessing files from server does not require any authentication or checking for valid user. 
Some of drawbacks are as follows:
•	Hacker can get access to server and upload false document.
•	No authentication or validation is provided for checking users.
•	Time delay is more when request for same document is more.
•	Requires system within him to access files from server.
All these drawbacks can be overcome by authenticating the user and providing him with Identity. 
2.2	 Existing system
In the present system there is no facility of downloading files from sever by just sending message through mobile phones. In the existing system there is less security to access files or store files on cloud.
2.3	 Proposed system
This comes into handy when somebody wants to store some important files on cloud and allow only some users to get access to those files.
The main intention of our application is to provide a means of security to files by providing security keys to files when uploaded on cloud. The registered user only has to send filename and security keys through SMS.
The MBSFAS is a technique for web retrieval from cloud using security keys only for the users who are registered with the admin .Now days providing security to files on cloud is of great concern due to Intruders. our project, we provide users with registration forms on filling the form the user will get user_Id and password. Next time the user can login using both ingredients.
 Once he gets logged in he has following privileges: 
•	To download files from cloud
•	Send mails to admin and other registered users.
•	He can change his own login password.
The users to download files first he has to send mail for admin requesting for security key of file.  Admin then first check whether the requested user is valid or not if he is valid then it sends security key of file requested by user through mail. Once the user receives security keys he has to send filename and security key associated with it through SMS. Once the SMS is received by server the file is downloaded to the location specified by user and confirmation message of file downloaded is sent to user mobile from server.













CHAPTER 3
PROBLEM STATEMENTS AND FEASIBILITY STUDY
3.1		Problem statements

Scenario 1:
          Consider a situation where in user want to store files on cloud and want to allow only some of the registered users to access that file to ensure security for files, means to prevent unauthorized access.
Scenario 2:
There may be a situation wherein user wants to store data on central database and allow general users to download that data by going through some authentication and validation process and want to make use of extra resource like SMS technology for client-server architecture which is allowed in our application.
Scenario 3:
There may be situation wherein user wants to create a separate group of registered users by providing some registration forms and allow users to communicate to each other through mails and share their ideas which is possible in our application.
Scenario 4:
	There may be situation where government wants to store some important data on cloud like unique information of each citizen and want to use that information for validation or checking for valid users for getting services of government anywhere in the nation.

3.2	Feasibility study
All projects are feasible if they have unlimited resources and infinite time. But the development of software is plugged by the scarcity of the resources and difficult delivery rates. It is necessary and prudent to evaluate the feasibility of the project at the earliest possible time. The three considerations are involved in the feasibility analysis.
3.2.1 Economic feasibility
This procedure is to determine the benefits and savings that are expected from a candidate system and compare with cost. If benefits outweigh cost then the decision is made to design and implement the system.
Otherwise further justification or alteration in proposed system that has to be made if it is having a change of being approved. This is an ongoing effort that improves in accuracy of each phase of the system life cycle. For our project we are not expecting any feasibility costs spent on this on this project because here we are using open source environment.
3.2.2 Technical feasibility
Technical feasibility centers on the existing mobile system (hardware, software, etc) and to what extent it can support the proposed addition if the budget is a serious constraint, then the project is judged not feasible. The technical feasibility is important in our project because we are using Mobile phone.
3.2.3 Operational feasibility
Peoples are inherently resistant to change, and mobiles have been known to facilitate change. In our project the technical people require to configure the software and technical background is necessary.

3.3 SYSTEM REQUIREMENTS 

3.3.1 Functional requirements.
	 In order to establish the connection between the client and server we need to enable the Internet connection in both sides. If the synchronization exists between the both, client will send filename and security key through SMS to sever. The file is then downloaded to the client machine from server and confirmation message is sent to client.




3.3.2 Nonfunctional requirements.
     	It is portable as user can be made to send SMS while he is on the way or work which ensures better compatibility.  It is scalable as we can use it as per user requirements that is it can be implemented on networks.

3.3.3 Software Tools
•	Windows 7/XP as operating system.
•	Netbeans 6.0.1 
•	JDK1.3
•	Com port

3.3.4	 Hardware Tools
•	Intel processor
•	RAM-2GB
•	HDD-40GB
•	Internet connection
•	 Mobile phone.












CHAPTER 4
SYSTEM DESIGN

4.1 Class diagram:











Figure 4.1-class diagram






System architecture:

   
Figure 4.2-system architecture

4.2 Water fall model
 The figure 4.3 shows the Water fall model which is step by step designing process, often used in software development process. The designing process follows the steps as shown in the figure below. It have the six phases namely, Requirements definition, system and software design, implementation and unit testing, integration and system testing and operation and maintenance.
                   
Figure 4.3- Water fall model

This module contains five stages those are: 

4.2.1 Requirements
The hardware requirements are Netbeans, Jdk, and processor.
Netbeans is an open-source community that develops open platforms and products.
Jdk: The Android SDK includes a mobile device emulator — a virtual mobile                         device that runs on your computer.
   "JDK” usually refers to the Java development kit (JDK).
4.2.2 System and software design
	 Here we can divide whole projects into 2 modules they are Admin and general user.
System services: The system provides the following functions to the users
•	The system will provide registration form for general user who wants to get register to admin.
•	The system provides the option of sending automatically at regular interval of time or he/she may send location information whenever the user wants.
•	The system provides the option for changing the designate numbers; entering the new contact to phonebook who wants his/her location information and we can set the time at which the message has to be sending the destination.
4.2.3 Implementation
After specifying these modules we represent module by using the                                                   JDK. In this stage we are designing the code using Netbeans software and in order to test the units we are compiling with java complier.
In this stage we are integrating the modules such as Registration form, Login, admin uploading files, and registered user downloading files by sending SMS. After integrating each module we will repeat the compiler process using the java compiler.
4.2.4 Integration and Verification
We integrate the modules in the form of sequential manner, means implement the Registration module, after registration Login module, Admin module and registered user module.
4.2.5 Maintenance
 This is important stage for this project. Using the authentication priorities we can maintain the projects, means giving the passwords we can maintain this project.
 Maintains involves correcting errors which were not discovered in earlier stages of the life cycle, improving the implementation of system unit.
•	The system provides the option for registered user for sending mail to Admin in request of security keys of the file which registered user want to download form cloud.
•	The system provides the option for changing the Admin and general users Login passwords, the new password is updated in the Database.







 4.3 Usecase diagram
		A use case diagram in the unified modeling language is a type of behavioral diagram defined by and created from a Use-case analysis. Its purpose is to present a graphical overview of the functionality provided by a system in terms of actors, their goals (represented as use cases), and any dependencies between those use cases. 



                                                                                                                 





                                          





Figure 4.4- Usecase diagram


 
4.4	 ER diagram

4.5	 Sequence diagram
Sequence diagrams shows the sequence of how the actions are called and how the data flow are made between different interfaces, handlers and data sources of each use case described above. 
     


HJJJ
Figure 4.6- Sequence diagram

4.6 Flow chart:

The following diagram shows the control flow of the Human Tracking system.





		

			





			

		
	






                                                   Figure 4.7- Flow chart diagram
CHAPTER 5

IMPLEMENTATION
5.1 Technologies used
Below are the tools and Technologies we used to develop this Project. Development tools used are Netbeans 6.0.1, jdbc,odbc and jdk1.3.  And the Technology used is Java to develop the android applications Android APIs of android are used.
5.1.1 Netbeans
 Most people know Netbeans as an integrated development environment (IDE) for Java. Netbeans is created by an open source community and is used in several different areas, e.g. as IDE for Java or as a platform to develop Java applications, etc. The usage of Eclipse as a Java development environment will be described in next chapter.
5.1.2 JDK1.3
Android is a software stack for mobile devices that includes an operating system, middleware and key applications. The Android SDK provides the tools and APIs necessary to begin developing applications on the Android platform using the Java programming language. The details of this platform will be discussed in the next chapters.
5.1.3 ODBC
Microsoft Open Database Connectivity (ODBC) is a standard programming interface for application developers and database systems providers. Before ODBC became a de facto standard for Windows programs to interface with database systems, programmers had to use proprietary languages for each database they wanted to connect to. Now, ODBC has made the choice of the database system almost irrelevant from a coding perspective, which is as it should be. Application developers have much more important things to worry about than the syntax that is needed to port their program from one database to another when business needs suddenly change. 
Through the ODBC Administrator in Control Panel, you can specify the particular database that is associated with a data source that an ODBC application program is written to use. Think of an ODBC data source as a door with a name on it. Each door will lead you to a particular database.

5.1.4 JDBC
In an effort to set an independent database standard API for Java; Sun Microsystems developed Java Database Connectivity, or JDBC. JDBC offers a generic SQL database access mechanism that provides a consistent interface to a variety of RDBMSs. This consistent interface is achieved through the use of “plug-in” database connectivity modules, or drivers. If a database vendor wishes to have JDBC support, he or she must provide the driver for each platform that the database and Java run on. 

5.2 Modular description
5.2.1 Admin
In this section we discuss the services provided by the admin to general user. First he provides registration form to general user for registering user, upload files on cloud with security keys, can change his login password, delete files from cloud, check for valid user, and send security keys to requested user through mails and can delete the registered user as and when he want. 

5.2.2 General user
	General user has to first register himself to admin to get User_Id and password. once he get registered he can download files from cloud. Only he has to send File_Id and security key associated with file through SMS to Admin. The Admin then checks whether he is valid user or not if he is valid user then file is downloaded to user system and confirmation message is also sent. Registered user can change his own Login password and set new password for his Login.
									
5.2.3 Login
The Admin and user can login using Id and password. Separate menu page is opened for Admin and Registered user. For Admin he has option for register ,upload files and change password. Similarly for Registered user he has option to download file, send mails to other registered user, and change password. 

5.2.4 Mail:
The Registered and Admin user can send mails to other registered users and share their Ideas when logged in with Id and password.

5.2.5 Change password:
The Admin and Registered users can change their original login password to new one through this module. 

5.2.6 List of names:
The registered user can check the list of names of other registered users through this module.

5.2.7 File Upload details:
When Admin upload the new file on cloud he updates the file assignment table with new File_Id, filename and security keys of uploaded file for further references.

5.2.8 File details:
The Registered user after Login can see the list of files available in cloud to download Uploaded by the Admin before. 

5.2.9 Upload text and Upload images:
Admin can upload text files and Image files on cloud using both this module.

5.2.10 Delete:
The Admin can delete uploaded files and correspondingly update the database with the immediate change using this module.

5.2.11 Inbox:
The Admin and registered users can check their mailbox wheither they have received any mails from other respective users.

5.2.12 Download:
The registered users can use this module to download files from cloud by running this module and parallel sending filename and security key through SMS to server.

















CHAPTER 6
TESTING
     The focus of our test strategy was primarily functional and end-to-end testing due to the limited development time frame, novelty of the platform and the sheer variety and number of components involved. The Android SDK provides a set of integrated development and testing tools that include a built in emulator, debugger, logger, and device drivers that allow running applications on an Android phone.

6.1 Types of software testing
6.1.1 Black box testing
Internal system design is not considered in this type of testing. Tests are     based on requirements and functionality.
6.1.2 White box testing 
This testing is based on knowledge of the internal logic of an application’s code. Also known as Glass box Testing. Internal software and code working should be known for this type of testing. Tests are based on coverage of code statements, branches, paths, conditions.
6.1.3 Unit testing
Testing of individual software components or modules. Typically done by the programmer and not by testers, as it requires detailed knowledge of the internal program design and code may require developing test drive modules or test harnesses.
6.1.4 Incremental integration tests
Bottom up approach for testing i.e. continuous testing of an application as new functionality is added, Application functionality and modules should be independent enough to test separately.

6.1.5 Integration tests
It is a testing of integrated modules to verify combined functionality after integration. Modules are typically code modules, individual applications, client and server applications on a network, etc. This type of testing is especially relevant to client/server and distributed systems.
6.1.6 Functional testing
This type of testing ignores the internal parts and focus on the output is as per requirement or not. Black-box type testing geared to functional requirements of an application.
6.1.7 System testing
Entire system is tested as per the requirements. Black-box type testing that is based on overall requirements specifications, covers all combined parts of a system.
6.1.8 End-to-end testing
Similar to system testing, involves testing of a complete application environment in a situation that mimics real-world use, such as interacting with a database, using network communications, or interacting with other hardware, applications, or systems if appropriate.
6.1.9 Acceptance testing
Normally this type of testing is done to verify if system meets the customer specified requirements. User or customer does this testing to determine whether to accept application.
6.1.10 Performance testing
This term is often used interchangeably with ’stress’ and ‘load’ testing. To check whether system meets the performance requirements. The different performance and load tools are used to do this.


6.1.11 Usability testing
User-friendliness check. Application flow is tested, Can new user understand the application easily, Proper help documented whenever user stuck at any point. Basically system navigation is checked in this testing.
6.1.12 Recovery testing
Testing how well a system recovers from crashes, hardware failures, or other catastrophic problems.
6.1.13 Security testing
Can system be penetrated by any hacking way? Testing how well the system protects against unauthorized internal or external access. Checked if the system database is safe from the external attacks or not.
6.1.14 Compatibility testing
Testing how well software performs in a particular hardware/software/operating system/network environment and different combination s of above.
6.1.15 Comparison testing
Comparison of product strengths and weaknesses with previous versions or other similar products.
6.1.16 Alpha testing
In house virtual user environment can be created for this type of testing. Testing is done at the end of development. Still minor design changes may be made as a result of such testing.



6.2 Testing and results

Case
Description
Result
01
Test for file download
1.	We tested for file download after sending SMS consisting of filename and security key to server, file was downloaded to destination and confirmation message of file download was sent to user mobile. 
02
Test for Invalid filename or security key
1.	We just provided with filename and wrong security key or vice-versa assumed by user through SMS.The result was Invalid file name or security key message was delivered to requested user mobile.
03
Test for sending mail 
1.	  We just provided user with mailing service. We tested the service by sending mails to other registered user and tested inbox of corresponding user. In both cases mails were delivered and received by respective user.


Table 6.1- Testing 




6.3 Unit testing

6.3.1 Sending SMS
•	On connecting mobile with recognized SIM to server all messages sent by users are        sent through that mobile to server.
•	The response or confirmation messages are directly sent from server to user mobile.

6.3.2 Registration
•	When new user fills the Registration form the data is stored in database and can be retrieved for further processing by admin.
•	Proper validation of registration form is done for all data fields so that whenever Invalid data is entered alert messages are displayed for correct format of data.

6.3.3 File upload
•	When Admin upload the file, the file is successfully uploaded on cloud.
•	If some problems occurs or Internet connection is low then if files are not uploaded then the database is not updated with the file upload failure.







CHAPTER 7
                                 SNAPSHOTS

7.1 REGISTRATION FORM FOR GENERAL USERS




7.2 LOGIN PAGE FOR REGISTERED USERS AND ADM






7.3 ADMIN PAGE AFTER LOGIN




7.4 PAGE FOR REGISTERED USER AFTER LOGIN




7.5 MAILBOX FOR ADMIN AND REGISTERED USERS



7.6 PAGE  FOR  CHANGING  PASSWORD FOR BOTH ADMIN AND REGISTERED USERS




7.7 LIST OF FILES AVAILABLE IN CLOUD FOR REGISTERED USERS TO DOWNLOAD






7.8 FILE UPLOADING PAGE FOR ADMIN





7.9 UPLOADING  FILE  DETAILS  IN DATABASE BY ADMIN







7.9 LIST OF REGISTERED USERS AVAILABLE FOR OTHER  REGISTERED USERS




 CHAPTER 8
          ADVANTAGES AND DISADVANTAGES
Advantages
¬	It improves security on cloud for web retrieval by ensuring proper authentication and providing security keys to uploaded files on cloud. 
¬	It prevents Un-authorized access by intruder to information stored on cloud by the admin.
¬	Enable a group of registered users to communicate through mails and share their Ideas. 
¬	User can download files just by sending SMS consisting of filename and security key and does not require system to be present within him. 
¬	Since now days mobile is common in use it makes easy to user Interface without any much difficulty.
Disadvantages
¬	SMS charge
The cost of the SMS we should need to pay.
¬	Connection Orientation
This application is highly dependent on internet connection and mobile network. Lacking any of the two, the application may become worthless as it cannot enable download and upload by user and admin.
¬	Platform orientation
Since this is developed as an android application, this application does not work in devices that are not android specific. Thus this application  may be of use to android users only.

CHAPTER 9
APPLICATIONS

¬	Central database
The information of each individual person present in the nation is collected by the government for security purpose, It can be stored in central database or cloud and  need to Register all the government offices to Admin so that whenever user wants to take services from government the proper information of user can be made available to lower government offices for checking for valid citizen and for security purpose.

¬	Business Management
In case of business The Company may want its employees to work at different places but it wants its entire business information to be stored in single place and made available to all other employees including employees working at different places in secured manner. In such case our application is better option.

¬	Bank management
Information of all accounter holders in all banks can be stored in cloud and automatized   common single transaction form for   all accounter holders can be provided avoiding multiple forms for transactions from all different banks.

¬	In Education field
In universities and colleges each individual student information like marks secured, extra circular activities participation can be stored in cloud maintained by university and made available to their parents avoiding parents coming to campus to judge his student’s progress and parents can track the students activities regularly.


CHAPTER 10
CONCLUSION
          
 This project ensure the security of cloud storage, we proposed an effective and secured system with explicit dynamic data support, including registration, login & password checking. Through detailed security and performance analysis, we show that our scheme is highly efficient and resilient to, malicious data modification attack, and even server colluding attack.


















CHAPTER 11
FUTURE ENHANCEMENT
With Security being main concern Nowadays MBFAS systems popping up in cell phones, watches, and shoes, there's no doubt that MBFAS applications are making their way into all walks of daily life.  Considering the increased popularity of MBFAS applications, what can we expect from the next generation of this MBFAS application?
¬	Increased Business Use
Even as businesses are rapidly turning to ensure better security and safety to help them with achieving secured operations, avoiding hacking and third party access, we can only expect the use of MBFAS systems to increase in the next few decades.  As technology continues to evolve, MBSFAS application may result in increase in accuracy, and be utilized by even more businesses as a common, yet powerful tool.

¬	Providing web interface
We can attach this to the web interface and instead of sending filename and security through the SMS we can send it through the email.

¬	Controlling application from both the end users
Currently the application is controlled by only by one end user that is Admin, we can extend it to controlling from other end users that is Registered users by providing the application in such a way that Uploading files and downloading files is enabled at both side by Admin and Registered users.






CHAPTER 14
REFRENCES

[1]	Times Connection. Introduction to Web Application:
[2]	http://cs.now.cn/html/FAQ/VHost/2008 10/10-3088.html 
[3]	Thomas Riisgaard Hansen, J. Mikael Eklund, Jonthan Sprinkle, Ruzena Bajcsy, and Shankar Sastry.
[4]	Liberatori.M. Otero.F., Bonadero.J.C. and Castineira.J. “AES-128 Cipher. High Speed, Low Cost FPGA Implementation”, IEEE Conf. Southern Programmable Logic(SPL),vol.04,issue.07,pp.195-198,Jun. 2007
[5]	Shibu K V, “Introduction to Embedded Systems”, Tata McGraw Hill.
[6]	http://www.pointbase.com
[7]	http://www.KeepMedia.com
[8]	http://www.BambooWeb.com
[9]	http://www.haris.cise.ufl.edu 
[10]	http://www.pcmag.com







