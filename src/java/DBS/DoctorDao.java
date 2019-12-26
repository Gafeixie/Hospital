package DBS;


import java.sql.SQLException;
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
public interface DoctorDao {
    //注册用户
    public   List<Doctor>lists() throws ClassNotFoundException, SQLException;
    //用户登录
    public void appoint(String name) throws SQLException, ClassNotFoundException;
}
