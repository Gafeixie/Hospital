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

 
import java.sql.SQLException;
 

//与数据库有关的操作的接口
 
public interface UserDao {
    //注册用户
    public void add(User user) throws ClassNotFoundException, SQLException;
    //用户登录
    public User findByUser(String Uname) throws SQLException, ClassNotFoundException;
}
