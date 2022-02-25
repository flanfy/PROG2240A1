<%-- 
    Document   : index
    Created on : 20-Feb-2022, 10:09:45 AM
    Author     : Phillip, Devon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/main.css" rel="stylesheet" type="text/css"/>
        <title>PLDTSH Programming Club</title>
    </head>
    <body>
        <header data-role="header" data-position="fixed" data-theme="a">
                <jsp:include page="banner.jsp"></jsp:include>
            </header>
        <section>
            <h1>Java Web Technologies: Section 1</h1>
            
            <p>Pair Programming Team:</p>
            
            <h2>Assignment 1</h2>
            <h2>Driver: Phillip Lu</h2>
            <h2>Driver: Devon Tomlin</h2>
            <h2>Observer: Shakir Hansrod</h2>         
            <p>Current Date and Time:</p>
            <h3><%=new java.util.Date()%></></h3>
        </section>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>
