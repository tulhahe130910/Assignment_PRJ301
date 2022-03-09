<%-- 
    Document   : Pay
    Created on : Mar 9, 2022, 9:18:31 PM
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
        <link href="css/Pay.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include flush="true" page="../banner/HeaderBanner.jsp"></jsp:include>
            <div class="tab-menu-main">
                <div class="payment">
                    <div class="container">
                        <div class="row rw-top">
                            <div class="col-sm-12 col-xs-12">
                                <ul style="list-style:none; text-align:center;">
                                    <li style="display: inline-block">
                                        <a href="#">TRANG CHỦ /</a> 
                                    </li>

                                    <li style="display: inline-block">
                                        <a href="#">GIỎ HÀNG /</a>
                                    </li>	

                                    <li style="display: inline-block">
                                        <a href="#">THANH TOÁN</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="row row-center">
                            <div class="col-sm-6 col-xs-12">
                                <form  class="check-out check-out-peyment" method="" name="check-peyment" action="">
                                <div class="title-header">
                                    <h2 class="content-title">Thông tin giao hàng</h2>
                                </div>
                                <div class="input-payment-contain">
                                    <p class="form-firstname form-first" id="firstname-form">
                                        <label for="firstname-billing">Tên*</label>
                                        <input type="text" class="input-text" name="billing-firstname" id="firstname-billing" placeholder="" value="" 
                                               autocomplete="Nhập Tên" autofocus="autofocus">
                                    </p>
                                    <p class="form-nth-2 form-first" id="adress-form">
                                        <label for="billing-address">Địa chỉ*</label>
                                        <input type="text" class="input-text" name="billing-address" id="billing-address" placeholder="" value="" 
                                               autocomplete="Nhập địa chỉ" autofocus="autofocus">
                                    </p>
                                    <p class="form-phone form-first" id="phone-form">
                                        <label for="billing-phonen">Số điện thoại*</label>
                                        <input type="text" class="input-text" name="billing-phone" id="billing-phone" placeholder="" value="" 
                                               autocomplete="Nhập sdt" autofocus="autofocus">
                                    </p>
                                    <p class="form-mail-cl form-first" id="form-mail">
                                        <label for="billing-formmail-id">Nhập mail*</label>
                                        <input type="email" class="input-text" name="billing-formmail" id="billing-formmail-id" placeholder="" value="" 
                                               autocomplete="Nhập email" autofocus="autofocus">
                                    </p>
                                    <p class="form-comment form-first" id="form-comment">
                                        <label for="oder-comment">Ghi chú thêm*</label>
                                        <textarea name="oder-comment"  class="input-comment" id="oder-comment" 
                                        placeholder="Ghi chú thêm về đơn hàng, ví dụ: thời gian nhận hàng địa chỉ chi tiết hơn.."></textarea>
                                    </p>
                                    <br>
                                    <p>
                                        <input type="submit" name="submit" value="Thanh Toán">
                                    </p>
                                </div>
                            </form>
                        </div>
                        <div class="col-sm-6 col-xs-12"></div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include flush="true" page="../banner/Footer.jsp"></jsp:include>
    </body>
</html>
