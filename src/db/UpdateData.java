package db;

import java.math.BigDecimal;
import java.sql.*;


import org.json.JSONObject;

public class UpdateData {
	public static int UpdateFoodList(JSONObject json) {		/*向菜品表插入数据*/
		Connection conn = JDBCUtil.getConn();
		PreparedStatement ps = null;
		int ans = 0;
		//向字段赋值
		String id = json.getString("id"), name = json.getString("name"), 
			   intro = json.getString("intro"), simple_name = json.getString("simple_name"), 
			   food_clazz = json.getString("food_clazz"), rest = json.getString("rest"), 
			   discount = json.getString("discount"), pic_url = json.getString("pic_url");
		Boolean state = json.getBoolean("state");
		BigDecimal food_price = new BigDecimal(json.getString("food_price"));
		//sql
		String sql = "update food_list set name='"+name+
				"',intro='"+intro+"',simple_name='"+simple_name+
				"',food_clazz='"+food_clazz+"',rest='"+rest+"',discount='"+discount+
				"',state='"+state+"',pic_url='"+pic_url+"',food_price='"+food_price+"' where id= '"+id+"'";
		try {
			ps = conn.prepareStatement(sql);
			ans = ps.executeUpdate(sql);
		}catch(SQLException e) {
			e.printStackTrace();
			return -1;  /*失败*/
		}finally {
			JDBCUtil.close(ps, conn);
		}
		return ans;
	}
	
	public static int UpdateOrderList(JSONObject json) {		/*向订单表插入数据*/
		Connection conn = JDBCUtil.getConn();
		PreparedStatement ps = null;	
		int ans = 0;
		/*向字段赋值*/
		String id = json.getString("id"), order_no = json.getString("order_no"), 
			   order_info = json.getString("order_info"), usr_name = json.getString("usr_name");
		BigDecimal order_price = new BigDecimal(json.getString("order_price"));
		Boolean order_state = json.getBoolean("order_state");
		Timestamp order_create_time = new Timestamp(json.getLong("order_create_time")); /*时间戳，精确到秒*/
		//sql
		String sql = "update order_list set order_no='"+order_no+
				"',order_info='"+order_info+"',order_info='"+order_info+
				"',order_price='"+order_price+"',order_state='"+order_state+"',usr_name='"+usr_name+"',order_create_time='"+order_create_time+
				"' where id= '"+id+"'";
		try {
			ps = conn.prepareStatement(sql);
			ans = ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
			return -1;
		}finally {
			JDBCUtil.close(ps, conn);
		}
		return ans;
	}

	
	public static int UpdateAdminList(JSONObject json) {		/*?向管理员表插入数据*/
		Connection conn = JDBCUtil.getConn();
		PreparedStatement ps = null;
		int ans = 0;
		/*向字段赋值*/
		String admin_id = json.getString("admin_id"), password = json.getString("password"), email = json.getString("email");
		/*sql插入语句*/
		String sql = "update admin_list set email='"+email+
				"',password='"+password+"' where admin_id= '"+admin_id+"'";
		try {
			ps = conn.prepareStatement(sql);
			ans = ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
			return -1;
		}finally {
			JDBCUtil.close(ps, conn);
		}
		return ans;
	}
	

	public static int UpdateUsrList(JSONObject json) {     /*向用户表插入数据*/
		Connection conn = JDBCUtil.getConn();
		PreparedStatement ps = null;
		int ans = 0;
		/*向字段赋值*/
		String id = json.getString("id"), name = json.getString("name"), 
				usr_password = json.getString("usr_password"), order_no = json.getString("order_no");
		BigDecimal usr_balance = new BigDecimal(json.getString("usr_balance"));
	    BigDecimal usr_discount = new BigDecimal(json.getString("usr_discount"));
	    Boolean state = json.getBoolean("state");
	    /*sql插入语句*/
		String sql = "update usr_list set name='"+name+"',order_no='"+order_no+
				"',usr_password='"+usr_password+"',usr_balance='"+usr_balance+
				"',state='"+state+"',usr_discount='"+usr_discount+"' where id= '"+id+"'";
		try {
	    	ps = conn.prepareStatement(sql);
			ans = ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
			return -1;
		}finally{
			JDBCUtil.close(ps, conn);
		}
		return ans;
	}
	
	
//	public static void main(String[] args) {
//		JSONObject obj = new JSONObject();
//		int flag1 = 0;
//
//		obj.put("admin_id","13");
//		obj.put("email","jack");
//		obj.put("password","1s");
//		flag1 = UpdateData.UpdateAdminList(obj);
//		System.out.println(flag1);
//	}


}
