package DBS;


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
public interface DoctorService {

    /**
     *
     * @param userName
     * @return
     */
    public   List<Doctor> lists();
    public void appoint(String name);
}
