<%-- 
    Document   : Home
    Created on : Mar 6, 2022, 9:03:32 PM
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
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Home Page</title>
    </head>
    <body>
        <jsp:include flush="true" page="../banner/HeaderBanner.jsp"></jsp:include>
            <div class="main-slider">
                <div id="slider-koibento" class="carousel slide container-fluid" data-ride="carousel">
                    <div class="row">
                        <div class="col-md-12 col-xs-12">
                            <ul class="carousel-indicators slider-prev-next-list">
                                <li data-target="#slider-koibento" data-slide-to="0" class="list-ol active"></li>
                                <li data-target="#slider-koibento" data-slide-to="1" class="list-ol"></li>
                                <li data-target="#slider-koibento" data-slide-to="2" class="list-ol"></li>
                            </ul>
                            <div class="carousel-inner slider-img">
                                <div class="carousel-item active slider-item-img">
                                    <img class="slide" src="../image/bg-home.jpg" alt="First slide">
                                    <div class="slide-caption d-none d-md d-block">
                                        <a class ="oder-slider" href="">đặt hàng</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                </div>
            </div>
            
            <div class="menu-title-main">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-12 col-title-img">
                        <div class="div-title-img">
                            <img src="../image/bg-gt.jpg" alt="Xu huong thoi trang">
                        </div>
                    </div>
                    <div class="col-sm-6 col-xs-12 col-tile-text">
                        <div class="p-title">
                            <p>Xu hướng thời trang mùa hè 2022</p>
                            <p>Thời trang là một phạm trù hết sức đa dạng và phong phú. Thời trang không đơn giản chỉ là cách ăn mặc, 
                               cách mix match đồ hay việc diện đồ theo phong cách mình yêu thích. Trong thời trang luôn tiềm tàng những 
                               sự đổi mới, sự phá cách và sức sáng tạo đầy bất ngờ, ấn tượng. Với mỗi kiểu loại trang phục khác nhau, 
                               chúng sẽ mang đến những hiệu ứng thời trang khác nhau và giúp bạn nâng tầm phong cách của mình theo cách 
                               riêng của bạn.</p>
                            <p>Thời trang tất nhiên phải đi liền với những xu hướng thời trang khác biệt, đa dạng và đón nhận sự quan 
                               tâm không hề nhỏ. Thời trang mùa hè năm nay cũng là chủ đề không kém phần “nóng hổi”.</p>
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
                <div class="row row-btn-group">
                    <div class="col-sm-12 col-xs-12">
                        <ul class="button-tab-pannel button-group">
                            <li>
                                <a class="tab-link" href="#tab-1">All product</a>
                            </li>
                            <li>
                                <a class="tab-link" href="#tab-2">T-Shirt</a>
                            </li>
                            <li>
                                <a class="tab-link" href="#tab-3">Pants/Shorts</a>
                            </li>
                            <li>
                                <a class="tab-link" href="#tab-4">Accessories</a>
                            </li>
                            
                        </ul>
                    </div>
                </div>
                <div id="tab-1" class="row tab-content row-show ">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 my-col-fod">
                            <div class="box-shadow">
                                <div class="food-menu1-show">
                                    <img src="../image/img1.jpg" alt="T-shirt">
                                    <div class="ovrly"></div>
                                    <div class="buttons-img">
                                        <a href="#" class="fa fa-link"></a>
                                    </div>
                                </div>
                                <div class="box-food-text text-center">
                                    <div class="title-wrapper">
                                        <span class="price-food">350000VND</span>
                                        <span class="price-food-no-sale">250000VND</span>
                                        <p class="product-title">BARISS T-shirt</p>
                                    </div>
                                    <div class="add-to-cart-food">
                                        <a href="#" class="add-to-cart-a-food button-food-cart-more">Thêm vào Giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 my-col-fod ">
                            <div class="box-shadow">
                                <div class="food-menu1-show">
                                    <img src="../image/img2.jpg" alt="T-shirt">
                                    <div class="ovrly"></div>
                                    <div class="buttons-img">
                                        <a href="#" class="fa fa-link"></a>
                                    </div>
                                </div>
                                <div class="box-food-text text-center">
                                    <div class="title-wrapper">
                                        <span class="price-food">300000VND</span>
                                        <span class="price-food-no-sale">180000VND</span>
                                        <p class="product-title">Candles Essential Tshirt Logo</p>
                                    </div>
                                    <div class="add-to-cart-food">
                                        <a href="#" class="add-to-cart-a-food button-food-cart-more">Thêm vào Giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>	
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 my-col-fod ">
                            <div class="box-shadow">
                                <div class="food-menu1-show">
                                    <img src="../image/img3.jpg" alt="Goodvibe Tshirt">
                                    <div class="ovrly"></div>
                                    <div class="buttons-img">
                                        <a href="#" class="fa fa-link"></a>
                                    </div>
                                </div>
                                <div class="box-food-text text-center">
                                    <div class="title-wrapper">
                                        <span class="price-food">370000VND</span>
                                        <span class="price-food-no-sale">250000VND</span>
                                        <p class="product-title">Goodvibe Tshirt</p>

                                    </div>
                                    <div class="add-to-cart-food">
                                        <a href="#" class="add-to-cart-a-food button-food-cart-more">Thêm vào Giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>	
                    </div>
                </div>
                <div id="tab-2" class="row tab-content row-show">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 my-col-fod">
                            <div class="box-shadow">
                                <div class="food-menu1-show">
                                    <img src="../image/img1.jpg" alt="T-shirt">
                                    <div class="ovrly"></div>
                                    <div class="buttons-img">
                                        <a href="#" class="fa fa-link"></a>
                                    </div>
                                </div>
                                <div class="box-food-text text-center">
                                    <div class="title-wrapper">
                                        <span class="price-food">350000VND</span>
                                        <span class="price-food-no-sale">250000VND</span>
                                        <p class="product-title">BARISS T-shirt</p>
                                    </div>
                                    <div class="add-to-cart-food">
                                        <a href="#" class="add-to-cart-a-food button-food-cart-more">Thêm vào Giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>	
                <div id="tab-3" class="row tab-content row-show">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 my-col-fod">
                            <div class="box-shadow">
                                <div class="food-menu1-show">
                                    <img src="../image/img7.jpg" alt="Pant/Shorts">
                                    <div class="ovrly"></div>
                                    <div class="buttons-img">
                                        <a href="#" class="fa fa-link"></a>
                                    </div>
                                </div>
                                <div class="box-food-text text-center">
                                    <div class="title-wrapper">
                                        <span class="price-food">300000VND</span>
                                        <span class="price-food-no-sale">250000VND</span>
                                        <p class="product-title">Shorts</p>
                                    </div>
                                    <div class="add-to-cart-food">
                                        <a href="#" class="add-to-cart-a-food button-food-cart-more">Thêm vào Giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include flush="true" page="../banner/Footer.jsp"></jsp:include>
    </body>
</html>
