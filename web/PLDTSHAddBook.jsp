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
    <body>
        <header data-role="header" data-position="fixed" data-theme="a">
                <jsp:include page="banner.jsp"></jsp:include>
            </header>
        <section>
            <h1>Add a Book</h1>
            
            <form action="post">
            <input type="hidden" name="action" value="PLDTSHAddBook"/>
            <div> 
                <b><label for="code">Code:</label></b>
                <input type="text" id="code" name="code" value="" style="width:200px" required>
            </div><br>
            <div> 
                <b><label for="description">Description:</label></b>
                <input type="text" id="description" name="description" value="" style="width:200px" required>
            </div><br>
            <div> 
                <b><label for="quantity">Quantity</label></b>
                <input type="text" id="quantity" name="quantity" value="" style="width:200px" required>
            </div><br>
            <button>Save</button>
            <button>Cancel</button>    
            </form>
        </section>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>
