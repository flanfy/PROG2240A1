<%-- 
    Document   : PLDTSHEditMember
    Created on : 15-Apr-2022, 10:36:05 AM
    Author     : Phillip
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header data-role="header" data-position="fixed" data-theme="a">
            <jsp:include page="banner.jsp"></jsp:include>
            </header>
            <form action="PLDTSHMemberAdmin" method="post">
                <input type="hidden" name="action" value="updateMember">

                <label class="pad_top">User ID:</label>
                <input type="text" name="email" value="${member.emailAddress}" disabled>
            <input type="hidden" name="email" value=${member.emailAddress}>   
            <br>
            <label class="pad_top">Full Name:</label>
            <input type="text" name="fullName" value="${member.fullName}"><br>
            <label class="pad_top">Phone Number:</label>
            <input type="text" name="phoneNumber" value="${member.phoneNumber}"><br>       
            
            <select name="programName" value="${member.programName}">
                <option value="CP">CP</option>
                <option value="CPA">CPA</option>
                <option value="ITID">ITID</option>
            </select>
            <label class="pad_top">Year:</label>
            <select name="yearLevel">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
            </select>
            <label>&nbsp;</label>
            <input type="submit" value="Update Member" class="margin_left">
        </form>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>
