<%-- 
    Document   : PLDTSHAdmin
    Created on : 21-Mar-2022, 1:53:48 PM
    Author     : Phillip, Devon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/main.css" rel="stylesheet" type="text/css"/>
        <title>PLDTSH Programming Club</title>
    </head>
    <body>
        <header data-role="header" data-position="fixed" data-theme="a">
                <jsp:include page="banner.jsp"></jsp:include>
            </header>
        <section>
            <h1>Admin : Data Maintenance</h1>
             <div>
                 <a href="PLDTSHDisplayBooks" style="color:darkgreen;">Maintain Books</a>
                 <a href="PLDTSHMemberAdmin" style="color:darkgreen;" name='action' value='displayMembers' method='GET'>Display Members</a>
             </div>
        </section>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>