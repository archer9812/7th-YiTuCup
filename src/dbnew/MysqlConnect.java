package dbnew;

import java.sql.*;

public class MysqlConnect {
    public static Connection getConn(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/foods","root","aq1231998");
        }catch(Exception e){
            System.out.println("error connect to sql");
            return null;
        }
    }

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
