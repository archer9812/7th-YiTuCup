<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2018/11/16
  Time: 1:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.json.JSONObject" %>
<%@ page import="db.SearchData" %>
<%@ page import="db.AddData" %>
<%@ page import="javax.xml.crypto.Data" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.mysql.cj.Session" %>
<%@ page import="java.lang.*" %>
<%
    if (session.getAttribute("id") == null || session.getAttribute("date") == null || session.getAttribute("name") == null) {
        request.setAttribute("msg","请先登录!");
        request.getRequestDispatcher("/home/login.jsp").forward(request, response);

    } else {
        String name = (String)session.getAttribute("name");
        int id = (Integer)session.getAttribute("id");

    }
%>
<html>
<jsp:include page="static/foodheader.jsp" flush="true"/>
<body>
    <jsp:include page="parts/top.jsp" flush="true"/>
    <jsp:include page="parts/main.jsp" flush="true"/>
    <jsp:include page="parts/bottom.jsp" flush="true"/>
    <jsp:include page="static/footer.jsp" flush="true"/>
</body>
</html>
