<%-- 
    Document   : Contact
    Created on : Mar 2, 2022, 3:52:44 PM
    Author     : david
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://kit.fontawesome.com/31a284aacb.js"></script>
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Contact Page</title>
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
                                <a href="">Trang chủ /</a>  
                                <span style="color: white">Liên hệ với chúng tôi </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="vekoi-blog">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-xs-12">
                            <div class="text-content"> <br>
                                <h2>Góp ý của quý khánh là nền tảng cho chúng tôi cải thiện và nâng cao chất lượng dịch vụ. chúng tôi luôn luôn tôn trọng mọi ý kiến của khánh hàng với tiêu chí khách hàng là thượng đế, Mọi ý kiến đóng góp vui lòng liên hệ với chúng tôi.</h2>
                                <p>Xin chân thành cảm ơn</p>
                                <p>Liên hệ với 9X-Store</p>
                                <p>HOTLINE: 0329139333</p>
                                <p>Hoặc qua email :</p>
                                <p><i class="block_icon fas fa-envelope" aria-hidden="true"></i> 9xstore@gmail.com</p>
                                <p>- Chi nhánh hà nội - </p>
                                <p>Cầu Giấy, Hà Nội</p>
                                <p>Mở của lúc 8h30 sáng - đóng cửa 22h00 tối</p>
                                <p>- Chi nhánh Hồ Chí Minh -</p>
                                <p>Coming soon....</p> <br>
                            </div>
                        </div>	
                        <div class="col-md-6 col-xs-12">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.041095872794!2d105.79841691533213!3d21.031041593075333!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab41388ed17d%3A0x7f7640f4d4868730!2zNjggxJAuIEPhuqd1IEdp4bqleSwgUXVhbiBIb2EsIEPhuqd1IEdp4bqleSwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1646212467160!5m2!1svi!2s" 
                                    width="600" height="450" style="border:0;" frameborder="0" allowfullscreen="" loading="lazy"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        <jsp:include flush="true" page="../banner/Footer.jsp"></jsp:include>
    </body>
</html>
