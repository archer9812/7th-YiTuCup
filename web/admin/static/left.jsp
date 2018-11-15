<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2018/11/15
  Time: 2:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav">
        <li class="nav-item nav-profile">
            <div class="nav-link">
                <div class="user-wrapper">
                    <div class="profile-image">
                        <img src="../../static/admin/images/faces/face1.jpg" alt="profile image">
                    </div>
                    <div class="text-wrapper">
                        <p class="profile-name">Boss</p>
                        <div>
                            <small class="designation text-muted">老板</small>
                            <span class="status-indicator online"></span>
                        </div>
                    </div>
                </div>
                <button class="btn btn-success btn-block">营业中
                </button>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/admin/index.jsp">
                <i class="menu-icon mdi mdi-television"></i>
                <span class="menu-title">仪表盘</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                <i class="menu-icon mdi mdi-content-copy"></i>
                <span class="menu-title">菜品管理</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/menulist.jsp">菜品列表</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/menuadd.jsp">添加菜品</a>
                    </li>
                </ul>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
                <i class="menu-icon mdi mdi-restart"></i>
                <span class="menu-title">用户管理</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="auth">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/userlist.jsp"> 用户列表 </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/useradd.jsp"> 添加用户 </a>
                    </li>
                </ul>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/admin/orderlist.jsp">
                <i class="menu-icon mdi mdi-backup-restore"></i>
                <span class="menu-title">订单列表</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="../../static/admin/pages/charts/chartjs.html">
                <i class="menu-icon mdi mdi-chart-line"></i>
                <span class="menu-title">Charts</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="pages/tables/basic-table.html">
                <i class="menu-icon mdi mdi-table"></i>
                <span class="menu-title">Tables</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="pages/icons/font-awesome.html">
                <i class="menu-icon mdi mdi-sticker"></i>
                <span class="menu-title">Icons</span>
            </a>
        </li>

    </ul>
</nav>
