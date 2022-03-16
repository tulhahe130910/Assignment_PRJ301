<%-- 
    Document   : ListCate
    Created on : Mar 16, 2022, 3:41:55 PM
    Author     : david
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Admin List Product </title>
        <link rel="shortcut icon" href="/images/logo-mb.png" type="image/png">
        <!-- GOOGLE FONT -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
        <!-- BOXICONS -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <!-- APP CSS -->
        <link href="css/app.css" rel="stylesheet" type="text/css"/>
        <link href="css/grid.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript">
            function doDelete(id){
                if(confirm("Are you sure want to delete category with id="+id+" ?")){
                    window.location="delete-category?id="+id;
                }
            }
        </script>
    </head>

    <body>
        <jsp:include page="HeaderAdmin.jsp" flush="true"/>
        <!-- END SIDEBAR -->

        <!-- MAIN CONTENT -->
        <div class="main">
            <div class="main-header">
                <div class="mobile-toggle" id="mobile-toggle">
                    <i class='bx bx-menu-alt-right'></i>
                </div>
                <div class="main-title">
                    dashboard
                </div>
            </div>
            <div class="main-content">
                <div class="row">                    
                    <div class="col-12">
                        <!-- ORDERS TABLE -->
                        <div class="box">
                            <div class="box-header">
                                List Category
                            </div>
                            <div class="box-body overflow-scroll">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Name</th>
                                            <th>Update</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${requestScope.listcate}" var="lc">
                                            <tr>
                                                <td>${lc.id}</td>
                                                <td>
                                                    <div class="order-owner">
                                                        <span>${lc.name}</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <span class="order-status order-ready">
                                                        <a href="update-cate?id=${lc.id}" >Update</a>
                                                    </span>
                                                </td>
                                                <td>
                                                    <span class="order-status order-ready">
                                                        <a href="#" onclick="doDelete('${lc.id}')">Delete</a>
                                                    </span>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- END ORDERS TABLE -->
                    </div>
                </div>
            </div>
        </div>
        <!-- END MAIN CONTENT -->

        <div class="overlay"></div>

        <!-- SCRIPT -->
        <!-- APEX CHART -->
        <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
        <!-- APP JS -->
        <script src="../js/app.js"></script>
    </body>
</html>
