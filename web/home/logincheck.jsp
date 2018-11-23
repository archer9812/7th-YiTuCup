<%@ page import="org.json.JSONObject" %>
<%@ page import="db.SearchData" %>
<%@ page import="db.AddData" %>
<%@ page import="javax.xml.crypto.Data" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.mysql.cj.Session" %>
<%@ page import="dbnew.User" %><%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2018/11/18
  Time: 7:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    try {
        String username = new String((request.getParameter("username")).getBytes("ISO-8859-1"), "UTF-8");
        String password = new String((request.getParameter("password")).getBytes("ISO-8859-1"), "UTF-8");

        if (User.checklogin(username, password)) {
            try{
                session.setAttribute("name", username);
                session.setAttribute("date", new Date(86400*10));
                session.setAttribute("id", password);
            } catch (Exception e) {
                out.print(e);
            }

            request.setAttribute("msg","登录成功!");
            request.getRequestDispatcher("index.jsp").forward(request, response);;

        } else {
            request.setAttribute("msg","登录失败! 02");
            request.getRequestDispatcher("login.jsp").forward(request, response);;
        }
    } catch (Exception ex) {
        System.out.println(ex);
        request.setAttribute("msg","请检查输入!");
        request.getRequestDispatcher("login.jsp").forward(request, response);;
    }

%>