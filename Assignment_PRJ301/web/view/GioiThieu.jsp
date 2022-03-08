<%-- 
    Document   : GioiThieu
    Created on : Mar 2, 2022, 3:49:41 PM
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
        <title>Gioi Thieu Page</title>
    </head>
    <body>
        <jsp:include flush="true" page="../banner/HeaderBanner.jsp"></jsp:include>
            <br>
            <form action="about" method="GET">
                <div class="bgmenu_box">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12 bgmenu_box">
                                <div class="ovrly-bg"></div>
                                <div class="caption-bg">
                                    <h2 class="menu-text" style="color: white">Menu</h2>
                                    <a href="">Trang chủ /</a>  
                                    <span style="color: white">Giới Thiệu </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="content-gioithieu">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 col-xs-12">
                                <div class="image">
                                    <img src="image/bg-gt.jpg">
                                </div>
                            </div>
                            <div class="col-md-6 col-xs-12">
                                <h3><b>Xu hướng thời trang mùa hè 2022</b></h3> <br>
                                <p>
                                    Thời trang là một phạm trù hết sức đa dạng và phong phú. Thời trang không đơn giản chỉ là cách ăn mặc, 
                                    cách mix match đồ hay việc diện đồ theo phong cách mình yêu thích. Trong thời trang luôn tiềm tàng những sự đổi mới,
                                    sự phá cách và sức sáng tạo đầy bất ngờ, ấn tượng. Với mỗi kiểu loại trang phục khác nhau, chúng sẽ mang đến những hiệu 
                                    ứng thời trang khác nhau và giúp bạn nâng tầm phong cách của mình theo cách riêng của bạn. Thời trang tất nhiên phải đi
                                    liền với những xu hướng thời trang khác biệt, đa dạng và đón nhận sự quan tâm không hề nhỏ. 
                                    Thời trang mùa hè năm nay cũng là chủ đề không kém phần “nóng hổi”. </p>
                                <p> Cùng 9X Store cập nhật những xu hướng thời trang mùa hè hot 2022 nhé ! </p>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        <jsp:include flush="true" page="../banner/Footer.jsp"></jsp:include>
    </body>
</html>
