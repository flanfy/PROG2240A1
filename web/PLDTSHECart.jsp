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
                        <th>Code</th>
                        <th>Description</th>
                        <th>Quantity</th>
                    </tr>
                    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                    <c:set var="count" scope="page" value="0"/>
                    <c:forEach var="book" items="${sessionScope.myCart.items}">
                    <tr>
                        <td align="left">${book.code}</td> 
                        <td align="left">${book.description}</td> 
                        <td align="right">${book.quantity}</td> 
                    </tr>
                    <c:set var="count" scope="page" value="${count+book.quantity}"/>
                    </c:forEach>
                </table>
                <p>Total: ${count} </p>
            </section>
        </form>
        <br>
        <a href="PLDTSHClearCart" >Clear the cart</a> <br>
        <a href="PLDTSHLoan" >Return to eLoan</a>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>