<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2018/11/18
  Time: 4:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="static/header.jsp"/>

<div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper auth-page">
        <div class="content-wrapper d-flex align-items-center auth auth-bg-1 theme-one">
            <div class="row w-100">
                <div class="col-lg-4 mx-auto">
                    <div class="auto-form-wrapper">
                        <h4 style="text-align: center;">登陆后点餐</h4>
                        <%
                            if(request.getAttribute("msg")!=null){
                        %><h6 class="text-danger"><%out.println(request.getAttribute("msg"));%></h6><%
                            }
                        %>
                        <form action="logincheck.jsp" method="post">
                            <div class="form-group">
                                <label class="label">用户名</label>
                                <div class="input-group">
                                    <input name="username" type="text" class="form-control" placeholder="Username">
                                    <div class="input-group-append">
                      <span class="input-group-text">
                        <i class="mdi mdi-check-circle-outline"></i>
                      </span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="label">密码</label>
                                <div class="input-group">
                                    <input name="password" type="password" class="form-control" placeholder="*********">
                                    <div class="input-group-append">
                      <span class="input-group-text">
                        <i class="mdi mdi-check-circle-outline"></i>
                      </span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <button class="btn btn-primary submit-btn btn-block">登陆</button>
                            </div>
                            <div class="form-group d-flex justify-content-between">
                                <div class="form-check form-check-flat mt-0">
                                </div>
                                <a href="#" class="text-small forgot-password text-black">忘记密码</a>
                            </div>
                            <div class="text-block text-center my-3">
                                <span class="text-small font-weight-semibold">还不是会员 ?</span>
                                <a href="register.jsp" class="text-black text-small">创建新用户</a>
                            </div>
                        </form>
                    </div>
                    <ul class="auth-footer">
                        <li>
                            <a href="#">Conditions</a>
                        </li>
                        <li>
                            <a href="#">Help</a>
                        </li>
                        <li>
                            <a href="#">Terms</a>
                        </li>
                    </ul>
                    <p class="footer-text text-center">copyright © 2018 二叉搜索树. All rights reserved.</p>
                </div>
            </div>
        </div>
        <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
</div>

<jsp:include page="/admin/static/footer.jsp" />
<body>

</body>
</html>
