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
<form name="f1" action="#" method="post" onSubmit="return valid4()">
<div id="container" class="clearfix">
    
    <h1><em></em></h1>
    
    <h2></h2>
 
 <div id="content">
    
        
      <h3>RECORDS</h3>
	  <table  cellspacing="4" >
	  <th>USER ID</th>
	  <th>USER NAME</th>
	  <th>EMAIL ID</th>
	  <th>DOWNLOAD PROPERTY</th>
	  
 
	  <%
	  String s1="user";
String sql="select * from login where utype='"+s1+"'";
String id1=null,n1=null,un1=null,eid1=null,pwd1=null,cpwd1=null,dob1=null,add1=null,mno1=null,cry1=null,ger1=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn3=DriverManager.getConnection("jdbc:mysql://localhost:3306/sam","root","admin");
Statement st=conn3.createStatement();
ResultSet rs2=st.executeQuery(sql);

while(rs2.next())
{
id1=rs2.getString("id");
n1=rs2.getString("name");
un1=rs2.getString("username");
eid1=rs2.getString("emailid");

%>
<tr>
<td class="c2"><%= id1 %></td>
<td class="c2"><%= un1 %></td>
<td class="c2"><%= eid1 %></td>
<td class="c2"><a href="propertydetails.jsp?<%=un1%>" class="c1">PROPERTY</a></td>
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
            <li><a href="index.html" >Home</a></li>
  
			<li><a href="admin.jsp">Back</a></li>
			

        </ul>
        
</div>
 
        <address>
         <a href="http://www.caddoo.net" ></a>  <a href="http://www.zymic.com" ></a> <a href="http://www.zymic.com/free-templates"></a>. <a href="http://www.zymic.com/free-web-hosting/"></a>.
        </address>


</form>
</body>
</html><%@ page contentType="text/html; charset=" language="java" import="java.sql.*" errorPage="" %>

