﻿<%@ page contentType="text/html; charset=" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>www.joycloud.com</title>
    
    <link rel="stylesheet" type="text/css" href="style.css" media="screen,projection">
	<style type="text/css">
	.c1
	{
	font-family:verdana;
	font-size:11px;
	color:#0074E8;
	font-weight:bold;
	padding:2px 2px 2px 2px;
	}
	.c1:hover
	{
	color:red;
	font-size:12px;
	}
	.c2
	{
	font-family:verdana;
	font-size:12px;
	color:#000000;
	border:1px solid #ddd;
	font-weight:normal;
	padding:2px 2px 2px 2px;
	}
	</style>
	</head>
	
	

<body>
<form name="f1" action="upload1.jsp" method="post" onSubmit="return valid4()">
<div id="container" class="clearfix">
    
    <h1><em></em></h1>
    
    <h2></h2>
 
 <div id="content">
    
        
      <h3>UPLOADED FILES</h3>
	  <table  cellspacing="10" >
	  <th class="c1">ID</th>
	  <th class="c1">FILE NAME</th>
	  <th class="c1">OWNER NAME</th>
	  <th class="c1">UPLOAD TIME</th>
 
	  <%
String sql="select * from upload ";
String id1=null,filename1=null,ownername1=null,utime=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn3=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","admin");
Statement st=conn3.createStatement();
ResultSet rs2=st.executeQuery(sql);

while(rs2.next())
{
id1=rs2.getString("id");
filename1=rs2.getString("filename");
ownername1=rs2.getString("ownername");
utime=rs2.getString("utime");
%>
<tr>

<td class="c2"><%= id1 %></td>
<td class="c2"><%= filename1 %></td>
<td class="c2"><%= ownername1 %></td>
<td class="c2"><%= utime %></td>
</tr>



<%
}
}
catch(Exception e)
{
out.print(e);
}

%>

</table>
	  
  
	   
	  

            
    </div>
 
        <ul id="nav">
            
           
			<li><a href="login.jsp">Login</a></li>
            <li><a href="viewrecords.jsp">View Record</a></li> 
			 <li><a href="viewuser.jsp">View User List</a></li>  
			  <li><a href="csppage.jsp">Back</a></li>    

        </ul>
        
</div>
 
        <address>
         <a href="http://www.caddoo.net" ></a>  <a href="http://www.zymic.com" ></a> <a href="http://www.zymic.com/free-templates"></a>. <a href="http://www.zymic.com/free-web-hosting/"></a>.
        </address>


</form>
</body>
</html><%@ page contentType="text/html; charset=" language="java" import="java.sql.*" errorPage="" %>

