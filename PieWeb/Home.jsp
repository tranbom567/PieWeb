<%-- 
    Document   : Home
    Created on : Jun 1, 2022, 6:01:30 PM
    Author     : PC
--%>

<%@page import="Beans.UserData"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="com.pie.servlet.servlettest.Utilities.CookieUtilities,java.util.Date" session="false" buffer="1kb" errorPage="http://192.168.1.83:8080/Internal500.jsp"%>

<!DOCTYPE html>
<%! 
    private String text;
%>
   <html>
       <%String cookie=CookieUtilities.getCookieValue(request, "user", "Guest");%>
<head>
<meta charset="utf-8">
	<link rel="stylesheet" href="HomeDecorate.css"/>
<title>Pie</title>
</head>

<body>
    <jsp:useBean id="UData" class="Beans.UserData"/>
   
    <%UData.setUser(cookie);%>
    <%if (cookie.equals("Guest")) {%>
   <form action="sign up.html" class="logForm">
    <input type="submit" value="Sign up" class="signup">
    </form>
    <form action="" class="logForm">
    <br/>
    <input type="submit" value="Log in" class="login">
</form>
   
    <%text="Guest";%>
<%}else{%>
<form action=" http://192.168.1.83:8080/Logout " method="GET">
    <input type="submit" class="logout" value="Log out">
</form>
<%text=cookie;}%>
    
<h4>Date: <%=new Date()%></h4>
<h1 class="title">Pie</h1>
<h4>User: <jsp:getProperty name="UData" property="user"/></h4>
<form action="">
	<input type="submit" value="Account" class="account">
	</form>
	<form action="">
		<br/>
	<input type="submit" value="Download" class="download">
	</form>
<br/><br/><br/>

<%@include file="Footer.jsp" %>
</body>
</html>