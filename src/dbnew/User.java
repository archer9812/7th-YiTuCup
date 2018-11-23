package dbnew;

import org.json.JSONObject;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class User {
    public static boolean insert(String username, String password, String email, String telephone, BigDecimal balance, int discount) {
        try{
            Connection conn = MysqlConnect.getConn();
            PreparedStatement ps = null;
            /*sql插入语句*/
            String sql = "insert into users (username, password, email, telephone, balance, discount) values (?, ?, ?, ?, ?, ?)";
            ps = conn.prepareStatement(sql);
            ps.setObject(1, username);
            ps.setObject(2, password);
            ps.setObject(3, email);
            ps.setObject(4, telephone);
            ps.setObject(5, balance);
            ps.setObject(6, discount);
            ps.execute();
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
        return true;
    }

    public static boolean delete(String id) {
        try{

        } catch (Exception e) {
            System.out.println(e);
            return false;
        }

        return true;
    }

    public static boolean checklogin(String username, String password){
        Connection conn = MysqlConnect.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        //sql
        String sql = "select * from users where username='"+username+"'";
        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery(sql);

            rs.next();
            String dbpass = rs.getString("password");
            if (dbpass.equals(password))
                return true;
            else return false;
        } catch (SQLException e) {
//			e.printStackTrace();
            return false;
        }finally {
            MysqlConnect.close(rs,ps,conn);
        }
    }


}
