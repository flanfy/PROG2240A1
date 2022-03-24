<%-- 
    Document   : PLDTSHAddBook
    Created on : 23-Mar-2022, 8:41:37 PM
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
        <section>
            <h1>Add a Book</h1>
            
            <form action="PLDTSHAddBook" method="post">
                <input type="hidden" name="action" value="Save"/>
                
                <table>
                    <tr>
                    <td colspan="2" align="center"><font color="red"/>${message}</td>
                </tr>
                
                <tr> 
                    <b><label for="code">Code:</label></b>
                    <input type="text" id="code" name="code" value="${newBook.code}" style="width:200px">
                </tr><br>
                <tr> 
                    <b><label for="description">Description:</label></b>
                    <input type="text" id="description" name="description" value="${newBook.description}" style="width:200px" >
                </tr><br>
                <tr> 
                    <b><label for="quantity">Quantity</label></b>
                    <input type="text" id="quantity" name="quantity" value="${newBook.quantity}" style="width:200px">
                </tr><br>
                <tr>
                    <input type="submit" value="Save"/>
                    <input type="submit" value="Cancel"/> 
                </tr>
                </table>
                
            </form>
        </section>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>
