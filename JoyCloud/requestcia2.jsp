<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 

<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String name1=(String)session.getAttribute("n1");
String password1=(String)session.getAttribute("p1");
String usertype1=(String)session.getAttribute("u5");



try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","admin");
PreparedStatement ps=conn.prepareStatement ("insert into requesttable (username,password,usertype) values (?,?,?)");


ps.setString(1,name1);
ps.setString(2,password1);
ps.setString(3,usertype1);

int x=ps.executeUpdate();

          
            
                response.sendRedirect("granted1.jsp?message=success");}
            
  
		
        catch(Exception e)
        {
            out.println(e.getMessage());
        }
		

        
%>
</body>
</html>
