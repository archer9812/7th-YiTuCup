package db;

import java.sql.*;
import java.math.BigDecimal;

import org.json.*;

public class AddData {
	
	public static boolean addToFoodList(JSONObject json) {		/*向菜品表插入数据*/
		Connection conn = JDBCUtil.getConn();
		PreparedStatement ps = null;
		//向字段赋值
		String id = json.getString("id"), name = json.getString("name"), 
			   intro = json.getString("intro"), simple_name = json.getString("simple_name"), 
			   food_clazz = json.getString("food_clazz"), rest = json.getString("rest"), 
			   discount = json.getString("discount"), pic_url = json.getString("pic_url");
		Boolean state = json.getBoolean("state");
		BigDecimal food_price = new BigDecimal(json.getString("food_price"));
		//sql插入语句
		String sql = "insert into food_list "
				    + "(id, name, intro, simple_name, rest, discount, state, pic_url, food_price, food_clazz) "
					+ "values (?,?,?,?,?,?,?,?,?,?)";
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setObject(1, id);
			ps.setObject(2, name);
			ps.setObject(3, intro);
			ps.setObject(4, simple_name);
			ps.setObject(5, rest);
			ps.setObject(6, discount);
			ps.setObject(7, state);
			ps.setObject(8, pic_url);
			ps.setObject(9, food_price);
			ps.setObject(10, food_clazz);
			ps.execute();
		}catch(SQLException e) {
			e.printStackTrace();
			return false;
		}finally {
			JDBCUtil.close(ps, conn);
		}
		return true;
	}
	
	public static boolean addToOrderList(JSONObject json) {		/*向订单表插入数据*/
		Connection conn = JDBCUtil.getConn();
		PreparedStatement ps = null;
		/*向字段赋值*/
		String id = json.getString("id"), order_no = json.getString("order_no"), 
			   order_info = json.getString("order_info"), usr_name = json.getString("usr_name");
		BigDecimal order_price = new BigDecimal(json.getString("order_price"));
		Boolean order_state = json.getBoolean("order_state");
		Timestamp order_create_time = new Timestamp(json.getLong("order_create_time")); /*时间戳，精确到秒*/
		/*sql插入语句*/
		String sql = "insert into order_list (id, order_no, order_info, order_price, usr_name, order_create_time, order_state ) "
				   + "values (?,?,?,?,?,?,?)";
		try {
			ps = conn.prepareStatement(sql);
			ps.setObject(1, id);
			ps.setObject(2, order_no);
			ps.setObject(3, order_info);
			ps.setObject(4, order_price);
			ps.setObject(5, usr_name);
			ps.setTimestamp(6, order_create_time);
			ps.setObject(7, order_state);
			ps.execute();
		}catch(SQLException e) {
			e.printStackTrace();
			return false;
		}finally {
			JDBCUtil.close(ps, conn);
		}
		return true;
	}

	
	public static boolean addToAdminList(JSONObject json) {		/*向管理员表插入数据*/
		Connection conn = JDBCUtil.getConn();
		PreparedStatement ps = null;
		/*向字段赋值*/
		String admin_id = json.getString("admin_id"), password = json.getString("password"), email = json.getString("email");
		/*sql插入语句*/
		String sql = "insert into admin_list (admin_id, password, email) values (?, ?, ?)";
		try {
			ps = conn.prepareStatement(sql);
			ps.setObject(1, admin_id);
			ps.setObject(2, email);
			ps.setObject(3, password);
			ps.execute();
		}catch(SQLException e) {
			e.printStackTrace();
			return false;
		}finally {
			JDBCUtil.close(ps, conn);
		}
		return true;
	}
	

	public static boolean addToUsrList(JSONObject json) {     /*向用户表插入数据*/
		Connection conn = JDBCUtil.getConn();
		PreparedStatement ps = null;
		/*向字段赋值*/
		String name = json.getString("name"), usr_password = json.getString("usr_password");
		BigDecimal usr_balance = new BigDecimal(json.getString("usr_balance"));
	    BigDecimal usr_discount = new BigDecimal(json.getString("usr_discount"));
	    String state = json.getString("state");
	    /*sql插入语句*/
		String sql = "insert into usr_list（name, usr_password, usr_balance, state, usr_discount) values (?,?,?,?,?)";
		System.out.println(sql);
		try {
	    	ps = conn.prepareStatement(sql);
	    	ps.setObject(1, name);
			ps.setObject(2, usr_password);
			ps.setObject(3, usr_balance);
			ps.setObject(4, state);
			ps.setObject(5, usr_discount);
			ps.execute();
		}catch(SQLException e) {
			e.printStackTrace();
			return false;
		}finally{
			JDBCUtil.close(ps, conn);
		}
		return true;
	}
	
	
//	public static void main(String[] args) {
//		JSONObject obj = new JSONObject();
//		boolean flag1 = false;
//		obj.put("admin_id","13");
//		obj.put("email","john");
//		obj.put("password","123ss");
//		obj.put("simple_name","hh");
//		obj.put("food_clazz","chuani");
//		obj.put("rest","2");
//		obj.put("discount","100.02");
//		obj.put("pic_url","sdasdasdasd");
//		obj.put("state","true");
//		obj.put("food_price","10.34");
//		flag1 = AddData.addToAdminList(obj);
//		if(flag1 == true)
//			System.out.println("true");
//	}
}

