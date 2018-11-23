package dbnew;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class Order {
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

    public static boolean delete(String id) {
        try{
            Connection conn = MysqlConnect.getConn();
            PreparedStatement ps = null;
            /*sql插入语句*/
            String sql = "delete from orders where id =?";
            ps.setObject(1, id);
            ps = conn.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e + ".Order.delete");
            return false;
        }
        return true;
    }
}
