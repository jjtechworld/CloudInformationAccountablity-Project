﻿<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
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
	.c2
	{
	font-family:verdana;
	font-size:12px;
	color:#000000;
	border:1px solid #ddd;
	font-weight:normal;
	padding:2px 2px 2px 2px;
	}
	.c1:hover
	{
	color:#685268;
	font-size:11px;
	}
	
	.c3
	{
	font-family:verdana;
	font-size:11px;
	color:#0074E8;
	font-weight:bold;
	padding:2px 2px 2px 2px;
	}
	
	.c3:hover
	{
	color:#685268;
	font-size:18px;
	}
	</style>
	<script type="text/javascript">
	function valid5()
	{
	var a=document.f1.usrkey.value;
	if(a=="")
	{
	alert ("Enter Your Userkey");
	document.f1.usrkey.focus();
	return false;
	}
	
	var b=document.f1.filkey.value;
	if(b=="")
	{
	alert ("Enter The file key");
	document.f1.filkey.focus();
	return false;
	}
	
	}
	</script>

 </head> 
<body>
<form name="f1" action="veryfy_userkey.jsp" method="post" onSubmit="return valid5()">
<% String s=(String)session.getAttribute("fk"); %>
<div id="container" class="clearfix">
    
    <h1><em></em></h1>
    
    <h2></h2>
 
 
 <div id="content">
    
 
      <h3>FILE DOWNLOAD</h3>
	  
	 <table>
	 <th></th>
	 <tr><td class="c1">Enter User Key</td>
	<td class="c2"> <input type="text" name="usrkey"> </td></tr>
	
	<tr><td class="c1">Enter File Key</td>
	<td class="c2"> <input type="text" name="filkey"> </td></tr>
	
	<tr><td></td></tr>
	
	<tr><td></td><td class="c1"><input type="submit"  class="c3" name="download" value="DOWNLOAD"></td></tr>
	</table>
	  
	 <div id=downimg> <img src="images/download-.jpg" height="250" width="266"/>  </div>


	        
            
    </div>
 
        <ul id="nav">
            <div id="hme"> 
      <li><a href="index.html" title="">Home <img src="images/Home Green.png" width="35" height="30" align="texttop"  ></a></li>
    </div>
    
            <li><a href="view.jsp">View Account</a></li>
            <li><a href="userpage.jsp">Back</a></li>
            
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
        </ul>
        
</div>
 
        <address>
         <a href="http://www.caddoo.net" ></a>  <a href="http://www.zymic.com" ></a> <a href="http://www.zymic.com/free-templates"></a>. <a href="http://www.zymic.com/free-web-hosting/"></a>.
        </address>


</form>
</body>
</html>
