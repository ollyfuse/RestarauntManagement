<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.Statement"%>
    <%@page import="java.sql.Connection"%>
    <%
    String id = request.getParameter("c_id"); 
    
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
$baseColor: #398B93;
$borderRadius: 10px;
$imageBig: 100px;
$imageSmall: 60px;
$padding: 10px;

body {
   background-color: lighten($baseColor, 30%);
   * { box-sizing: border-box; }
}

.header {
   background-color: darken($baseColor, 5%);
   color: white;
   font-size: 1.5em;
   padding: 1rem;
   text-align: center;
   text-transform: uppercase;
}

img {
   border-radius: 50%;
   height: $imageSmall;
   width: $imageSmall;
}

.table-users {
   border: 1px solid darken($baseColor, 5%);
   border-radius: $borderRadius;
   box-shadow: 3px 3px 0 rgba(0,0,0,0.1);
   max-width: calc(100% - 2em);
   margin: 1em auto;
   overflow: hidden;
   width: 800px;
}

table {
   width: 100%;
   
   td, th { 
      color: darken($baseColor, 10%);
      padding: $padding; 
   }
   
   td {
      text-align: center;
      vertical-align: middle;
      
      &:last-child {
         font-size: 0.95em;
         line-height: 1.4;
         text-align: left;
      }
   }
   
   th { 
      background-color: lighten($baseColor, 50%);
      font-weight: 300;
   }
   
   tr {     
      &:nth-child(2n) { background-color: white; }
      &:nth-child(2n+1) { background-color: lighten($baseColor, 55%) }
   }
}

@media screen and (max-width: 700px) {   
   table, tr, td { display: block; }
   
   td {
      &:first-child {
         position: absolute;
         top: 50%;
         transform: translateY(-50%);
         width: $imageBig;
      }

      &:not(:first-child) {
         clear: both;
         margin-left: $imageBig;
         padding: 4px 20px 4px 90px;
         position: relative;
         text-align: left;

         &:before {
            color: lighten($baseColor, 30%);
            content: '';
            display: block;
            left: 0;
            position: absolute;
         }
      }

      &:nth-child(2):before { content: 'Name:'; }
      &:nth-child(3):before { content: 'Email:'; }
      &:nth-child(4):before { content: 'Phone:'; }
      &:nth-child(5):before { content: 'Comments:'; }
   }
   
   tr {
      padding: $padding 0;
      position: relative;
      &:first-child { display: none; }
   }
}

@media screen and (max-width: 500px) {
   .header {
      background-color: transparent;
      color: lighten($baseColor, 60%);
      font-size: 2em;
      font-weight: 700;
      padding: 0;
      text-shadow: 2px 2px 0 rgba(0,0,0,0.1);
   }
   
   img {
      border: 3px solid;
      border-color: lighten($baseColor, 50%);
      height: $imageBig;
      margin: 0.5rem 0;
      width: $imageBig;
   }
   
   td {
      &:first-child { 
         background-color: lighten($baseColor, 45%); 
         border-bottom: 1px solid lighten($baseColor, 30%);
         border-radius: $borderRadius $borderRadius 0 0;
         position: relative;   
         top: 0;
         transform: translateY(0);
         width: 100%;
      }
      
      &:not(:first-child) {
         margin: 0;
         padding: 5px 1em;
         width: 100%;
         
         &:before {
            font-size: .8em;
            padding-top: 0.3em;
            position: relative;
         }
      }
      
      &:last-child  { padding-bottom: 1rem !important; }
   }
   
   tr {
      background-color: white !important;
      border: 1px solid lighten($baseColor, 20%);
      border-radius: $borderRadius;
      box-shadow: 2px 2px 0 rgba(0,0,0,0.1);
      margin: 0.5rem 0;
      padding: 0;
   }
   
   .table-users { 
      border: none; 
      box-shadow: none;
      overflow: visible;
   }
}
</style>
</head>
<body>

<div class="table-users">
   <div class="header">Users</div>
   
   <table cellspacing="0">
      <tr>
         <th>No</th>
<th>Client Name</th>
<th>Emails</th>
<th>Schools</th>
<th>Birth Year</th>
<th>Gender</th>
<th>Payment</th>
<th>Phone Number</th>
      </tr>
<%
try{
connection = DriverManager.getConnection(dburl, userid, password);
statement=connection.createStatement();
String sql ="SELECT * FROM `clients` WHERE c_id='"+id+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<th><%=resultSet.getString("c_id") %></th>
<th><%=resultSet.getString("c_name") %></th>
<th><%=resultSet.getString("gender") %></th>
<th><%=resultSet.getString("schools") %></th>
<th><%=resultSet.getInt("age") %></td>
<th><%=resultSet.getString("m_option") %></th>
<th><%=resultSet.getInt("payment") %></th>
<th><%=resultSet.getString("phone") %></th>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>



<%-- 

<h1>Search Data</h1>
<table border="1">
<tr>
<td>No</td>
<td>Client Name</td>
<td>Emails</td>
<td>Schools</td>
<td>Birth Year</td>
<td>Gender</td>
<td>Payment</td>
<td>Phone Number</td>
</tr>
<%
try{
connection = DriverManager.getConnection(dburl, userid, password);
statement=connection.createStatement();
String sql ="SELECT * FROM `clients` WHERE c_id='"+id+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("c_id") %></td>
<td><%=resultSet.getString("c_name") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("schools") %></td>
<td><%=resultSet.getInt("age") %></td>
<td><%=resultSet.getString("m_option") %></td>
<td><%=resultSet.getInt("payment") %></td>
<td><%=resultSet.getString("phone") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</body>
</html> --%>