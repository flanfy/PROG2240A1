<%-- 
    Document   : PLDTSHError
    Created on : 23-Mar-2022, 9:04:07 PM
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
    <header data-role="header" data-position="fixed" data-theme="a">
                <jsp:include page="banner.jsp"></jsp:include>
    </head
    <body>
        <h1>Java Error</h1>
        <p>Sorry, Java has thrown an exception.</p>
        <p>To continue, click the Back button.</p>

        <h2>Details</h2>
        <p>Type: ${pageContext.exception["class"]}</p>
        <p>Message: ${pageContext.exception.message}</p>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>