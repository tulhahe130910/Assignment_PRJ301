<%-- 
    Document   : HeaderBanner
    Created on : Mar 2, 2022, 2:42:49 PM
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://kit.fontawesome.com/31a284aacb.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Header Page</title>
    </head>
    <body>
        <div class="main-header" id="site-header">
            <div class="container main-header-container">
                <div class="row">
                    <div class="col-sm-1 col-xs-12">
                        <div class="logo">
                            <a href="#"><img src="image/logo.png" alt="logo 9x"></a>
                        </div>
                    </div>
                    <div class="col-sm-11 col-xs-12">
                        <nav class="navbar navbar-expand-lg navbar-main-nav">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#my-narbar">
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="my-narbar">
                                <ul class="navbar-nav menu">
                                    <li class="nav-item">
                                        <a class="nav-link" href="home">Trang chủ</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="about">Giới thiệu</a>
                                    <li class="nav-item">
                                        <a class="nav-link" href="product">Sản Phẩm</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="contact">Liên Hệ</a>
                                    </li>
                                    <c:if test="${sessionScope.user==null}">
                                        <li>
                                            <a class="nav-link" href="Login">Login</a>
                                        </li>
                                    </c:if>
                                    <c:if test="${sessionScope.user!=null}">
                                        <li>
                                            <a class="nav-link" href="profile?id=${sessionScope.user.id}">Profile</a>
                                        </li>
                                        <li>
                                            <a class="nav-link" href="logout">Logout</a>
                                        </li>
                                    </c:if>

                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

        <div class="fix-menu">
            <div class="header-dropdown">
                <div class="container dropdown-container-header">
                    <div class="row">
                        <div class="col-md-2 col-xs-12 hidden-xs">

                        </div>
                        <div class="col-md-7 col-xs-12">
                            <form action="" method="GET" id="Search-dropdown">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Bạn muốn mua gì?" name="search" id="search-dropdown-input">
                                    <button type="submit" value="Search" class="btn-search" name="search">
                                        <i class="fa fa-search"></i>
                                    </button>  
                                </div>
                            </form>
                        </div>
                        <div class="col-md-3 col-xs-12 hidden-xs">
                            <span class="cart-koi cart-koi-img">
                                <a href="cart">
                                    <span class="hd-cart-title">GIỎ HÀNG  
                                        <span class="cart-price">
                                            <span class="cart-amount price-amout"></span>
                                        </span>
                                    </span><img src="image/cart.png">${sessionScope.carts.size()}
                                </a>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
