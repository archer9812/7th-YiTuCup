<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2018/11/15
  Time: 10:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="Network.Getip" %>
<%@ page import="db.*" %>
<%@ page import="org.json.*" %>
<%@ page import="java.sql.*" %>
<%
    String version = System.getProperty("java.version");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <body>
    <%

        JSONObject dt = new JSONObject();
        dt.put("admin_id", 13);
        JSONObject rst = SearchData.getAdminlist_by_id(dt);
        out.print(rst);
    %>
    </body>
</html>
