<%-- 
    Document   : PLDTSHECart
    Created on : 7-Apr-2022, 5:16:44 PM
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
            <form>
                <section>
                    <table> 
                        <tr>
                            <th style="border: 1px solid;">Code</th>
                            <th style="border: 1px solid;">Description</th>
                            <th style="border: 1px solid;">Quantity</th>
                        </tr>
                    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                    <c:set var="count" scope="page" value="0"/>
                    <c:forEach var="book" items="${sessionScope.myCart.items}">
                        <tr>
                            <td align="left">${______}</td> // Code
                            <td align="left">${_______}</td> // Description
                            <td align="right">${______}</td> // Quantity
                        </tr>
                        <c:set var="count" scope="page" value="${count+book.quantity}"/>
                    </c:forEach>
                </table>
                <button type="submit" formaction="PLDTSHAddBook" formmethod="post">Add Book</button>
            </section>
        </form>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>