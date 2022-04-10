<%-- 
    Document   : Banner
    Created on : 20-Feb-2022, 10:11:01 AM
    Author     : Phillip, Devon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/main.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <img src="images/pldtsh-icon.png" alt="penguin"/>
            <div id="header">
                <h1 id="title">PLDTSH Computer Programming Club</h1>
                <h2 style="color:darkgreen;"><i>IT@Conestoga</i></h2>
            </div>
        </header>
        <div data-iconpos="top">
                <ul id="navbar">
                    <div>                     
                        <b><li id="navbarItem"><a href="index.jsp" >Home</a></li>
                        <li id="navbarItem"><a href="register.jsp" >Register</a></li>
                        <li id="navbarItem"><a href="PLDTSHELoan.jsp" >eLoan</a></li>
                        <li id="navbarItem"><a href="PLDTSHECart.jsp" >eCart</a></li>
                        <li id="navbarItem"><a href="admin.jsp" ">Admin</a></li></b>
                    </div>
                </ul>
            </div>
    </body>
</html>
