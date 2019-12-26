package DBS;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Lenovo
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
 
public class DBUtils {
    //获取链接
    public static Connection getConn() throws ClassNotFoundException{
       Class.forName("com.mysql.jdbc.Driver");
       Connection conn = null;
    try {
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","abc123");
    } catch (SQLException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
    }
       return conn;
    }
    //关闭数据库
    public static void CloseConn(Connection conn){
        if(conn!=null){
            try {
                conn.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }

}
