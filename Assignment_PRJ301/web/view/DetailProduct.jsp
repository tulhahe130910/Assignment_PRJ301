<%-- 
    Document   : DetailProduct
    Created on : Mar 14, 2022, 10:43:52 PM
    Author     : david
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="/images/logo-mb.png" type="image/png">
        <!-- GOOGLE FONT -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
        <!-- BOXICONS -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <!-- APP CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Detail Product</title>
    </head>
    <body>
        <jsp:include flush="true" page="../banner/HeaderBanner.jsp"></jsp:include>
            <br>
            <div class="site-section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <c:forEach items="${requestScope.product}" var="p">
                            <img src="image/${p.image}" alt="Image" class="img-fluid">
                            </div>
                            <div class="col-md-6" style="margin-top: 200px">
                                <div class="asds" style="margin-left: 50px">
                                <h2 class="text-black">${p.name}</h2><br>
                                <p><strong class="text-primary h4">${p.price}VND</strong></p><br>
                                </c:forEach>
                                <div class="mb-1 d-flex"> 
                                    <label for="option-sm" class="d-flex mr-3 mb-3">
                                        <span class="d-inline-block mr-2" style="top:2px; position: relative;"><input type="radio" id="option-sm" name="shop-sizes"></span> <span class="d-inline-block text-black">M</span>
                                    </label>
                                    <label for="option-md" class="d-flex mr-3 mb-3">
                                        <span class="d-inline-block mr-2" style="top:2px; position: relative;"><input type="radio" id="option-md" name="shop-sizes"></span> <span class="d-inline-block text-black">L</span>
                                    </label>
                                    <label for="option-lg" class="d-flex mr-3 mb-3">
                                        <span class="d-inline-block mr-2" style="top:2px; position: relative;"><input type="radio" id="option-lg" name="shop-sizes"></span> <span class="d-inline-block text-black">XL</span>
                                    </label>
                                </div><br>
                                <div class="mb-5">
                                    <div class="input-group mb-3" style="max-width: 120px;">
                                        <div class="input-group-prepend">
                                            <button class="btn btn-outline-primary js-btn-minus" type="button">&minus;</button>
                                        </div>
                                        <input type="text" class="form-control text-center" value="1" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1">
                                        <div class="input-group-append">
                                            <button class="btn btn-outline-primary js-btn-plus" type="button">&plus;</button>
                                        </div>
                                    </div>
                                </div>
                                <p><a href="buy?id=1" class="buy-now btn btn-sm btn-primary">Add To Cart</a></p>
                            </div>
                            </div>
                    </div>
                </div>
            </div>
            <br>
            <jsp:include flush="true" page="../banner/Footer.jsp"></jsp:include>
            </body>
            </html>
