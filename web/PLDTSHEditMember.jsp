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
        <form action="PLDTSHMemberAdmin" method="post">
            <input type="hidden" name="action" value="updateMember">
            
            <label class="pad_top">User ID:</label>
            <input type="text" name="email" value="${member.emailAddress}" disabled>
            <input type="hidden" name="email" value=${member.emailAddress}>   
            <br>
            <label class="pad_top">First Name:</label>
            <input type="text" name="fullName" value="${member.fullName}"><br>
            <label class="pad_top">Phone Number:</label>
            <input type="text" name="phoneNumber" value="${member.phoneNumber}"><br>       
            <label class="pad_top">Program:</label>
            <input type="text" name="programName" value="${member.programName}"><br>   
            <label class="pad_top">Year:</label>
            <input type="text" name="yearLevel" value="${member.yearLevel}"><br>   
            <label>&nbsp;</label>
            <input type="submit" value="Update Member" class="margin_left">
        </form>

    </body>
</html>
