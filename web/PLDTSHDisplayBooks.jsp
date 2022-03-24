<%-- 
    Document   : PLDTSHDisplayBooks
    Created on : 23-Mar-2022, 8:04:12 PM
    Author     : Phillip
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <header data-role="header" data-position="fixed" data-theme="a">
        <jsp:include page="banner.jsp"></jsp:include>
    </header>
    <body>
        <h1>List of Books</h1>
        <section>
            <table> 
                <tr>
                    <th>Code</th>
                    <th>Description</th>
                    <th>Quantity</th>
                </tr>
                <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                <c:forEach var="item" items="${books}">
                <tr>
                    <td>${item.code}</td>
                    <td>${item.description}</td>
                    <td>${item.quantity}</td>
                </tr>
                </c:forEach>
            </table>
        </section>
        <button>Add Book</button>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>
