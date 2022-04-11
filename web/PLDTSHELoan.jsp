<%-- 
    Document   : PLDTSHELoan
    Created on : 7-Apr-2022, 5:13:42 PM
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
        <form>
            <section>
                <table> 
                    <tr>
                        <th>Code</th>
                        <th>Description</th>
                        <th>QOH</th>
                        <th>Action</th>
                    </tr>
                    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                    <c:forEach var="item" items="${applicationScope.loanItems}"> 
                    <tr>
                        <td align="left">
                         ${item.code} 
                        </td>
                        <td align="left">
                        ${item.description} 
                        </td>
                        <td align="right">
                            <c:if test="${item.quantity > 0}">
                                ${item.quantity}
                            </c:if>
                            <c:if test="${item.quantity < 1}">
                                0
                            </c:if>
                        </td>
                        <td align="right">
                            <c:if test="${item.quantity >= 1}">
                                <a href="<c:url value="PLDTSHCart?action=reserve&code=${item.code}" />">Reserve</a>
                            </c:if>
                            <c:if test="${item.quantity < 1}">N/A</c:if>
                        </td>
                    </tr>
                    </c:forEach>
                </table>
            </section>
        </form>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>