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
 

 
public class UserServiceImpl implements UserDao {
     private UserDao dao ;
     
     public UserServiceImpl(UserDao dao) {
        super();
        this.dao = dao;
    }
    //增加用户的service
     @Override
    public void add(User user) throws ClassNotFoundException, SQLException {
        // TODO Auto-generated method stub
        dao.add(user);
    }
     public UserDao getDao() {
        return dao;
    }
    public void setDao(UserDao dao) {
        this.dao = dao;
    }
    //查找用户的额service
    public User findByUser(String userName) throws SQLException, ClassNotFoundException {
        // TODO Auto-generated method stub
        return dao.findByUser(userName);
    }

}
