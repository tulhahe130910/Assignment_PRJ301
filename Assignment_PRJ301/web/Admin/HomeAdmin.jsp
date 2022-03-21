<%-- 
    Document   : HomeAdmin
    Created on : Mar 12, 2022, 9:31:32 PM
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
        <title> Admin </title>
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
            <div class="main-content">
                <div class="row">
                    <div class="col-3 col-md-6 col-sm-12">
                        <div class="box box-hover">
                            <!-- COUNTER -->
                            <div class="counter">
                                <div class="counter-title">
                                    total order
                                </div>
                                <div class="counter-info">
                                    <div class="counter-count">
                                        ${total_order}
                                    </div>
                                    <i class='bx bx-shopping-bag'></i>
                                </div>
                            </div>
                            <!-- END COUNTER -->
                        </div>
                    </div>
                    <div class="col-3 col-md-6 col-sm-12">
                        <div class="box box-hover">
                            <!-- COUNTER -->
                            <div class="counter">
                                <div class="counter-title">
                                    Total user
                                </div>
                                <div class="counter-info">
                                    <div class="counter-count">
                                        ${total_user}
                                    </div>
                                    <i class='bx bx-user'></i>
                                </div>
                            </div>
                            <!-- END COUNTER -->
                        </div>
                    </div>
                    <div class="col-3 col-md-6 col-sm-12">
                        <div class="box box-hover">
                            <!-- COUNTER -->
                            <div class="counter">
                                <div class="counter-title">
                                    total profit
                                </div>
                                <div class="counter-info">
                                    <div class="counter-count">
                                        ${total_profit}
                                    </div>
                                    <i class='bx bx-line-chart'></i>
                                </div>
                            </div>
                            <!-- END COUNTER -->
                        </div>
                    </div>
                    <div class="col-3 col-md-6 col-sm-12">
                        <div class="box box-hover">
                            <!-- COUNTER -->
                            <div class="counter">
                                <div class="counter-title">
                                    Total Product
                                </div>
                                <div class="counter-info">
                                    <div class="counter-count">
                                        ${total_product}
                                    </div>
                                    <i class='bx bx-category'></i>
                                </div>
                            </div>
                            <!-- END COUNTER -->
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-3 col-md-6 col-sm-12">
                        <!-- TOP PRODUCT -->
                        <div class="box f-height">
                            <div class="box-header">
                                top product price
                            </div>
                            <div class="box-body">
                                <c:forEach items="${requestScope.top4product}" var="top">
                                    <ul class="product-list">
                                        <li class="product-list-item">
                                            <div class="item-info">
                                                <img src="image/${top.image}" alt="product image">
                                                <div class="item-name">
                                                    <div class="product-name">${top.name}</div>
                                                    <div class="text-second">${top.category.name}</div>
                                                </div>
                                            </div>
                                            <div class="item-sale-info">
                                                <div class="product-sales">${top.price}</div>
                                            </div>
                                        </li>
                                    </ul>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 col-md-6 col-sm-12">
                        <!-- CATEGORY CHART -->
                        <div class="box f-height">
                            <div class="box-body">
                                <div id="category-chart"></div>
                            </div>
                        </div>
                        <!-- END CATEGORY CHART -->
                    </div>
                    <div class="col-5 col-md-12 col-sm-12">
                        <!-- CUSTOMERS CHART -->
                        <div class="box f-height">
                            <div class="box-header">
                                Profit Week Daily
                            </div>
                            <div class="box-body">
                                <div id="customer-chart"></div>
                            </div>
                        </div>
                        <!-- END CUSTOMERS CHART -->
                    </div>
                    <div class="col-12">
                        <!-- ORDERS TABLE -->
                        <div class="box">
                            <div class="box-header">
                                Recent orders
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
        <script>
            let category = []
            <c:forEach items="${requestScope.listCate}" var="cate">
            category.push("${cate.name}")
            </c:forEach>
            let countCate = []
            <c:forEach items="${requestScope.listcount}" var="lc">
            countCate.push(${lc})
            </c:forEach>
            let category_options = {
                series: countCate,
                labels: category,
                chart: {
                    type: 'donut',
                },
                colors: ['#6ab04c', '#2980b9', '#f39c12', '#d35400']
            }

            let category_chart = new ApexCharts(document.querySelector("#category-chart"), category_options)
            category_chart.render()

            let profit = []
            let quantity = []
            let date = []
            <c:forEach items="${requestScope.listprofitweek}" var="lw">
            profit.push("${lw.totalmoney}")
            quantity.push("${lw.quanlity}")
            date.push("${lw.date}")
            </c:forEach>

            let customer_options = {
                series: [{
                        name: "Profit",
                        data: profit
                    }, {
                        name: "Product Solds",
                        data: quantity
                    }],
                colors: ['#6ab04c', '#2980b9'],
                chart: {
                    height: 350,
                    type: 'line',
                },
                dataLabels: {
                    enabled: false
                },
                stroke: {
                    curve: 'smooth'
                },
                xaxis: {
                    categories: date,
                },
                legend: {
                    position: 'top'
                }
            }

            let customer_chart = new ApexCharts(document.querySelector("#customer-chart"), customer_options)
            customer_chart.render()
        </script>

    </body>

</html>
