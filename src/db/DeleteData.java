package db;

import java.sql.*;

import org.json.*;

public class DeleteData {
	public static int deleteUsrList(JSONObject json) {  //删除 user_list;
		Connection conn = JDBCUtil.getConn();
		PreparedStatement ps = null;
		String id = null; int i=0;
		try{
			id = json.getString("id");
			String sql = "delete from usr_list where id='" + id + "'";
			ps = conn.prepareStatement(sql);
			i = ps.executeUpdate();
		}catch (SQLException e) {
			return -1;        /*删除失败*/
		}
		finally {
			JDBCUtil.close(ps, conn);
		}
		return i;     /*返回更新条数*/
	}
	
	public static int deleteAdminList(JSONObject json) {  //删除 admin_list;
		Connection conn = JDBCUtil.getConn();
		PreparedStatement ps = null;
		String admin_id = null; int i=0;
		try{
			admin_id  = json.getString("admin_id");
			String sql = "delete from admin_list where admin_id ='" + admin_id + "'";
			ps = conn.prepareStatement(sql);
			i = ps.executeUpdate();
		
		}catch (SQLException e) {
			return -1;    /*查询失败*/
		}finally {
			JDBCUtil.close(ps, conn);
		}
		return i;
	}
	
	public static int deleteFoodList(JSONObject json) {   //删除 food_list;
		Connection conn = JDBCUtil.getConn();
		PreparedStatement ps = null;
		String id = null; int i=0;
		try{
			id  = json.getString("id");
			String sql = "delete from food_list where id ='" + id + "'";
			ps = conn.prepareStatement(sql);
			i = ps.executeUpdate();
		}catch (SQLException e) {
			return -1;			/*查询失败*/
		}finally {
			JDBCUtil.close(ps, conn);
		}
		return i;
	}
	
	public static int deleteOrderList(JSONObject json) {   //删除 order_list
		Connection conn = JDBCUtil.getConn();
		PreparedStatement ps = null;
		String id = null; int i=0;
		try{
			id  = json.getString("id");
			String sql = "delete from order_list where id ='" + id + "'";
			ps = (PreparedStatement)conn.prepareStatement(sql);
			i = ps.executeUpdate();
		}catch (SQLException e) {
			return -1;
		}finally {
			JDBCUtil.close(ps, conn);
		}
		return i;
	}
	
//	public static void main(String[] args) {
//		JSONObject jb = new JSONObject();
//		jb.put("admin_id", "1");
//		int i = DeleteData.deleteAdminList(jb);
//		System.out.println(i);
//	}
}