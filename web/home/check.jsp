<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2018/11/18
  Time: 3:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.*" %>
<%@ page import="org.json.JSONObject" %>
<%
    Enumeration enu=request.getParameterNames();
    JSONObject data = new JSONObject();
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    while(enu.hasMoreElements())
    {
        String name=(String)enu.nextElement();
        if(name.startsWith("**"))
        {
            //如果是数组参数，则逐个打印
%>
<h1><%=name %>:
    <%
        String canshu[]=request.getParameterValues(name);
        data.put(name, canshu);
        int i;
        for(i=0;i<canshu.length;i++)
        {
    %>
    <%=canshu[i] %>
    <%
        }
    %>
</h1>
<%
}
else
{
    //如果不是数组参数，直接打印
%>
<h1><%=name %>:<%=request.getParameter(name) %></h1>
<%
            data.put(name, request.getParameter(name));
        }
    }
    System.out.print(data);
%>
</body>
</html>
