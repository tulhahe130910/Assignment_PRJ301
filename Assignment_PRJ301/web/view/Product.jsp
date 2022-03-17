<%-- 
    Document   : Product
    Created on : Mar 9, 2022, 5:33:26 PM
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
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <title>Product Page</title>
    </head>
    <body>
        <jsp:include flush="true" page="../banner/HeaderBanner.jsp"></jsp:include>
            <div class="main-slider">
                <div id="slider-koibento" class="carousel slide container-fluid" data-ride="carousel">
                    <div class="row">
                        <div class="col-md-12 col-xs-12">
                            <div class="carousel-inner slider-img">
                                <div class="carousel-item active slider-item-img">
                                    <img class="slide" src="image/background.jpg" alt="First slide">
                                    <div class="slide-caption d-none d-md d-block">
                                        <a class ="oder-slider" href="">đặt hàng</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                </div>
            </div>
            <div class="tab-menu-main">
                <div class="container container-tab-menu">
                    <div class="row row-panel-title">
                        <div class="col-md-12 col-xs-12">
                            <div class="tab-menu-wraper">
                                <h3 class="tab-title">
                                    <b></b>
                                    <span class="tab-title-content">FULL COLLECTION</span>
                                    <b></b>
                                </h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="Sort" style="float:left">                                    
                        <form id="f" action="product?sort=${requestScope.sort}?page=${requestScope.page}">
                        <select name="sort" style="padding:5px" onchange="document.getElementById('f').submit()"> 
                            <option>Sort by</option>
                            <option value="1" <c:if test="${sort==1}">
                                    selected
                                </c:if> >Price (Low -> High)</option>
                            <option value="2" <c:if test="${sort==2}">
                                    selected
                                </c:if> >Price (High -> Low)</option>
                            <option value="3" <c:if test="${sort==3}">
                                    selected
                                </c:if> >A -> Z</option>
                            <option value="4" <c:if test="${sort==4}">
                                    selected
                                </c:if> >Z -> A</option>
                        </select>
                    </form>
                </div>
            </div>
            <div class="container container-tab-menu">
                <div class="row row-btn-group">
                    <div class="col-sm-12 col-xs-12">
                        <ul class="button-tab-pannel button-group">
                            <li>
                                <a href="product" class="tab-link">All product</a>
                            </li>
                            <c:forEach items = "${requestScope.listCate}" var="cate">
                                <li>
                                    <a href="product?cid=${cate.id}" class="tab-link">${cate.name}</a>    
                                </li>
                            </c:forEach>
                        </ul>                      
                    </div>
                </div>
                <div id="tab-1" class="row tab-content row-show ">
                    <div class="row">
                        <c:forEach items = "${requestScope.listProduct}" var="product">
                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 my-col-fod" >
                                <div class="box-shadow">
                                    <div class="food-menu1-show">
                                        <img src="image/${product.image}" alt="T-shirt">
                                        <div class="ovrly"></div>
                                        <div class="buttons-img">
                                            <a class="fa fa-link"></a>
                                        </div>
                                    </div>
                                    <div class="box-food-text text-center">
                                        <div class="title-wrapper">
                                            <span class="price-food-no-sale">${product.price} VND</span>
                                            <a href="detail-product?id=${product.id}"><p class="product-title">${product.name}</p></a>
                                        </div>
                                        <div class="add-to-cart-food">
                                            <a href="buy?id=${product.id}" class="add-to-cart-a-food button-food-cart-more">Thêm vào Giỏ</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>

                    <div class="row page">
                        <div class="col-lg-12 text-center">
                            <div class="pagging">
                                <c:if test="${page>1}">
                                    <a class="gopage" href="product?page=${page-1}">Prev</a>
                                </c:if>
                                <c:forEach begin="${1}" end="${requestScope.num}" var="i">
                                    <c:if test="${cid==null}">
                                        <a class="${i==page?"activee":""}" href="product?page=${i}">${i}</a> 
                                    </c:if>
                                </c:forEach>
                                <c:if test="${page<num}">
                                    <a class="gopage" href="product?page=${page+1}">Next</a>
                                </c:if>
                            </div>
                        </div>
                    </div>
                    <br>
                </div>
            </div>
        </div> <br>
        <div>
            <img class="end-home" src="image/ft-bgjpg.png">
        </div> <br>
    </div> 
    <jsp:include flush="true" page="../banner/Footer.jsp"></jsp:include>
</body>
</html>
