<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2018/11/15
  Time: 10:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="Network.Getip" %>
<%
    String version = System.getProperty("java.version");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <body>
        <p>Java版本：<% out.print(version); %></p>
    </body>
</html>
