<%-- 
    Document   : displayMember
    Created on : 20-Feb-2022, 10:42:57 AM
    Author     : Phillip
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/main.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <header data-role="header" data-position="fixed" data-theme="a">
            <jsp:include page="banner.jsp"></jsp:include>
        </header>
        <h1>Hello World!</h1>
        <p>Here is the information that you entered:</p>

        <label>Email:</label>
        <span>${user.name}</span><br>
        <label>First Name:</label>
        <span>${user.email}</span><br>
        <label>Last Name:</label>
        <span>${user.phone}</span><br>
        <label>Last Name:</label>
        <span>${user.program}</span><br>
        <label>Last Name:</label>
        <span>${user.year}</span><br>
    </body>
    <footer><jsp:include page="footer.jsp"></jsp:include></footer>
</html>
