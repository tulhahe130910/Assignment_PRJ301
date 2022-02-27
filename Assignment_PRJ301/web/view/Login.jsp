<%-- 
    Document   : Login
    Created on : Feb 27, 2022, 3:52:52 PM
    Author     : david
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/Login.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="wrapper">
                <div class="container">
                    <h1>Welcome website</h1>
                    <form action="login" method="POST">
                        <input type="text" name="username" placeholder="Username">
                        <input type="password" name="password" placeholder="Password">
                        <button type="submit" id="login-button">Login</button>
                    </form>
                </div>
            </div>
    </body>
</html>
