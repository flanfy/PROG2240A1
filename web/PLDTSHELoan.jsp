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
<!--                    <c:forEach var="item" items="${applicationScope.loanitems}"> // Access list of Loan Items from
                        loanitems context parameter-->
                        <tr>
                            <td align="left">
<!--                                ${__________} // loanitem Code-->
                            </td>
                            <td algin="left">
<!--                                ${__________} // loanitem Description-->
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
                                    <a href="<c:url value="XXYYCart?action=reserve&code=${item.code}" />">
                                        Reserve</a>
                                    </c:if>
                                    <c:if test="${item.quantity < 1}">
                                    N/A
                                </c:if>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
                <button type="submit" formaction="PLDTSHAddBook" formmethod="post">Add Book</button>
            </section>
        </form>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>