<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2018/11/15
  Time: 2:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="static/header.jsp" flush="true"/>
<body>
<div class="container-scroller">
    <jsp:include page="static/nav.jsp" flush="true"/>
    <div class="container-fluid page-body-wrapper">
        <jsp:include page="static/left.jsp"/>
        <div class="main-panel">
            <div class="content-wrapper">
                <div class="row">
                    <div class="col-lg-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">用户列表</h4>
                                <p class="card-description">
                                    用户管理 &gt;
                                    <code>用户列表</code>
                                </p>
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th>用户ID</th>
                                            <th>用户名</th>
                                            <th>余额</th>
                                            <th>折扣</th>
                                            <th>创建时间</th>
                                            <th>用户状态</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>test</td>
                                            <td>100.00</td>
                                            <td>100 %</td>
                                            <td>2018.1.1</td>
                                            <td>
                                                <label class="badge badge-success">可用</label>
                                            </td>
                                            <td>
                                                <button type="edit" class="btn btn-outline-info">编辑</button>
                                                <button type="delete" class="btn btn-outline-danger">删除</button>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="static/footer.jsp" flush="true" />
</body>
</html>
