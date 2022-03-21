<%-- 
    Document   : Profile
    Created on : Mar 21, 2022, 5:01:59 PM
    Author     : david
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/Profile.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://kit.fontawesome.com/31a284aacb.js"></script>
        <title>Profile Page</title>
    </head>
    <body>
        <jsp:include flush="true" page="../banner/HeaderBanner.jsp"></jsp:include> <br>
            <form action="profile" method="POST">
                <div class="container-xl px-4 mt-4">
                    <hr class="mt-0 mb-4">
                    <div class="row">
                        <div class="col-xl-9">
                            <div class="card mb-4">
                                <div class="card-header">Profile Details</div>
                                <div class="card-body">

                                <c:forEach items="${requestScope.list}" var="l">
                                    <div class="row gx-3 mb-3">
                                        <div class="col-md-8">
                                            <label class="small mb-1" for="Id">ID</label>
                                            <input class="form-control" id="Id" value="${l.id}" type="text" placeholder="username" name="id" readonly>
                                        </div>
                                    </div>
                                    <div class="row gx-3 mb-3">
                                        <div class="col-md-8">
                                            <label class="small mb-1" for="Username">Username</label>
                                            <input class="form-control" id="Username" value="${l.username}" type="text" placeholder="username" name="username">
                                        </div>
                                    </div>
                                    <div class="row gx-3 mb-3">
                                        <div class="col-md-8">
                                            <label class="small mb-1" for="Password">Password</label>
                                            <input class="form-control" id="Password" value="${l.password}" type="password" placeholder="password" name="password">
                                        </div>
                                    </div>
                                    <div class="row gx-3 mb-3">
                                        <div class="col-md-8">
                                            <label class="small mb-1" for="Email">Email</label>
                                            <input class="form-control" id="Email" value="${l.email}" type="text" placeholder="Email" name="email">
                                        </div>
                                    </div>
                                    <div class="row gx-3 mb-3">
                                        <div class="col-md-8">
                                            <label class="small mb-1" for="Phone">Phone</label>
                                            <input class="form-control" id="inputPhone" value="${l.phone}" type="text" placeholder="phone number" name="phone">
                                        </div>
                                    </div>
                                    <div class="row gx-3 mb-3">
                                        <div class="col-md-8">
                                            <label class="small mb-1" for="Address">Address</label>
                                            <input class="form-control" id="Address" value="${l.address}" type="text" placeholder="Address" name="address">
                                        </div>
                                    </div>
                                    <input type="submit" class="btn btn-primary" name="save" value="Save Change">
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <br>
        </form>
        <jsp:include flush="true" page="../banner/Footer.jsp"></jsp:include>
    </body>
</html>
