<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2018/11/16
  Time: 12:07 AM
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
                                <h4 class="card-title">订单列表</h4>
                                <p class="card-description">
                                    <code>订单列表</code>
                                </p>
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th>订单ID</th>
                                            <th>订单内容</th>
                                            <th>金额</th>
                                            <th>用户</th>
                                            <th>创建时间</th>
                                            <th>订单状态</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>SHY0001</td>
                                            <td>白菜猪肉饺子*1&nbsp;三鲜饺子*1</td>
                                            <td>30.00</td>
                                            <td>test</td>
                                            <td>2018.1.1</td>
                                            <td>
                                                <label class="badge badge-warning">处理中</label>
                                            </td>
                                            <td>
                                                <button type="edit" class="btn btn-outline-info">已处理</button>
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

