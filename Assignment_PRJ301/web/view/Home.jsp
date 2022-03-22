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
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Home Page</title>
    </head>
    <body>
        <jsp:include flush="true" page="../banner/HeaderBanner.jsp"></jsp:include>
            <div class="main-slider">
                <div id="slider-koibento" class="carousel slide container-fluid" data-ride="carousel">
                    <div class="row">
                        <div class="col-md-12 col-xs-12">
                            <div class="carousel-inner slider-img">
                                <div class="carousel-item active slider-item-img">
                                    <img class="slide" src="image/bg-home.jpg" alt="First slide">
                                    <div class="slide-caption d-none d-md d-block">
                                        <a class ="oder-slider" href="product">đặt hàng</a>
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
                                <img src="image/bg-gt.jpg" alt="Xu huong thoi trang">
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
                                    <span class="tab-title-content">TOP HIGH PRODUCT</span>
                                    <b></b>
                                </h3>
                            </div>
                        </div>
                    </div>

                    <div id="tab-1" class="row tab-content row-show ">
                        <div class="row">
                        <c:forEach items = "${requestScope.top9product}" var="product">
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
                </div>
            </div> <br>
            <div>
                <img class="end-home" src="image/ft-bgjpg.png">
            </div> <br>
        </div> 
        <jsp:include flush="true" page="../banner/Footer.jsp"></jsp:include>
    </body>
</html>
