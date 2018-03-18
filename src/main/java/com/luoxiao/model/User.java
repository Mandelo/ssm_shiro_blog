package com.luoxiao.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class User {

    private Integer id;

    private String username;

    private String password;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birth;

    private String gender;

    public Date getRegTime() {
        return regTime;
    }

    public void setRegTime(Date regTime) {
        this.regTime = regTime;
    }

    @DateTimeFormat(pattern = "yyyy-MM-dd HH-mm-ss")
    private Date regTime;

    private String email;

    //状态码 0:禁用,1:正常
    private String status;

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", birth=" + birth +
                ", gender='" + gender + '\'' +
                ", regTime=" + regTime +
                ", email='" + email + '\'' +
                ", status='" + status + '\'' +
                '}';
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
