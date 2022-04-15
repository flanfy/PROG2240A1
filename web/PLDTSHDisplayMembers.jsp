<%-- 
    Document   : PLDTSHDisplayMembers
    Created on : 12-Apr-2022, 7:28:08 PM
    Author     : Phillip
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="club.data.DBUtil" %>
<%@page import="java.sql.*" %>

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
            <form action="PLDTSHMemberAdmin" method='post'>
                <input type="hidden" name="action" value="">    
                <h1 align="center">Member Management</h1>

                <h1 align="center">List of Member</h1>
                <table border="1" align="center" cellpadding="5">
                    <tr>
                        <th>Full Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Program</th>
                        <th>Year</th>
                    </tr>

                <%
                    Connection con = DBUtil.getConnection();
                    Statement statement = con.createStatement();
                    ResultSet resultSet = statement.executeQuery("Select * from member");
                    while (resultSet.next()) {
                %>
                <tr>
                    <td>
                        <%
                            out.print(resultSet.getString(2));
                        %>
                    </td>
                    <td>
                        <%
                            out.print(resultSet.getString(3));
                        %>
                    </td>
                    <td>
                        <%
                            out.print(resultSet.getString(4));
                        %>
                    </td>
                    <td>
                        <%
                            out.print(resultSet.getString(5));
                        %>
                    </td>
                    <td>
                        <%
                            out.print(resultSet.getInt(6));
                        %>
                    </td>
                    <td>
                        <a href="PLDTSHMemberAdmin?action=edit&email=<%=resultSet.getString(3)%> ">Edit</a>
                        <a href="PLDTSHMemberAdmin?action=delete&email=<%=resultSet.getString(3)%>">
                            Remove</a>
                    </td>
                </tr>
                <%
                    }
                %>
            </table>
            <a href='PLDTSHMemberAdmin?action=addMember' method='GET'>Add Member</a>
        </form>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>
