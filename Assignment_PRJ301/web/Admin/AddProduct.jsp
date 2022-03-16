<%-- 
    Document   : AddProduct
    Created on : Mar 16, 2022, 2:03:28 AM
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
        <!-- GOOGLE FONT -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
        <!-- BOXICONS -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <!-- APP CSS -->
        <link href="../css/app.css" rel="stylesheet" type="text/css"/>
        <link href="../css/grid.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
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
                            <h4 class="card-title">Add Product</h4>
                            <p class="card-description"> Add Product </p>
                            <form class="forms-sample">
                                <div class="form-group">
                                    <label for="InputId">ID</label>
                                    <input type="text" class="form-control" id="InputId" placeholder="ID">
                                </div>
                                <div class="form-group">
                                    <label for="InputName">Name</label>
                                    <input type="text" class="form-control" id="InputName" placeholder="Name">
                                </div>
                                <div class="form-group">
                                    <label for="InputPrice">Price</label>
                                    <input type="text" class="form-control" id="InputPrice" placeholder="Price">
                                </div>
                                <div class="form-group">
                                    <label for="InputQuantity">Quantity</label>
                                    <input type="text" class="form-control" id="InputQuantity" placeholder="Quantity">
                                </div>
                                <div class="form-group">
                                    <label>Image product upload</label>
                                    <input type="file" name="img[]" class="file-upload-default">
                                    <div class="input-group col-xs-12">
                                        <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Image Product">
                                        <span class="input-group-append">
                                            <button class="file-upload-browse btn btn-primary" type="button">Upload</button>
                                        </span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputCategory">Category</label>
                                    <input type="text" class="form-control" id="exampleInputCity1" placeholder="Location">
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