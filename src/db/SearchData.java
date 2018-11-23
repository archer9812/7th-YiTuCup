package db;

import java.sql.*;

import org.json.*;

public class SearchData {

	public static JSONObject getAdminlist_by_id(JSONObject json){
		Connection conn = JDBCUtil.getConn();
		JSONObject ans = new JSONObject();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		int admin_id = json.getInt("admin_id");
		//sql
		String sql = "select * from admin_list where admin_id ='"+admin_id+"'";
		
		try {
			ps = conn.prepareStatement(sql);
		    rs = ps.executeQuery(sql);
			
		    rs.next();
		    ans.put("password" ,rs.getObject(1));
		    ans.put("email", rs.getObject(2));
		    ans.put("admin_id", rs.getObject(3));			

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}finally {          
			JDBCUtil.close(rs,ps,conn);
        }
		return ans;
	}

	public static JSONObject getFoodlist_by_id(JSONObject json){
		Connection conn = JDBCUtil.getConn();
		JSONObject ans = new JSONObject();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		int id = json.getInt("id");
		//sql
		String sql = "select * from food_list where id='"+id+"'";
		try {
			ps = conn.prepareStatement(sql);
		    rs = ps.executeQuery(sql);
			
		    rs.next();
			ans.put("id", rs.getObject(1));
			ans.put("name", rs.getObject(2));
			ans.put("intro", rs.getObject(3));
			ans.put("simple_name", rs.getObject(4));
			ans.put("rest", rs.getObject(5));
			ans.put("discount", rs.getObject(6));
			ans.put("state", rs.getObject(7));
			ans.put("pic_url", rs.getString(8));
			ans.put("food_price", rs.getObject(9));
			ans.put("food_clazz", rs.getObject(10));
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}finally {
            JDBCUtil.close(rs,ps,conn);
        }
		return ans;
	}

	public static JSONObject getFoodlist_by_name(JSONObject json){
		Connection conn = JDBCUtil.getConn();
		JSONObject ans = new JSONObject();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String name = json.getString("name");
		//sql
		String sql = "select * from food_list where name='"+name+"'";

		try {
			ps = conn.prepareStatement(sql);
		    rs = ps.executeQuery(sql);
			
			rs.next();
			ans.put("id", rs.getObject(1));
			ans.put("name", rs.getObject(2));
			ans.put("intro", rs.getObject(3));
			ans.put("simple_name", rs.getObject(4));
			ans.put("rest", rs.getObject(5));
			ans.put("discount", rs.getObject(6));
			ans.put("state", rs.getObject(7));
			ans.put("pic_url", rs.getString(8));
			ans.put("food_price", rs.getObject(9));
			ans.put("food_clazz", rs.getObject(10));

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}finally {
            JDBCUtil.close(rs,ps,conn);
        }
		return ans;
	}

	public static JSONObject getOrderlist_by_id(JSONObject json){
		Connection conn = JDBCUtil.getConn();
		JSONObject ans = new JSONObject();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		int id = json.getInt("id");
		//sql
		String sql = "select * from order_list where id='"+id+"'";
		
		try {
			ps = conn.prepareStatement(sql);
		    rs = ps.executeQuery(sql);
		
			rs.next();
			ans.put("id", rs.getObject(1));
			ans.put("order_no", rs.getObject(2));
		    ans.put("order_info", rs.getObject(3));
		    ans.put("order_price", rs.getObject(4));
			ans.put("usr_name", rs.getObject(5));
			ans.put("order_create_time", rs.getObject(6));
			ans.put("order_state", rs.getObject(7));
					
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}finally {
            JDBCUtil.close(rs,ps,conn);
        }
		return ans;
	}

	public static JSONObject getOrderlist_by_name(JSONObject json){
		Connection conn = JDBCUtil.getConn();
		JSONObject ans = new JSONObject();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String usr_name = json.getString("usr_name");
		//sql
		String sql = "select * from order_list where usr_name='"+usr_name+"'";

		try {
			ps = conn.prepareStatement(sql);
		    rs = ps.executeQuery(sql);

			rs.next();
			ans.put("id", rs.getObject(1));
			ans.put("order_no", rs.getObject(2));
		    ans.put("order_info", rs.getObject(3));
		    ans.put("order_price", rs.getObject(4));
		    ans.put("usr_name", rs.getObject(5));
			ans.put("order_create_time", rs.getObject(6));
			ans.put("order_state", rs.getObject(7));

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}finally {
            JDBCUtil.close(rs,ps,conn);
        }
		return ans;
	}

	public static JSONObject getUsrlist_by_name(JSONObject json){
		Connection conn = JDBCUtil.getConn();
		JSONObject ans = new JSONObject();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String name = json.getString("name");
		//sql
		String sql = "select * from usr_list where name='"+name+"'";
		try {
			ps = conn.prepareStatement(sql);
		    rs = ps.executeQuery(sql);

			rs.next();
			ans.put("id", rs.getObject(1));
			ans.put("name", rs.getObject(2));
			ans.put("usr_balance", rs.getObject(3));
			ans.put("order_no", rs.getObject(4));
			ans.put("state", rs.getObject(5));
			ans.put("usr_password", rs.getObject(6));
			ans.put("usr_discount", rs.getObject(7));
		} catch (SQLException e) {
//			e.printStackTrace();
			return new JSONObject();
		}finally {
            JDBCUtil.close(rs,ps,conn);
        }
		return ans;
	}

	public static JSONObject getUsrlist_by_id(JSONObject json){
		Connection conn = JDBCUtil.getConn();
		JSONObject ans = new JSONObject();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		int id = json.getInt("id");
		//sql
		String sql = "select * from usr_list where id='"+id+"'";

		try {
			ps = conn.prepareStatement(sql);
		    rs = ps.executeQuery(sql);

			rs.next();
			ans.put("id", rs.getObject(1));
			ans.put("name", rs.getObject(2));
			ans.put("usr_balance", rs.getObject(3));
			ans.put("order_no", rs.getObject(4));
			ans.put("state", rs.getObject(5));
			ans.put("usr_password", rs.getObject(6));
			ans.put("usr_discount", rs.getObject(7));

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}finally {
            JDBCUtil.close(rs,ps,conn);
        }
		return ans;
	}

//	public static void main(String[] args) {
//		JSONObject ans = new JSONObject();
//		JSONObject ans2 = new JSONObject();
//		ans.put("id", 13);
////		ans.put("name", 3);
////		ans.put("id", 3);
////		ans.put("email", "107@qq.com");
////		ans.put("password", "112342");
//		ans2=getFoodlist_by_id(ans);
//		System.out.println(ans2.get("name"));
//		//System.out.println(ans2.get("admin_password"));
//		//System.out.println(ans2.get("admin_email"));
//	}
}
