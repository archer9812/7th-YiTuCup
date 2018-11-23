<%@ page import="com.sun.xml.internal.ws.resources.HttpserverMessages" %>
<%@ page import="com.sun.jmx.snmp.Enumerated" %>
<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2018/11/22
  Time: 3:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Enumeration em = request.getSession().getAttributeNames();
    while(em.hasMoreElements()){
        request.getSession().removeAttribute(em.nextElement().toString());
    }
    request.setAttribute("msg", "退出登录成功！");
    request.getRequestDispatcher("/home/index.jsp").forward(request, response);
%>
