package DBS;



import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import  java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Lenovo
 */
public class DoctorDaoImpl implements DoctorDao {
    //用户增加
   
    public  List<Doctor> lists() throws ClassNotFoundException, SQLException {
        // TODO Auto-generated method stub
        Connection conn=DBUtils.getConn();
        String sql="select * from doctor";
        
       Statement st = conn.createStatement();
           
        ResultSet rs=st.executeQuery(sql);
     
      List<Doctor> ds = new ArrayList<>();
        
        int i =0;
        while(rs.next()){
         Doctor d = new Doctor();
            String name=rs.getString(2);
            String work =rs.getString(3);
            String free=rs.getString(4);
            String bname=rs.getString(5);
            if(true){
            d.setName(name);
            d.setFree(free);
            d.setWork(work);
            d.setBname(bname);
           ds.add(d);
            }
        }
        return ds;
    
    
    }
    
    public void appoint(String name) throws SQLException, ClassNotFoundException {
        // TODO Auto-generated method stub
        Connection conn=DBUtils.getConn();
     Date date = new Date();
     String n = date.toString();
    

            String sql = "insert into  appoint(name,date) values(?,?)";
             PreparedStatement stmt = (PreparedStatement) conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, n);
            stmt.executeUpdate();// 返回值代表收到影响的行数
            System.out.println("插入成功");
    }

       
}
