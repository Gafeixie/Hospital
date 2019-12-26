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
import com.mysql.jdbc.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
 



 
public class UserDaoImpl implements UserDao {
    //用户增加
  
    public void add(User user) throws ClassNotFoundException, SQLException {
        // TODO Auto-generated method stub
        Connection conn=DBUtils.getConn();
        Statement st=conn.createStatement();
        String sql="insert into test (name,phone,sex,age,keshi) values('"+user.getName()+"','"+user.getPhone()+"','"+user.getSex()+"','"+user.getAge()+"','"+user.getKeshi()+"')";
        st.executeUpdate(sql);
        DBUtils.CloseConn(conn);
    }
    @Override
    public User findByUser(String Uname) throws SQLException, ClassNotFoundException {
        // TODO Auto-generated method stub
        Connection conn=DBUtils.getConn();
        String sql="select * from test where name=?";
        PreparedStatement ps=(PreparedStatement) conn.prepareStatement(sql);
        ps.setString(1, Uname);
        ResultSet rs=ps.executeQuery();
        User  u=new User();;
         String name=null;
            String phone=null;
            String sex=null;
            String age=null;
            String keshi=null;
            u.setAge(age);
            u.setKeshi(keshi);
            u.setName(name);
            u.setPhone(phone);
            u.setSex(sex);
        while(rs.next()){
         
             name=rs.getString(2);
             phone=rs.getString(3);
             sex=rs.getString(4);
            age=rs.getString(5);
           keshi=rs.getString(6);
               
               u.setAge(age);
               u.setName(name);
               u.setKeshi(keshi);
               u.setPhone(phone);
               u.setSex(sex);
        }
        return u;
    }

}