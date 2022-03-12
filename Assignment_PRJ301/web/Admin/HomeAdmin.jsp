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
        <link href="../css/app.css" rel="stylesheet" type="text/css"/>
        <link href="../css/grid.css" rel="stylesheet" type="text/css"/>
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
                                        6578
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
                                    conversion rate
                                </div>
                                <div class="counter-info">
                                    <div class="counter-count">
                                        30.5%
                                    </div>
                                    <i class='bx bx-chat'></i>
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
                                        $9,780
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
                                    daily visitors
                                </div>
                                <div class="counter-info">
                                    <div class="counter-count">
                                        690
                                    </div>
                                    <i class='bx bx-user'></i>
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
                                top product
                            </div>
                            <div class="box-body">
                                <ul class="product-list">
                                    <li class="product-list-item">
                                        <div class="item-info">
                                            <img src="./images/thumb-7.jpg" alt="product image">
                                            <div class="item-name">
                                                <div class="product-name">Jacket</div>
                                                <div class="text-second">Cloths</div>
                                            </div>
                                        </div>
                                        <div class="item-sale-info">
                                            <div class="text-second">Sales</div>
                                            <div class="product-sales">$5,930</div>
                                        </div>
                                    </li>
                                    <li class="product-list-item">
                                        <div class="item-info">
                                            <img src="./images/sneaker.jpg" alt="product image">
                                            <div class="item-name">
                                                <div class="product-name">sneaker</div>
                                                <div class="text-second">Cloths</div>
                                            </div>
                                        </div>
                                        <div class="item-sale-info">
                                            <div class="text-second">Sales</div>
                                            <div class="product-sales">$5,930</div>
                                        </div>
                                    </li>
                                    <li class="product-list-item">
                                        <div class="item-info">
                                            <img src="./images/headphone.jpg" alt="product image">
                                            <div class="item-name">
                                                <div class="product-name">headphone</div>
                                                <div class="text-second">Devices</div>
                                            </div>
                                        </div>
                                        <div class="item-sale-info">
                                            <div class="text-second">Sales</div>
                                            <div class="product-sales">$5,930</div>
                                        </div>
                                    </li>
                                    <li class="product-list-item">
                                        <div class="item-info">
                                            <img src="./images/backpack.jpg" alt="product image">
                                            <div class="item-name">
                                                <div class="product-name">Backpack</div>
                                                <div class="text-second">Bags</div>
                                            </div>
                                        </div>
                                        <div class="item-sale-info">
                                            <div class="text-second">Sales</div>
                                            <div class="product-sales">$5,930</div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- TOP PRODUCT -->
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
                                customers
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
                                            <th>Customer</th>
                                            <th>Date</th>
                                            <th>Order status</th>
                                            <th>Payment status</th>
                                            <th>Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>#2345</td>
                                            <td>
                                                <div class="order-owner">
                                                    <img src="./images/user-image.jpg" alt="user image">
                                                    <span>tuat tran anh</span>
                                                </div>
                                            </td>
                                            <td>2021-05-09</td>
                                            <td>
                                                <span class="order-status order-ready">
                                                    Ready
                                                </span>
                                            </td>
                                            <td>
                                                <div class="payment-status payment-pending">
                                                    <div class="dot"></div>
                                                    <span>Pending</span>
                                                </div>
                                            </td>
                                            <td>$123.45</td>
                                        </tr>
                                        <tr>
                                            <td>#2345</td>
                                            <td>
                                                <div class="order-owner">
                                                    <img src="./images/user-image-2.png" alt="user image">
                                                    <span>John doe</span>
                                                </div>
                                            </td>
                                            <td>2021-05-09</td>
                                            <td>
                                                <span class="order-status order-shipped">
                                                    Shipped
                                                </span>
                                            </td>
                                            <td>
                                                <div class="payment-status payment-paid">
                                                    <div class="dot"></div>
                                                    <span>Paid</span>
                                                </div>
                                            </td>
                                            <td>$123.45</td>
                                        </tr>
                                        <tr>
                                            <td>#2345</td>
                                            <td>
                                                <div class="order-owner">
                                                    <img src="./images/user-image-3.png" alt="user image">
                                                    <span>evelyn</span>
                                                </div>
                                            </td>
                                            <td>2021-05-09</td>
                                            <td>
                                                <span class="order-status order-shipped">
                                                    Shipped
                                                </span>
                                            </td>
                                            <td>
                                                <div class="payment-status payment-paid">
                                                    <div class="dot"></div>
                                                    <span>Paid</span>
                                                </div>
                                            </td>
                                            <td>$123.45</td>
                                        </tr>
                                        <tr>
                                            <td>#2345</td>
                                            <td>
                                                <div class="order-owner">
                                                    <img src="./images/user-image-2.png" alt="user image">
                                                    <span>John doe</span>
                                                </div>
                                            </td>
                                            <td>2021-05-09</td>
                                            <td>
                                                <span class="order-status order-shipped">
                                                    Shipped
                                                </span>
                                            </td>
                                            <td>
                                                <div class="payment-status payment-paid">
                                                    <div class="dot"></div>
                                                    <span>Paid</span>
                                                </div>
                                            </td>
                                            <td>$123.45</td>
                                        </tr>
                                        <tr>
                                            <td>#2345</td>
                                            <td>
                                                <div class="order-owner">
                                                    <img src="./images/user-image-3.png" alt="user image">
                                                    <span>evelyn</span>
                                                </div>
                                            </td>
                                            <td>2021-05-09</td>
                                            <td>
                                                <span class="order-status order-shipped">
                                                    Shipped
                                                </span>
                                            </td>
                                            <td>
                                                <div class="payment-status payment-paid">
                                                    <div class="dot"></div>
                                                    <span>Paid</span>
                                                </div>
                                            </td>
                                            <td>$123.45</td>
                                        </tr>
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
