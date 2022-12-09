package com.ytb.project_xinxin.entity;

import java.util.Objects;

/**
 * @author 杨天宝
 * @version 1.0
 */
public class Idenitfity {
    private String user;
    private String email;
    private String pwd;

    private int id;
    public Idenitfity(){

    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Idenitfity that = (Idenitfity) o;
        return id == that.id && user.equals(that.user) && email.equals(that.email) && pwd.equals(that.pwd);
    }

    @Override
    public int hashCode() {
        return Objects.hash(user, email, pwd, id);
    }

    @Override
    public String toString() {
        return "Idenitfity{" +
                "user='" + user + '\'' +
                ", email='" + email + '\'' +
                ", pwd='" + pwd + '\'' +
                ", id=" + id +
                '}';
    }
}
