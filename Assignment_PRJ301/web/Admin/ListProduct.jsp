<%-- 
    Document   : ListProduct
    Created on : Mar 12, 2022, 9:51:02 PM
    Author     : david
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                if(confirm("Are you sure want to delete product with id="+id+" ?")){
                    window.location="delete-product?id="+id;
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
                                List Product
                            </div>
                            <div class="box-body overflow-scroll">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Name</th>
                                            <th>Price</th>
                                            <th>Category</th>
                                            <th>Quantity</th>
                                            <th>Update</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${requestScope.listproduct}" var="lp">
                                            <tr>
                                                <td>${lp.id}</td>
                                                <td>
                                                    <div class="order-owner">
                                                        <img src="image/${lp.image}" alt="user image">
                                                        <span>${lp.name}</span>
                                                    </div>
                                                </td>
                                                <td>${lp.price}</td>
                                                <td>${lp.category.name}</td>
                                                <td>${lp.quantity}</td>
<!--                                                <td>
                                                    <span class="order-status order-ready">
                                                        <a href="add-product">Add</a>
                                                    </span>
                                                </td>-->
                                                <td>
                                                    <span class="order-status order-ready">
                                                        <a href="update-product?id=${lp.id}" >Update</a>
                                                    </span>
                                                </td>
                                                <td>
                                                    <span class="order-status order-ready">
                                                        <a href="#" onclick="doDelete('${lp.id}')">Delete</a>
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
