<%-- 
    Document   : register
    Created on : 20-Feb-2022, 10:12:07 AM
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
        <h1>New Member Registration Form</h1>
        <section>
            <form method="post" action="displayMember.jsp">
                <label for="txtName">Full name:</label>
                <input type="text" id="txtName" value="${member.name}" required><br>
                <label for="txtEmail">Email:</label>
                <input type="text" id="txtEmail" value="${member.email}" required><br>
                <label for="txtPhone">Phone:</label>
                <input type="text" id="txtPhone" value="${member.phone}">
                <label for="txtTypeModify">IT Program:</label>
                <select id="cboProgram" name="cboProgram" value="${member.program}">
                    <option value="CAS">CAS</option>
                    <option value="SQATE">SQATE</option>
                    <option value="CPA">CPA</option>
                    <option value="CP">CP</option>
                    <option value="ITID">ITID</option>
                    <option value="CAD">CAD</option>
                    <option value="ITSS">ITSS</option>
                </select><br>
                <label for="cboYear">Year</label>
                <select id="cboYear" name="cboYear" value="${member.year}">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                </select><br>
                <div data-role="controlgroup" data-type="horizontal" data-mini="true">
                    <input type="submit" value="Join Now" class="margin_left">
                    <button type="button" id="btnRegister" name="btnRegister">Register</button>
                    <button type="button" id="btnReset" name="btnReset">Reset</button>
                </div>
            </form>
        </section>
    </body>
    <footer><jsp:include page="footer.jsp"></jsp:include></footer>
</html>
