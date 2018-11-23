package dbnew;

import org.json.JSONObject;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Admin {
    public static boolean insert(String username, String password, String email) {
        try{
            Connection conn = MysqlConnect.getConn();
            PreparedStatement ps = null;
            /*sql插入语句*/
            String sql = "insert into admin (username, password, email) values (?, ?, ?)";
            ps = conn.prepareStatement(sql);
            ps.setObject(1, username);
            ps.setObject(2, password);
            ps.setObject(3, email);
            ps.execute();
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
        return true;
    }

    public static boolean delete(String id) {  //删除 admin_list;
        Connection conn = MysqlConnect.getConn();
        PreparedStatement ps = null;
        try{
            String sql = "delete from admin_list where admin_id ='" + id + "'";
            ps = conn.prepareStatement(sql);
            ps.executeUpdate();
        }catch (SQLException e) {
            return false;    /*查询失败*/
        }finally {
            MysqlConnect.close(ps, conn);
        }
        return true;
    }
}
