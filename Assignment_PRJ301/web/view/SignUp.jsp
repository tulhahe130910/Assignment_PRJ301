<%-- 
    Document   : SignUp
    Created on : Mar 5, 2022, 2:46:44 PM
    Author     : david
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../css/SignUp.css" rel="stylesheet" type="text/css"/>
        <title>SignUp Page</title>
    </head>
    <body>
        <form action="" method="">
            <div id="login-box">
                <div class="left">
                    <h1>Sign up</h1>
                    <input type="text" name="username" placeholder="Username" />
                    <input type="password" name="password" placeholder="Password" />
                    <input type="text" name="address" placeholder="Address" />              
                    <input type="text" name="email" placeholder="E-mail">
                    <input type="submit" name="signup_submit" value="Sign Up" />
                </div>
                <div class="right">
                    <div class="loginwith">
                        <button class="social-signin facebook">Log in with Facebook</button>
                        <button class="social-signin twitter">Log in with Twitter</button>
                        <button class="social-signin google">Log in with Google+</button>
                    </div>
                </div>
                <div class="or">OR</div>
            </div>
        </form>
    </body>
</html>
