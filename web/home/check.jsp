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
<%@ page import="java.util.concurrent.CyclicBarrier" %>
<%@ page import="com.company.OrderItem" %>
<%@ page import="java.util.concurrent.CopyOnWriteArrayList" %>
<%@ page import="java.math.BigDecimal" %>
<%@ page import="com.company.User" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="javafx.util.Pair" %>
<%!
    //最大订单数目
    private int MAX_ORDERS = 10000;
    //最大线程数
    private int MAX_THREADS = 100;
%>

<%
    Enumeration enu = request.getParameterNames();
//    JSONObject data = new JSONObject();

    List<OrderItem> list = new CopyOnWriteArrayList<>();//new CopyOnWriteArrayList<>();//new ArrayList<>();
    String OrderNum = " ";
    ArrayList<Map<String, Pair<Integer, BigDecimal>>> Dishes = new ArrayList<>();
//    User user = new User("");
    SimpleDateFormat dateFormat = new SimpleDateFormat();
    Boolean isSubmit = new Boolean(false);
    BigDecimal Discount = new BigDecimal(0);
    Boolean isRight = true;                                          //遍历订单记录是否存在库存不足的菜品

    public int Feedback(Enumeration enu) {
        for(int i = 0; i < MAX_ORDERS; i++) {                        //从数据库中获取订单信息并添加
            list.add(new OrderItem(OrderNum, Dishes, user, dateFormat, isSubmit, Discount));
        }
        Long t = System.currentTimeMillis();
        //同步屏障,以是住线程能等待所有线程结束，并记录下耗时
        final CyclicBarrier cyclicBarrier = new CyclicBarrier(MAX_THREADS+1);
        for(int i = 0; i < MAX_THREADS; i++){                        //创建并启动订单处理线程

            Long wait1 = System.currentTimeMillis();                 //等待时间1

            new Thread(new Runnable() {

                while (!list.isEmpty()) {
                    OrderItem order = null;
                    //生成唯一加锁令牌，保证唯一性即可
                    String uuid = UUID.randomUUID().toString();
                    for (OrderItem item : list) {
                        if (item.getLock(uuid)) {                   //找到并锁定订单
                            order = item;
                            break;
                        }
                    }
                    if (order != null) {                            //获取到可处理的订单
                            //System.out.println(i + ":" + Thread.currentThread().getId() + "(" + SLEEP + ")正在处理订单：" + order.getOrderNum());
                        try {
                            Map<String, Pair<Integer, BigDecimal>> dishes = order.getDishes();  //提取订单中的菜单信息
                            for (String DishName : dishes.keySet()) {
                                if (dishes.get(DishName).keySet() < getDatabaseDishNum(DishName)) { //遍历菜单 获取数据库中每个菜品数目，比较订单中的数目
                                    isRight = false;
                                    break;
                                }
                            }
                            if (isRight) {
                                order.insert(dishes);//将数据库中订单信息更新（某菜品库存-订单中某菜品数目；收益 + price * 某菜品订单数亩...）

                            }
                            list.remove(order);                     //处理成功后将订单重待处理列表中移除
                        } catch (Exception e) {
                            e.printStackTrace();
                        } finally {
                            /**
                             * 无论成功还是失败，都需要解锁订单
                             * 失败情况下订单依旧留在待处理列表中,供其他线程处理
                             * 可以根据实际情况将处理失败的订单转移到别的地方进行处理
                             * 否则会导致坏订单影响后面正常订单的处理
                             */

                            /**
                             *  -1 -----> 库存不足
                             *  -2 -----> 付款超时空
                             *  0  -----> 支付成功
                             */

                            if (!isRight) {
                                return -1;                          //返回库存不足信息
                            } else {
                                while (!PayOff()) {
                                    //pause;                        未付款就持续等待
                                }
                                Long wait2 = System.currentTimeMillis(); //等待时间2
                                if ((wait2 - wait1) / 1000 >= 900) {    //15分钟等待时间
                                    return -2;                      //返回超时信息
                                } else {
                                    return 0;                       //返回支付成功信息
                                }
                            }
                        }
                        order.unLock(uuid);                         //解锁订单
                    } try {
                        cyclicBarrier.await();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }).start();
        } try {
        //等待所有线程执行完成
            cyclicBarrier.await();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    System.out.println("*******订单处理完成，耗时：" + (System.currentTimeMillis() - t) + "ms");

%>


//<%
//    while(enu.hasMoreElements())
//    {
//        String name=(String)enu.nextElement();
//        if(name.startsWith("**"))
//        {
//            //如果是数组参数，则逐个打印
//%>
//<%--<h1>--%>
//    <%
//        String canshu[]=request.getParameterValues(name);
//        data.put(name, canshu);
//        int i;
//        for(i=0;i<canshu.length;i++)
//        {
//    %>
//
//    <%
//        }
//    %>
//<%--</h1>--%>
//<%
//}
//else
//{
//    //如果不是数组参数，直接打印
//%>
//<%--<h1><%=name %>:<%=request.getParameter(name) %></h1>--%>
//<%
//            data.put(name, request.getParameter(name));
//        }
//    }
//%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    response.sendRedirect("/home/pay.jsp");
%>
</body>
</html>
