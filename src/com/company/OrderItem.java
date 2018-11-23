package com.company;

import dbnew.MysqlConnect;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Map;


public class OrderItem {

    private String OrderNum;
//    private Map<String,Map<double,int>> Dish;
    private ArrayList<Map<String,Map<Integer,BigDecimal>>> Dishes;
    private User user;
    private SimpleDateFormat dateFormat;
    private Boolean isSubmit;
    private BigDecimal Discount;
    private BigDecimal Price;
    private BigDecimal DiscountPrice;


    private boolean lock=true;
    //用来检验加锁和解锁的是否为同一线程
    private String token = "";

    public OrderItem(String OrderNum, ArrayList<Map<String, Map<Integer, BigDecimal>>> Dishes, User user, SimpleDateFormat dateFormat, Boolean isSubmit, BigDecimal Discount) {
        this.OrderNum = new String(OrderNum);
        this.Dishes = Dishes;
        this.user = new User(user);
        this.dateFormat = dateFormat;
        this.isSubmit = isSubmit;
        this.Discount = new BigDecimal(String.valueOf(Discount));
        this.Price = new BigDecimal(0);
        this.DiscountPrice = new BigDecimal(0);

        for (Map<String,Map<Integer,BigDecimal>> Dish : Dishes) {
            for (String name : Dish.keySet()) {
                Price.add(((BigDecimal) Dish.get(name)).multiply((Dish.get(name)).get(Dish.get(name))));
            }
        }
        setDiscountPrice(Price.multiply(Discount));
    }

    public String getOrderNum() {
        return OrderNum;
    }
    public User getUser() {
        return user;
    }
    public SimpleDateFormat getDateFormat() {
        return dateFormat;
    }
    public Boolean getSubmit() {
        return isSubmit;
    }
    public BigDecimal getDiscount() {
        return Discount;
    }
    public BigDecimal getPrice() {
        return Price;
    }
    public BigDecimal getDiscountPrice() {
        return DiscountPrice;
    }

    public void setOrderNum(String orderNum) {
        OrderNum = orderNum;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public void setDateFormat(SimpleDateFormat dateFormat) {
        this.dateFormat = dateFormat;
    }

    public void setSubmit(Boolean submit) {
        isSubmit = submit;
    }

    public void setDiscount(BigDecimal discount) {
        Discount = discount;
    }

    public void setDiscountPrice(BigDecimal discountPrice) {
        DiscountPrice = discountPrice;
    }

    public void setPrice(BigDecimal price) {
        Price = price;
    }

    public void setDishes(ArrayList<Map<String, Map<Integer, BigDecimal>>> dishes) {
        Dishes = dishes;
    }


    public static boolean insert(BigDecimal price, String detail, String userid, boolean state) {
        try{
            Connection conn = MysqlConnect.getConn();
            PreparedStatement ps = null;
            /*sql插入语句*/
            String sql = "insert into orders (price, detail, user, state) values (?, ?, ?, ?)";
            ps = conn.prepareStatement(sql);
            ps.setObject(1, price);
            ps.setObject(2, detail);
            ps.setObject(3, userid);
            ps.setObject(4, state);
            ps.execute();
        } catch (Exception e) {
            System.out.println(e + ".Order.insert");
            return false;
        }
        return true;
    }


    /**
     * 加锁，先判断是否已被锁住，未被锁住则获取该对象锁
     * @param token
     * @return
     */
    public boolean getLock(String token) {
        if(lock) {
            synchronized (this) {
                if(lock){//双重检测
                    lock = false;
                    this.token = token;
                    return true;
                } else {
                    System.out.println("被别人抢走了！！！！！！！！！！");
                }
            }
        }
        return lock;
    }

    /**
     * 解锁,通过token限定只有获取到锁的线程才能解锁,否则为非法调用
     * @param newToken
     */
    public void unLock(String newToken) {
        if(!newToken.equals(this.token) || lock) {
            System.out.println("出错了！！！！！！！！！！");
        } else {
            lock = true;
        }
    }


}
