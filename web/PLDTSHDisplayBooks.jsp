<%-- 
    Document   : PLDTSHDisplayBooks
    Created on : 23-Mar-2022, 8:04:12 PM
    Author     : Devon
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
                <tr style="border: 1px solid;">
                    <th style="border: 1px solid;">Code</th>
                    <th style="border: 1px solid;">Description</th>
                    <th style="border: 1px solid;">Quantity</th>
                </tr>
                <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                <c:forEach var="item" items="${books}">
                <tr>
                    <td style="border: 1px solid;">${item.code}</td>
                    <td style="border: 1px solid;">${item.description}</td>
                    <td style="border: 1px solid;">${item.quantity}</td>
                </tr>
                </c:forEach>
            </table>
        </section>
        <button>Add Book</button>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>
