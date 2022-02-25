<%-- 
    Document   : displayMember
    Created on : 20-Feb-2022, 10:42:57 AM
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
        
        <section id="diplayMemberSection">
            <h1>Thanks for joining our club!</h1>
            <p>Here is the information that you entered:</p>
                <b><label>Full Name:</label></b>
                <span>${param["fullName"]}</span><br>
                <b><label>Email:</label></b>
                <span>${param["email"]}</span><br>
                <b><label>Phone:</label></b>
                <span>${param["phoneNumber"]}</span><br>
                <b><label>IT Program:</label></b>
                <span>${param["programSelection"]}</span><br>
                <b><label>Year Level:</label></b>
                <span>${param["yearSelection"]}</span><br>
            <p>To register another member, click on the Back button in your browser or <br>
                the Return button shown below </p>

            <button type="button" id="btnReturn" name="btnReturn"><a href="register.jsp">Return</a></button>
        </section>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>
