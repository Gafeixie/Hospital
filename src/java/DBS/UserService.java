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

 
public interface UserService {
    public User findByUser(String userName);
    public void add(User user);
}