<%-- 
    Document   : Loop
    Created on : Jun 3, 2022, 5:32:27 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Loop</title>
    </head>
    <body>
        <ul>
            <%for(int i=0;i<=10;i++){%>
            <li><%=i%></li>
            <%}%>
        </ul>
    </body>
</html>
