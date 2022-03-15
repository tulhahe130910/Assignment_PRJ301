<%-- 
    Document   : Login
    Created on : Feb 27, 2022, 3:52:52 PM
    Author     : david
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/Login.css" rel="stylesheet" type="text/css" id="style"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="keywords" content="unique login form,leamug login form,boostrap login form,responsive login form,free css html login form,download login form">
        <meta name="author" content="leamug">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Dancing+Script" rel="stylesheet">
        <!-- Font Awesome-->
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <title>Login Website</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-offset-5 col-md-4 text-center">
                    <h1 class='text-white'>Welcome 9X Store</h1>
                    <h1>${requestScope.err}</h1>
                    <div class="form-login">
                        <form action="Login" method="POST">
                            <br>
                            <h2>Login</h2>
                            <br>
                            <input type="text" name="username" class="form-control input-sm chat-input" placeholder="username" />
                            <br>
                            <br>
                            <input type="password" name="password" class="form-control input-sm chat-input" placeholder="password" />
                            <br>
                            <br>
                            <div class="wrapper">
                                <span class="group-btn">
                                    <button class="btn btn-danger btn-md" id="btn-login" type="submit">Login<i class="fa fa-sign-in"></i></button>
                                    &ensp;&ensp;&ensp;
                                    <input type="checkbox" value="remember" name="remember"/> Remember Me! <br/>
                                </span>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
