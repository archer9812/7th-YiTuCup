<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2018/11/15
  Time: 2:55 PM
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
                    <div class="col-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">添加菜品</h4>
                                <p class="card-description">
                                    菜品管理 &gt;
                                    <code>菜品添加</code>
                                </p>
                                <form class="form-sample" action="menucheck.jsp" method="POST">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">菜名</label>
                                                <div class="col-sm-10">
                                                    <input required name="name" type="text" class="form-control" placeholder="请输入菜名">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">价格</label>
                                                <div class="col-sm-10">
                                                    <div class="input-group">
                                                        <div class="input-group-prepend bg-primary border-primary">
                                                            <span class="input-group-text bg-transparent text-white">¥</span>
                                                        </div>
                                                        <input required name="price" type="number" class="form-control" placeholder="请输入价格">
                                                        <div class="input-group-append bg-primary border-primary">
                                                            <span class="input-group-text bg-transparent text-white">.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">库存</label>
                                                <div class="col-sm-10">
                                                    <input name="stock" type="number" class="form-control" placeholder="请输入库存">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">折扣</label>
                                                <div class="col-sm-10">
                                                    <div class="input-group">
                                                        <input name="discount" type="number" class="form-control" placeholder="请输入折扣">
                                                        <div class="input-group-append bg-primary border-primary">
                                                            <span class="input-group-text bg-transparent text-white">%</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">介绍</label>
                                                <div class="col-sm-10">
                                                    <div class="input-group">
                                                        <input name="detail" type="text" class="form-control" placeholder="请输入介绍">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">是否上架</label>
                                                <div class="col-sm-4">
                                                    <div class="form-radio">
                                                        <label class="form-check-label">
                                                            <input type="radio" class="form-check-input" name="state" id="state-1" value="1" checked> 上架
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="col-sm-5">
                                                    <div class="form-radio">
                                                        <label class="form-check-label">
                                                            <input type="radio" class="form-check-input" name="state" id="state-0" value="0"> 不上架
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="typeSelect">上架类型</label>
                                        <select name="typeSelect" class="form-control" id="typeSelect">
                                            <option value="1">家常菜</option>
                                            <option value="2">小吃</option>
                                            <option value="3">主食</option>
                                            <option value="4">零食</option>
                                            <option value="5">饮品</option>
                                        </select>
                                    </div>
                                    <button type="submit" class="btn btn-success mr-2">提交</button>
                                    <button class="btn btn-light">取消</button>
                                </form>
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

