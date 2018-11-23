package db;
import java.sql.*;
public class JDBCUtil {
	//开数据库
	public static Connection getConn(){
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/foods","root","aq1231998");
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	//关数据库
	public static void close(ResultSet rs, Statement ps, Connection conn) {
		try {
			if(rs != null)
				rs.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		try {
			if(ps != null)
				ps.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		try {
			if(conn != null)
				conn.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	//Overload
	public static void close(Statement ps, Connection conn) {
		try {
			if(ps != null)
				ps.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		try {
			if(conn != null)
				conn.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	//Overload
	public static void close(Connection conn) {
		try {
			if(conn != null)
				conn.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
}
//public static void main(String[]args) {
//new Test().print();
//new Test3().print();
//
//try {
//	Class.forName("com.mysql.cj.jdbc.Driver");
//	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","don19990715321"); 
//	
//	String sql_insert = "select * from usr_id where bld_id = ?";
//	//String sql_delete = "delete from usr_id where ?=?";
//	PreparedStatement ps = conn.prepareStatement(sql_insert);
//	ps.setObject(1, 31);
////	ps.setObject(1, "tel_num");
////	ps.setObject(2, "113");
////	ps.setObject(3, "2");
//	ResultSet set = ps.executeQuery();
//	while(set.next()) {
//		System.out.println(set.getObject(1)+"------"+set.getObject(2)+"-----"+set.getObject(3));
//	}
//	
//	ps.execute();		
//} catch (ClassNotFoundException e) {			
//	e.printStackTrace();
//} catch (SQLException e) {
//	// TODO Auto-generated catch block
//	e.printStackTrace();
//}
//
