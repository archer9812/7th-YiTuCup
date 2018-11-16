<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2018/11/16
  Time: 2:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.json.*" %>
<%@ page import="java.util.Set" %>
<%
    JSONObject foods = new JSONObject();
    JSONArray data = new JSONArray();

    JSONObject hsr = new JSONObject();
    hsr.put("name", "红烧肉");
    hsr.put("foodType", "家常菜");
    hsr.put("en_type", "jcc");
    hsr.put("count", 1);
    hsr.put("price", 22);
    hsr.put("id", 1);
    data.put(hsr);
    JSONObject cz = new JSONObject();
    cz.put("name", "橙汁");
    cz.put("foodType", "饮品");
    cz.put("en_type", "drink");
    cz.put("count", 1);
    cz.put("price", 3.5);
    cz.put("id", 2);
    data.put(cz);
    foods.put("data", data);
    out.print(foods);
%>
