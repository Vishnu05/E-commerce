# E-commerce

 


E-commerce website 
Technology used:
Frontend- HTML, CSS, BOOTSTRAP, Ajax.
Middle ware- java, Spring mvc, Hibernate.
Backend- H2 database.
Versions used:
Java version 1.8.0_91
maven version 3.5.0
Eclipse Neon
Tomcat 8.5

HTML-Hypertext Markup Language is the standard markup language for creating web pages and web applications.
CSS-Cascading Style Sheets is a style sheet language used for describing the presentation of a document written in a markup language.
BOOTSTRAP-Bootstrap is a free and open source front-end web framework for designing websites and web applications.
ADVANTAGES 
•	Easy to use
•	Responsive 
•	Browser compatibility
SPRING FRAMEWORK
In Spring Web MVC, DispatcherServlet class works as the front controller. It is responsible to manage the flow of the spring mvc application.
 And it is loosely coupled. 
HIBERNATE
Hibernate framework simplifies the development of java application to interact with the database. Hibernate is an open source, lightweight, ORM (Object Relational Mapping) tool.
H2 DATABASE
H2 is a relational database management system written in Java. It can be embedded in Java applications or run in the client-server mode.
Basic operations: 
Admin operation:	Admin have seperate username password and can manage(edit, add, list, delete) the categories, suppliers details, and products.
User:	User can register as new user or can login using exist usrname and password. can see products and buy it.
Spring Security:	is a powerful and highly customizable authentication and access-control framework.
Add to cart:	products which are given as addtocart, does added to the user cart list
Webflow:	Spring Web Flow (SWF) is a component of the Spring Framework's web stack focused on the definition and execution of user interface (UI) flow within a web application. It is a module that allows you to make logical flows of your web application.
Multipart	Images upload feature using bytestream



Maven: 
	It is a project management tool. Maven addresses two aspects of building software: 
first, it describes how software is built, and second, it describes its dependencies management
It dynamically download java libraries and stores it in local cache
Spring MVC flow


 

Model encapsulates the data related logic and it consist of POJO.
View is responsible for User interface logics, rendering the model data with webpage and generate output to the client browser to view page
Controller process all business logic and handles responses and request between model & view

•	The flow starts from,  when the client gives a request via url
•	Dispatcher servlet which is called as front controller, receive the http request
•	Using Handler Mapping, and call the appropriate controller associated with request
•	Controller process the request by calling  service methods and return ModelAndView 
•	ModelAndView object contains model data and view page name to dispatcher servlet
•	With ViewResolver the prefix and suffix properties of viewpage appended to page name
•	And With View interface renders the object to webpage
•	Finally dispatcher servlet sent the view page to User


List of jars used and its versions:
    spring-core: 4.3.5.RELEASE
    spring-context:4.3.5.RELEASE
    spring-webmvc:4.3.5.RELEASE
    jstl:1.2
    javax.servlet-api:3.1.0
    junit:3.8.1[test]
    h2:1.4.193
    hibernate-core:5.2.5.Final
    hibernate-jpa-2.1-api:1.0.0.Final
    spring-orm:4.3.3.RELEASE
    spring-web:4.3.5.RELEASE
    validation-api:1.1.0.Final
    hibernate-validator:5.3.4.Final
    spring-beans:4.3.5.RELASE
    spring-security-config:4.1.4.Final
    spring-security-taglibs:4.1.4.Final
    spring-security-web:4.2.1.RELEASE
    commons-fileupload:1.3.2
    commons-io:2.5
    commons-dbcp2:2.0
    spring-webflow:2.4.4.RELAESE


