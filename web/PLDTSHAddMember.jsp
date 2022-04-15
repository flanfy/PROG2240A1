<%-- 
    Document   : PLDTSHAddMember
    Created on : 14-Apr-2022, 7:44:24 PM
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
    </header>
<body>
    <h1>Join our email list</h1>
    <p>To join our email list, enter your name and
       email address below.</p>
    <p><i>${message}</i></p>
    <form action="PLDTSHMemberAdmin" method="post">
        <input type="hidden" name="action" value="saveMember">        
        <label class="pad_top">Email:</label>
        <input type="email" name="emailAddress" value="${member.emailAddress}"><br>
        <label class="pad_top">First Name:</label>
        <input type="text" name="fullName" value="${member.fullName}"><br>
        <label class="pad_top">Phone Number:</label>
        <input type="text" name="phoneNumber" value="${member.phoneNumber}"><br>       
        <label class="pad_top">Program:</label>
        <input type="text" name="programName" value="${member.programName}"><br>   
        <label class="pad_top">Year:</label>
        <input type="text" name="yearLevel" value="${member.yearLevel}"><br>   
        <label>&nbsp;</label>
        <input type="submit" value="Add Member" class="margin_left">
        <br>
        <br>
        <a href="PLDTSHDisplayMembers.jsp">View All Users!!!</a><br>
     
    </form>
</body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>