<%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.Statement"%>
    <%@page import="java.sql.Connection"%>
    <%
    String id = request.getParameter("userid"); 
    
  /*   String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:8081/";
    String database = "msystem";
    String userid = "root";
    String password = ""; */
     String dburl="jdbc:mysql://localhost:3306/msystem";
	 String userid="root";
	 String password="";
	 String driver="com.mysql.cj.jdbc.Driver";
    try {
    Class.forName(driver);
    } catch (ClassNotFoundException e) {
    e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
    %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
/*	
	Side Navigation Menu V2, RWD
	===================
	Author: https://github.com/pablorgarcia
 */

@charset "UTF-8";
@import url(https://fonts.googleapis.com/css?family=Open+Sans:300,400,700);

body {
  font-family: 'Open Sans', sans-serif;
  font-weight: 300;
  line-height: 1.42em;
  color:#A7A1AE;
  background-color:#1F2739;
}

h1 {
  font-size:3em; 
  font-weight: 300;
  line-height:1em;
  text-align: center;
  color: #4DC3FA;
}

h2 {
  font-size:1em; 
  font-weight: 300;
  text-align: center;
  display: block;
  line-height:1em;
  padding-bottom: 2em;
  color: #FB667A;
}

h2 a {
  font-weight: 700;
  text-transform: uppercase;
  color: #FB667A;
  text-decoration: none;
}

.blue { color: #185875; }
.yellow { color: #FFF842; }

.container th h1 {
	  font-weight: bold;
	  font-size: 1em;
  text-align: left;
  color: #185875;
}

.container td {
	  font-weight: normal;
	  font-size: 1em;
  -webkit-box-shadow: 0 2px 2px -2px #0E1119;
	   -moz-box-shadow: 0 2px 2px -2px #0E1119;
	        box-shadow: 0 2px 2px -2px #0E1119;
}

.container {
	  text-align: left;
	  overflow: hidden;
	  width: 80%;
	  margin: 0 auto;
  display: table;
  padding: 0 0 8em 0;
}

.container td, .container th {
	  padding-bottom: 2%;
	  padding-top: 2%;
  padding-left:2%;  
}

/* Background-color of the odd rows */
.container tr:nth-child(odd) {
	  background-color: #323C50;
}

/* Background-color of the even rows */
.container tr:nth-child(even) {
	  background-color: #2C3446;
}

.container th {
	  background-color: #1F2739;
}

.container td:first-child { color: #FB667A; }

.container tr:hover {
   background-color: #464A52;
-webkit-box-shadow: 0 6px 6px -6px #0E1119;
	   -moz-box-shadow: 0 6px 6px -6px #0E1119;
	        box-shadow: 0 6px 6px -6px #0E1119;
}

.container td:hover {
 /*  background-color: #FFF842;
  color: #403E10; */
  font-weight: bold;
  
  box-shadow: #7F7C21 -1px 1px, #7F7C21 -2px 2px, #7F7C21 -3px 3px, #7F7C21 -4px 4px, #7F7C21 -5px 5px, #7F7C21 -6px 6px;
  transform: translate3d(6px, -6px, 0);
  
  transition-delay: 0s;
	  transition-duration: 0.4s;
	  transition-property: all;
  transition-timing-function: line;
}

@media (max-width: 800px) {
.container td:nth-child(4),
.container th:nth-child(4) { display: none; }
}
</style>
</head>
<body>
<h1><span class="blue">&lt;</span>Employees<span class="blue">&gt;</span> <span class="yellow">Registered</pan></h1>
<h2>All<a href="https://github.com/pablorgarcia" target="_blank">Listed bellow</a><form class="form-inline" method="post" action="Search.jsp">
<input type="text" name="c_id" class="form-control" placeholder="Search roll no..">
<button type="submit" name="save" class="btn btn-primary">Search</button>
</form></h2>

<table class="container">
	<thead>
	<tr>
<td>Chief Id</td>
<td>Chief Name</td>
<td>Gender</td>
<td>Year of Experience</td>
<td>Age</td>
<td>NUmber ID</td>
<td>Email</td>
<td>Phone Number</td>
<!-- <td>Update</td>
<td>Delete Employee</td> -->
</tr>
<%
try{
connection = DriverManager.getConnection(dburl, userid, password);
statement=connection.createStatement();
String sql ="SELECT * FROM `chiefs`";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("f_id") %></td>
<td><%=resultSet.getString("f_name") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getInt("year_expr") %></td>
<td><%=resultSet.getInt("age") %></td>
<td><%=resultSet.getInt("idnumber") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("phone") %></td>
<%-- <td><a href="Edit.jsp?id=<%=resultSet.getString("c_id") %>">Edit</a></td>
<td><a href="Delete?id=<%=resultSet.getString("c_id") %>">Delete</a></td> --%>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

