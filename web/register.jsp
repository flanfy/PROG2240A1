<%-- 
    Document   : register
    Created on : 20-Feb-2022, 10:12:07 AM
    Author     : Phillip, Devon
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
            <h1>New Member Registration Form</h1>
            
            <form method="post" action="displayMember.jsp">
                <div> 
                    <b><label for="txtName">Full Name:</label></b>
                    <input type="text" id="txtName" value="${member.name}" style="width:200px" required>
                </div><br>
                 <div>
                    <b><label for="txtEmail">Email:</label></b>
                    <input type="text" id="txtEmail" value="${member.email}" style="width:300px" required>
                 </div><br>
                <div>
                    <b><label for="txtPhone">Phone:</label></b>
                    <input type="text" id="txtPhone" value="${member.phone}" style="width:100px">
                </div><br>
                <div>
                    <b><label for="cboProgram">IT Program:</label></b> 
                    <select id="cboProgram" name="cboProgram" value="${member.program}">
                        <option value="CAS">CAS</option>
                        <option value="SQATE">SQATE</option>
                        <option value="CPA">CPA</option>
                        <option value="CP">CP</option>
                        <option value="ITID">ITID</option>
                        <option value="CAD">CAD</option>
                        <option value="ITSS">ITSS</option>
                    </select>
                </div><br>
                <div>
                    <b><label for="cboYear">Year Level: </label></b>
                    <select id="cboYear" name="cboYear" value="${member.year}">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                    </select><br>
                </div><br>
                <div id="formButtons" data-role="controlgroup" data-type="horizontal" data-mini="true">
                    <button type="button" id="btnRegister" name="btnRegister">Register Now!</button>
                    <button type="button" id="btnReset" name="btnReset">Reset</button>
                </div>
            </form>
        </section>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>
