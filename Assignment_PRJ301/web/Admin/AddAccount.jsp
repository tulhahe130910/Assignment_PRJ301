<%-- 
    Document   : AddAccount
    Created on : Mar 16, 2022, 10:08:05 PM
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
        <title> Admin Add Account </title>
        <!-- GOOGLE FONT -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
        <!-- BOXICONS -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <!-- APP CSS -->
        <link href="css/app.css" rel="stylesheet" type="text/css"/>
        <link href="css/grid.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
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
                <div class="col-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Add Account</h4>
                            <p class="card-description"> Add Account </p>
                            <form class="forms-sample" action="add-account" method="post">
                                <div class="form-group">
                                    <label for="InputId">ID</label>
                                    <input type="text" name="id" class="form-control" id="InputId" placeholder="ID">
                                </div>
                                <div class="form-group">
                                    <label for="InputUsername">Username</label>
                                    <input type="text" name="username" class="form-control" id="InputUsername" placeholder="Username">
                                </div>
                                <div class="form-group">
                                    <label for="InputPass">Password</label>
                                    <input type="password" name="password" class="form-control" id="InputPass" placeholder="Password">
                                </div>
                                <div class="form-group">
                                    <label for="InputEmail">Email</label>
                                    <input type="text" name="email" class="form-control" id="InputEmail" placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <label for="InputPhone">Phone</label>
                                    <input type="text" name="phone" class="form-control" id="InputPhone" placeholder="Phone">
                                </div>
                                <div class="form-group">
                                    <label for="InputAddress">Address</label>
                                    <input type="text" name="address" class="form-control" id="InputAddress" placeholder="Address">
                                </div>
                                <div class="form-group">
                                    <label for="InputRole">Role</label>
                                    <input type="text" name="role" class="form-control" id="InputRole" placeholder="Role">
                                </div>
                                <button type="submit" class="btn btn-primary mr-2">Submit</button>
                                <button class="btn btn-dark">Cancel</button>
                            </form>
                        </div>
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
        
    </body>
</html>
