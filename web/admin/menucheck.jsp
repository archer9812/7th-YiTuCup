<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2018/11/15
  Time: 6:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.math.BigDecimal" %>
<%@ page import="safe.FormCheck" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 解决中文乱码的问题
    String name = new String((request.getParameter("name")).getBytes("ISO-8859-1"), "UTF-8");
    BigDecimal price = FormCheck.check(request.getParameter("price"), new BigDecimal("100.00"));
    int stock = FormCheck.check(request.getParameter("stock"), 0);
    int discount = FormCheck.check(request.getParameter("discount"), 0);
    String detail = new String((request.getParameter("detail")).getBytes("ISO-8859-1"), "UTF-8");
    boolean state = false;
    try {
        if (request.getParameter("state").equals("1")) {
            state = true;
        }
    } catch (Exception e) {
        System.out.println(e);
    }
    int typeSelect = FormCheck.check(request.getParameter("typeSelect"), 1);
%>
<html>
<head>
    <title>TEST</title>
</head>
<body>
    <ul>
        <li><% out.print(name); %></li>
        <li>$ <% out.print(price); %></li>
        <li><% out.print(stock); %></li>
        <li><% out.print(state); %></li>
        <li><% out.print(detail); %></li>
        <li><% out.print(discount); %> % </li>
        <li><% out.print(typeSelect); %></li>
    </ul>
</body>
</html>
