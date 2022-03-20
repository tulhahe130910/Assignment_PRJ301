<%-- 
    Document   : ListOrder
    Created on : Mar 21, 2022, 12:56:52 AM
    Author     : david
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
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
            <div class="container-fluid">
                <div class="Sort">                                    
                    <form id="f" action="list-order?sort=${requestScope.sort}">
                        <select name="sort" style="padding:5px" onchange="document.getElementById('f').submit()"> 
                            <option>All List</option>
                            <option value="1" <c:if test="${sort==1}">
                                    selected
                                </c:if> >Pending Order</option>
                            <option value="2" <c:if test="${sort==2}">
                                    selected
                                </c:if> >Shipping Order</option>
                            <option value="3" <c:if test="${sort==3}">
                                    selected
                                </c:if> >Reject Order</option>
                        </select>
                    </form>
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
                                            <th>Full Name</th>
                                            <th>Date</th>
                                            <th>Phone</th>
                                            <th>Address</th>
                                            <th>Note</th>
                                            <th>Status</th>
                                            <th>Total money</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${requestScope.listorder}" var="lo">
                                            <tr>
                                                <td>${lo.id}</td>
                                                <td>
                                                    <div class="order-owner">
                                                        <span>${lo.name}</span>
                                                    </div>
                                                </td>
                                                <td>${lo.date}</td>
                                                <td>${lo.phone}</td>
                                                <td>${lo.address}</td>
                                                <td>${lo.note}</td>
                                                <c:if test="${lo.status==0}">
                                                    <td>
                                                        <div class="payment-status payment-pending">
                                                            <div class="dot"></div>
                                                            <span>Pending</span>
                                                        </div
                                                    </td>
                                                </c:if>
                                                <c:if test="${lo.status==1}">
                                                    <td>
                                                        <div class="payment-status payment-paid">
                                                            <div class="dot"></div>
                                                            <span>Shipping</span>
                                                        </div
                                                    </td>
                                                </c:if>
                                                <c:if test="${lo.status==2}">
                                                    <td>
                                                        <div class="payment-status payment-reject">
                                                            <div class="dot"></div>
                                                            <span>Reject</span>
                                                        </div
                                                    </td>
                                                </c:if>
                                                <td>${lo.totalmoney}</td>
                                                <c:if test="${lo.status==0}">
                                                    <td>
                                                        <span class="order-status order-ready">
                                                            <a href="accept-order?id=${lo.id}" >Accept</a>
                                                        </span>
                                                    </td>
                                                    <td>
                                                        <span class="order-status order-ready">
                                                            <a href="reject-order?id=${lo.id}" >Reject</a>
                                                        </span>
                                                    </td>
                                                </c:if>



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
