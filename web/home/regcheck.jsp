<%@ page import="java.math.BigDecimal" %><%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2018/11/18
  Time: 7:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    try{
        String username = new String((request.getParameter("username")).getBytes("ISO-8859-1"), "UTF-8");
        String password = new String((request.getParameter("password")).getBytes("ISO-8859-1"), "UTF-8");
        String checkpass = new String((request.getParameter("checkpass")).getBytes("ISO-8859-1"), "UTF-8");
        String email = new String((request.getParameter("email")).getBytes("ISO-8859-1"), "UTF-8");
        String telephone = new String((request.getParameter("telephone")).getBytes("ISO-8859-1"), "UTF-8");

        //password check
        if(!password.equals(checkpass)) {
            request.setAttribute("msg", "两次密码不一致");
            request.getRequestDispatcher("/home/register.jsp").forward(request, response);
            return;
        }

//        JSONObject user = new JSONObject();
//        user.put("name",username);
//        user.put("usr_password", password);
//        user.put("usr_balance", "0");
//        user.put("usr_discount", "100");
//        user.put("state", "1");

        try {
            Boolean req = dbnew.User.insert(username, password, email, telephone, new BigDecimal("0"), 100);
            if (req == true) {
                request.setAttribute("msg", "注册成功，请登录！");
                request.getRequestDispatcher("/home/login.jsp").forward(request, response);
                return;
            } else {
                request.setAttribute("msg","注册失败，请检查输入！");
                request.getRequestDispatcher("/home/register.jsp").forward(request, response);
                return;
            }
        } catch (Exception e) {
                request.setAttribute("msg", e.toString());
                request.getRequestDispatcher("/home/register.jsp").forward(request, response);
                return;
        }
    } catch (Exception ex) {
        System.out.println(ex);
    }
%>
