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
public class User {
    private String name;
    private String phone;
    private String sex;
    private String age;
    private String keshi;
    public User(){
        this.name =" ";
        this.keshi= " ";
        this.age =" ";
        this.phone=" ";
        this.sex ="  ";
                
    }

    User(String name, String phone, String sex, String age, String keshi) {
          this.age=age;
          this.keshi= keshi;
this.name = name;
this.sex=sex;
this.phone= phone;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getKeshi() {
        return keshi;
    }

    public void setKeshi(String keshi) {
        this.keshi = keshi;
    }
}
