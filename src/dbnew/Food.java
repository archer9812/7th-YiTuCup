package dbnew;

import org.json.JSONObject;

import java.math.BigDecimal;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Food {
    public static List<PreFood> select(){
        List<PreFood> list = new ArrayList<PreFood>();
        Connection conn = MysqlConnect.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;

        //sql
        String sql = "select * from foods";
        try {

            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery(sql);
            while(rs.next()){
                // 实例化Product
                PreFood p = new PreFood();
                // 对id属性赋值
                p.setId(rs.getInt("id"));
                // 对name属性赋值
                p.setName(rs.getString("name"));
                p.setDetail(rs.getString("detail"));
                // 对num属性赋值
                p.setCount(rs.getInt("count"));
                // 对price属性赋值
                p.setPrice(rs.getBigDecimal("price"));
                // 对unit属性赋值
                p.setState(rs.getBoolean("state"));
                // 将Product添加到List集合中
                p.setDatetime(rs.getString("createtime"));

                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e + ".foods.select");
        }finally {
            MysqlConnect.close(rs,ps,conn);
        }
        return list;
    }

    public static boolean isEnough(String id, int count) {
        Connection conn = MysqlConnect.getConn();
        JSONObject ans = new JSONObject();
        PreparedStatement ps = null;
        ResultSet rs = null;
        //sql
        String sql = "select count from foods where id= '" + id + "'";

        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery(sql);

            rs.next();
            int have = rs.getInt("count");
            if (have <= count) return true;
            else return false;

        } catch (SQLException e) {
            System.out.println(e + "Food.enough");
            return false;
        }finally {
            MysqlConnect.close(rs,ps,conn);
        }
    }

    public static boolean sale(String id, int count) {
        Connection conn = MysqlConnect.getConn();
        PreparedStatement ps = null;
        //sql
        String sql = "update foods set count = ? where id= ?";
        try {
            ps = conn.prepareStatement(sql);
            ps.setObject(1, count);
            ps.setObject(2, id);
            ps.executeUpdate();
        }catch(SQLException e) {
            System.out.println(e + "Food.sale");
            return false;
        }finally {
            MysqlConnect.close(ps, conn);
        }
        return true;
    }


}
