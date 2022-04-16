<%-- 
    Document   : PLDTSHRemoveMember
    Created on : 14-Apr-2022, 7:46:48 PM
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
            <h1>Delete?</h1>
            <form action="PLDTSHMemberAdmin" method="post">
                <input type="hidden" name="action" value="deleteMember">
                <input type="hidden" name="emailAddress" value=${member.emailAddress}>              
            <label class="pad_top">Email:</label>
            <input type="email" name="emailAddress" value="${member.emailAddress}" disabled><br>
            <label class="pad_top">First Name:</label>
            <input type="text" name="fullName" value="${member.fullName}" disabled><br>
            <label class="pad_top">Phone Number:</label>
            <input type="text" name="phoneNumber" value="${member.phoneNumber}" disabled><br>       
            <label class="pad_top">Program:</label>
            <input type="text" name="programName" value="${member.programName}" disabled><br>   
            <label class="pad_top">Year:</label>
            <input type="text" name="yearLevel" value="${member.yearLevel}" disabled><br>   
            <label>&nbsp;</label>
            <input type="submit" value="Delete" class="margin_left">
            <br>
            <a href="PLDTSHDisplayMembers.jsp">Cancel</a>

        </form>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>