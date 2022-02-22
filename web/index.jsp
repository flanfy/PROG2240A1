<%-- 
    Document   : index
    Created on : 20-Feb-2022, 10:09:45 AM
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
        <section>
            <h1>Java Web Technologies: Section 1</h1>
            <p>
                Pair Programming Team:
                Assignment 1 
                Phillip Lu
                Devon Tomlin
                Shakir Hansrod        
            </p>
            <p>Current Date and Time:<br><br><%=new java.util.Date()%></p>
        </section>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>
