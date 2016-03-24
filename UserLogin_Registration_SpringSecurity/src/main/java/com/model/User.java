package com.model;

import javax.annotation.Generated;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.math.BigInteger;

/**
 * Created by sharmila on 1/20/2016.
 */
@Entity
public class User {
    @Id
    @GeneratedValue
    private Integer Userid;
    private String Username;
    private String Password;
    private String Email;
    private BigInteger Phone;
    private String Address;
    private boolean enabled;

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = true;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String username) {
        Username = username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

   public Integer getUserid() {
       return Userid;
   }

   public void setUserid(Integer userid) {
        Userid = userid;
    }

    public BigInteger getPhone() {
        return Phone;
    }

    public void setPhone(BigInteger phone) {
        Phone = phone;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }


}
