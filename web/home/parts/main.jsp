<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2018/11/16
  Time: 2:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="main">
    <div class="left-menu"  id="left">
        <ul id="menutitle">
            <li><span>营养套餐</span></li>
            <li><span>实惠炒菜</span></li>
        </ul>
    </div>
    <div id="menu" class="con">
        <div class="right-con con-active" style="display: none;">
            <ul>
                <li>
                    <div class="menu-img"><img src="../../static/home/img/foods1.jpeg" width="55" height="55"></div>
                    <div class="menu-txt">
                        <h4 id="1" class="foodName">红烧牛肉</h4>
                        <p class="list1">家常菜</p>
                        <p class="list2">
                            <b>￥</b><b>28.5</b>
                        </p><div class="btn">
                        <button id="sub01" onclick="sub(food01);" class="minus">
                            <strong></strong>
                        </button>
                        <i id="count01">0</i>
                        <button onclick="add(food01);" class="add">
                            <strong></strong>
                        </button>
                        <i class="price">28</i>
                        <script>
                            var food01 = {
                                "name":'<% out.print("红烧牛肉"); %>',
                                "type":'<% out.print("家常菜"); %>',
                                'id':'<% out.print("01"); %>',
                                "price":<% out.print("28.5"); %>
                            };
                        </script>
                    </div>

                    </div>
                </li>
                <li>
                    <div class="menu-img"><img src="../../static/home/img/foods2.jpeg" width="55" height="55"></div>
                    <div class="menu-txt">
                        <h4 id="2" class="foodName">辣子鸡</h4>
                        <p class="list1">家常菜</p>
                        <p class="list2">
                            <b>￥</b><b>20</b>
                        </p><div class="btn">
                        <button id="sub02" onclick="sub(food02);" class="minus">
                            <strong></strong>
                        </button>
                        <i id="count02">0</i>
                        <button onclick="add(food02);" class="add">
                            <strong></strong>
                        </button>
                        <i class="price">20</i>
                        <script>
                            var food02 = {
                                "name":'<% out.print("辣子鸡"); %>',
                                "type":'<% out.print("家常菜"); %>',
                                'id':'<% out.print("02"); %>',
                                "price":<% out.print("20"); %>
                            };
                        </script>
                    </div>

                    </div>
                </li>
            </ul>
        </div>
        <div class="right-con con-active" style="display: none;">
            <ul>
                <li>
                    <div class="menu-img"><img src="../../static/home/img/pic.png" width="55" height="55"></div>
                    <div class="menu-txt">
                        <h4 id="3" class="foodName">宫保鸡丁</h4>
                        <p class="list1">家常菜</p>
                        <p class="list2">
                            <b>￥</b><b>26</b>
                        </p><div class="btn">
                        <button class="minus">
                            <strong></strong>
                        </button>
                        <i>0</i>
                        <button class="add">
                            <strong></strong>
                        </button>
                        <i class="price">26</i>
                    </div>

                    </div>
                </li>
                <li>
                    <div class="menu-img"><img src="../../static/home/img/pic.png" width="55" height="55"></div>
                    <div class="menu-txt">
                        <h4 id="4" class="foodName">回锅肉</h4>
                        <p class="list1">家常菜</p>
                        <p class="list2">
                            <b>￥</b><b>24.5</b>
                        </p>
                        <div class="btn">
                            <button class="minus">
                                <strong></strong>
                            </button>
                            <i>0</i>
                            <button class="add">
                                <strong></strong>
                            </button>
                            <i class="price">22</i>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="menu-img"><img src="../../static/home/img/pic.png" width="55" height="55"></div>
                    <div class="menu-txt">
                        <h4 id="5" class="foodName">青椒肉丝</h4>
                        <p class="list1">家常菜</p>
                        <p class="list2">
                            <b>￥</b><b>24</b>
                        </p><div class="btn">
                        <button class="minus">
                            <strong></strong>
                        </button>
                        <i>0</i>
                        <button class="add">
                            <strong></strong>
                        </button>
                        <i class="price">24</i>
                    </div>

                    </div>
                </li>
                <li>
                    <div class="menu-img"><img src="../../static/home/img/pic.png" width="55" height="55"></div>
                    <div class="menu-txt">
                        <h4 id="6" class="foodName">京酱肉丝</h4>
                        <p class="list1">家常菜</p>
                        <p class="list2">
                            <b>￥</b><b>27</b>
                        </p>
                        <div class="btn">
                            <button class="minus">
                                <strong></strong>
                            </button>
                            <i>0</i>
                            <button class="add">
                                <strong></strong>
                            </button>
                            <i class="price">27</i>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="up1"></div>
    <div class="shopcart-list fold-transition" style="">
        <div class="list-header">
            <h1 class="title">购物车</h1>
            <span class="empty">清空</span>
        </div>
        <div class="list-content">
            <ul></ul>
        </div>
    </div>
    <div class="footer">
        <div class="left">已选：
            <span id="cartN">
			<span id="totalcountshow">0</span>份　总计：￥<span id="totalpriceshow">0</span></span>元
        </div>
        <div class="right">
            <a id="btnselect" class="xhlbtn  disable" href="javascript:void(0)">去结算</a>
        </div>
    </div>
</div>
