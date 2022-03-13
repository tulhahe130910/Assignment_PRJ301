<%-- 
    Document   : HeaderAdmin
    Created on : Mar 12, 2022, 9:48:15 PM
    Author     : david
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- SIDEBAR -->
<div class="sidebar">
    <div class="sidebar-logo">
        <img src="image/logo.png" alt="Comapny logo">
        <div class="sidebar-close" id="sidebar-close">
            <i class='bx bx-left-arrow-alt'></i>
        </div>
    </div>
    <div class="sidebar-user">
        <div class="sidebar-user-info">
            <img src="image/user-image-2.png" alt="User picture" class="profile-image">
            <div class="sidebar-user-name">
                anh tu
            </div>
        </div>
        <button class="btn btn-outline">
            <i class='bx bx-log-out bx-flip-horizontal'></i>
        </button>
    </div>
    <!-- SIDEBAR MENU -->
    <ul class="sidebar-menu">
        <li>
            <a href="admin" class="active">
                <i class='bx bx-home'></i>
                <span>dashboard</span>
            </a>
        </li>
        <li class="sidebar-submenu">
            <a href="list-account" class="sidebar-menu-dropdown">
                <i class='bx bx-user-circle'></i>
                <span>account</span>
                <div class="dropdown-icon"></div>
            </a>
            <ul class="sidebar-menu sidebar-menu-dropdown-content">
                <li>
                    <a href="list-account">
                        edit profile
                    </a>
                </li>
                <li>
                    <a href="list-account">
                        account settings
                    </a>
                </li>
            </ul>
        </li>
        <li class="sidebar-submenu">
            <a href="list-order" class="sidebar-menu-dropdown">
                <i class='bx bx-category'></i>
                <span>Manage Order</span>
                <div class="dropdown-icon"></div>
            </a>
            <ul class="sidebar-menu sidebar-menu-dropdown-content">
                <li>
                    <a href="list-order">
                        List Order
                    </a>
                </li>
            </ul>
        </li>
        <li class="sidebar-submenu">
            <a href="list-product" class="sidebar-menu-dropdown">
                <i class='bx bx-category'></i>
                <span>Manage Product</span>
                <div class="dropdown-icon"></div>
            </a>
            <ul class="sidebar-menu sidebar-menu-dropdown-content">
                <li>
                    <a href="list-product">
                        list product
                    </a>
                </li>
                <li>
                    <a href="add-product">
                        add product
                    </a>
                </li>
            </ul>
        </li>

        <li class="sidebar-submenu">
            <a href="#" class="sidebar-menu-dropdown">
                <i class='bx bx-cog'></i>
                <span>settings</span>
                <div class="dropdown-icon"></div>
            </a>
            <ul class="sidebar-menu sidebar-menu-dropdown-content">
                <li>
                    <a href="#" class="darkmode-toggle" id="darkmode-toggle">
                        darkmode
                        <span class="darkmode-switch"></span>
                    </a>
                </li>
            </ul>
        </li>
    </ul>
    <!-- END SIDEBAR MENU -->
</div>
