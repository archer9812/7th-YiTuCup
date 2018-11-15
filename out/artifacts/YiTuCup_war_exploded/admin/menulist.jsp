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
                                    <h4 class="card-title">菜品列表</h4>
                                    <p class="card-description">
                                        菜品管理 &gt;
                                        <code>菜品列表</code>
                                    </p>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                            <tr>
                                                <th>菜品编号</th>
                                                <th>菜品名称</th>
                                                <th>菜品类别</th>
                                                <th>菜品库存</th>
                                                <th>创建时间</th>
                                                <th>菜品状态</th>
                                                <th>操作</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>000001</td>
                                                <td>双合元饺子</td>
                                                <td>家常菜</td>
                                                <td>10</td>
                                                <td>2018.1.1</td>
                                                <td>
                                                    <label class="badge badge-success">上架中</label>
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
