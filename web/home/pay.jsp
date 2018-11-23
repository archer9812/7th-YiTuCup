<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2018/11/20
  Time: 6:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="static/header.jsp" flush="true"/>
<body>
<div class="container-scroller">
    <!-- partial:../../partials/_navbar.html -->
    <nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
            <a class="navbar-brand brand-logo" href="#">
                <img src="../static/admin/images/logo.svg" alt="logo" />
            </a>
            <a class="navbar-brand brand-logo-mini" href="#">
                <img src="../static/admin/images/logo-mini.svg" alt="logo" />
            </a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-center">
            <ul class="navbar-nav navbar-nav-right">
                <li class="nav-item dropdown d-none d-xl-inline-block">
                    <a class="nav-link dropdown-toggle" id="UserDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                        <span class="profile-text">Hello, Richard V.Welsh !</span>
                        <img class="img-xs rounded-circle" src="../static/admin/images/faces/face1.jpg" alt="Profile image">
                    </a>
                    <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">
                        <a class="dropdown-item p-0">
                            <div class="d-flex border-bottom">
                                <div class="py-3 px-4 d-flex align-items-center justify-content-center">
                                    <i class="mdi mdi-bookmark-plus-outline mr-0 text-gray"></i>
                                </div>
                                <div class="py-3 px-4 d-flex align-items-center justify-content-center border-left border-right">
                                    <i class="mdi mdi-account-outline mr-0 text-gray"></i>
                                </div>
                                <div class="py-3 px-4 d-flex align-items-center justify-content-center">
                                    <i class="mdi mdi-alarm-check mr-0 text-gray"></i>
                                </div>
                            </div>
                        </a>
                        <a class="dropdown-item mt-2">
                            Manage Accounts
                        </a>
                        <a class="dropdown-item">
                            Change Password
                        </a>
                        <a class="dropdown-item">
                            Check Inbox
                        </a>
                        <a class="dropdown-item">
                            Sign Out
                        </a>
                    </div>
                </li>
            </ul>
            <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                <span class="mdi mdi-menu"></span>
            </button>
        </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
        <!-- partial:../../partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
            <ul class="nav">
                <li class="nav-item nav-profile">
                    <div class="nav-link">
                        <div class="user-wrapper">
                            <div class="profile-image">
                                <img src="../static/admin/images/faces/face1.jpg" alt="profile image">
                            </div>
                            <div class="text-wrapper">
                                <p class="profile-name">Richard V.Welsh</p>
                                <div>
                                    <small class="designation text-muted">Manager</small>
                                    <span class="status-indicator online"></span>
                                </div>
                            </div>
                        </div>
                        <button class="btn btn-success btn-block">New Project
                            <i class="mdi mdi-plus"></i>
                        </button>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../../index.html">
                        <i class="menu-icon mdi mdi-television"></i>
                        <span class="menu-title">支付</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                        <i class="menu-icon mdi mdi-content-copy"></i>
                        <span class="menu-title">Basic UI Elements</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="ui-basic">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="../../pages/ui-features/buttons.html">Buttons</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="../../pages/ui-features/typography.html">Typography</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../../pages/forms/basic_elements.html">
                        <i class="menu-icon mdi mdi-backup-restore"></i>
                        <span class="menu-title">Form elements</span>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- partial -->
        <div class="main-panel">
            <div class="content-wrapper">
                <div class="row">
                    <div class="col-md-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">订单详情</h4><hr>
                                <ul>
                                    <li>红烧肉 *1</li>
                                    <li>辣子鸡 *1</li>
                                </ul><hr>
                                <h5 class="card-title">总金额：<span class="text-danger">35.0</span></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">

                                <h4 class="card-title">支付方式</h4>
                                <hr>
                                <div class="media">
                                    <i class="mdi mdi-earth icon-md text-info d-flex align-self-start mr-3"></i>
                                    <div class="media-body">
                                        <p class="card-text">余额支付</p><button type="button" class="btn btn-outline-info">点击支付</button>
                                    </div>
                                </div>
                                <hr>
                                <div class="media">
                                    <i class="mdi mdi-earth icon-md text-info d-flex align-self-start mr-3"></i>
                                    <div class="media-body">
                                        <p class="card-text">微信支付</p><button type="button" class="btn btn-outline-info">点击支付</button>
                                    </div>
                                </div>
                                <hr>
                                <div class="media">
                                    <i class="mdi mdi-earth icon-md text-info d-flex align-self-start mr-3"></i>
                                    <div class="media-body">
                                        <p class="card-text">支付宝</p><button type="button" class="btn btn-outline-info">点击支付</button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- content-wrapper ends -->
            <!-- partial:../../partials/_footer.html -->
            <footer class="footer">
                <div class="container-fluid clearfix">
            <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © 2018
              <a href="http://www.bootstrapdash.com/" target="_blank">Bootstrapdash</a>. All rights reserved.</span>
                    <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with
              <i class="mdi mdi-heart text-danger"></i>
            </span>
                </div>
            </footer>
            <!-- partial -->
        </div>
        <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
</div>
<jsp:include page="../admin/static/footer.jsp" flush="true"/>
</body>
</html>
