<%-- 
    Document   : Cart
    Created on : Mar 9, 2022, 6:15:22 PM
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
        <title>Cart</title>
    </head>
    <body>
        <jsp:include flush="true" page="../banner/HeaderBanner.jsp"></jsp:include>
            <div class="bgmenu_box">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12 bgmenu_box">
                            <div class="ovrly-bg"></div>
                            <div class="caption-bg">
                                <h2 class="menu-text" style="color: white">Menu</h2>
                                <a href="#">Trang chủ /</a>  
                                <a href="#"><span style="color:white">Giỏ Hàng</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="cart-shop" id="cart-oder">
                <div class="container">
                    <div class="row row-total-top">
                        <div class="col-sm-12 col-xs-12">
                            <form action="" method="post" id="form-cart8428">
                                <div class="table-responsive table-cart-content">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th class="text-center">
                                                    <strong>Ảnh</strong>
                                                </th>
                                                <th class="text-center">
                                                    <strong>Sản phẩm</strong>
                                                </th>
                                                <th class="text-center">
                                                    <strong>Giá tiền</strong>
                                                </th>
                                                <th class="text-center">
                                                    <strong>Số lượng</strong>
                                                </th>
                                                <th class="text-center">
                                                    <strong>Tổng tiền</strong>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${sessionScope.carts}" var="c">
                                            <tr>
                                                <td><img src="image/${c.value.product.image}" style="width: 300px; height: 300px;"></td>
                                                <td>${c.value.product.name}</td>
                                                <td>${c.value.product.price}</td>
                                                <td>${c.value.quantity}</td>
                                                <td>${c.value.quantity*c.value.product.price}</td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th colspan="4" class="text-center">${total}</th>
                                                <th class="total-price text-center">
                                                    <span class="total">
                                                        <strong></strong>
                                                    </span>
                                                </th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="row row-total">
                        <div class="col-sm-8"></div>
                        <div class="col-sm-4 col-sm-offset-8">
                            <h3>Thanh Toán</h3>
                            <table class="table table-bordered">
                                <tbody>
                                    <tr>
                                        <td class="text-right">${total}</td>
                                        <td class="text-right"><strong></strong></td>
                                    </tr>

                                    <tr>
                                        <td class="text-right">Phí vận chuyển được tính khi xử lý đơn hàng:</td>
                                        <td class="text-right"><strong>30000</strong></td> 
                                    </tr>
                                    <tr>
                                        <td class="text-right">${total+30000}</td>
                                        <td class="text-right"><strong></strong></td>
                                    </tr>
                                </tbody>
                            </table>
                            <a href="pay" class="checkout-oder">TIẾN HÀNH THANH TOÁN</a>
                        </div>
                    </div>
                </div>
            </div>
        <jsp:include flush="true" page="../banner/Footer.jsp"></jsp:include>
    </body>
</html>
